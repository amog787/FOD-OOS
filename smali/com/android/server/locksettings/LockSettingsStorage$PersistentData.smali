.class public Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistentData"
.end annotation


# static fields
.field public static final NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SP:I = 0x1

.field public static final TYPE_SP_WEAVER:I = 0x2

.field static final VERSION_1:B = 0x1t

.field static final VERSION_1_HEADER_SIZE:I = 0xa


# instance fields
.field final payload:[B

.field final qualityForUi:I

.field final type:I

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 677
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    const/4 v1, 0x0

    const/16 v2, -0x2710

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;-><init>(III[B)V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-void
.end method

.method private constructor <init>(III[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "qualityForUi"    # I
    .param p4, "payload"    # [B

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 687
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 688
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    .line 689
    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    .line 690
    return-void
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .locals 10
    .param p0, "frpData"    # [B

    .line 693
    const-string v0, "LockSettingsStorage"

    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 697
    :cond_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 699
    .local v1, "is":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 700
    .local v2, "version":B
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 701
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 702
    .local v3, "type":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 703
    .local v4, "userId":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 704
    .local v5, "qualityForUi":I
    array-length v6, p0

    const/16 v7, 0xa

    sub-int/2addr v6, v7

    new-array v6, v6, [B

    .line 705
    .local v6, "payload":[B
    const/4 v8, 0x0

    array-length v9, v6

    invoke-static {p0, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    new-instance v7, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;-><init>(III[B)V

    return-object v7

    .line 708
    .end local v3    # "type":I
    .end local v4    # "userId":I
    .end local v5    # "qualityForUi":I
    .end local v6    # "payload":[B
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown PersistentData version code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 711
    .end local v2    # "version":B
    :catch_0
    move-exception v2

    .line 712
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Could not parse PersistentData"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object v0

    .line 694
    .end local v1    # "is":Ljava/io/DataInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object v0
.end method

.method public static toBytes(III[B)[B
    .locals 5
    .param p0, "persistentType"    # I
    .param p1, "userId"    # I
    .param p2, "qualityForUi"    # I
    .param p3, "payload"    # [B

    .line 719
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    .line 720
    if-nez p3, :cond_0

    move v0, v1

    :cond_0
    const-string v1, "TYPE_NONE must have empty payload"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 722
    const/4 v0, 0x0

    return-object v0

    .line 724
    :cond_1
    if-eqz p3, :cond_2

    array-length v2, p3

    if-lez v2, :cond_2

    move v0, v1

    :cond_2
    const-string v2, "empty payload must only be used with TYPE_NONE"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 727
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v2, p3

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 729
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 731
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 732
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 733
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 734
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 735
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    nop

    .line 739
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 736
    :catch_0
    move-exception v1

    .line 737
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "ByteArrayOutputStream cannot throw IOException"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
