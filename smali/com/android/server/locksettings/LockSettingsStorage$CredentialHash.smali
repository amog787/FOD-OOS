.class public Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialHash"
.end annotation


# static fields
.field static final VERSION_GATEKEEPER:I = 0x1

.field static final VERSION_LEGACY:I


# instance fields
.field hash:[B

.field isBaseZeroPattern:Z

.field type:I

.field version:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "type"    # I
    .param p3, "version"    # I

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIIZ)V

    .line 109
    return-void
.end method

.method synthetic constructor <init>([BIILcom/android/server/locksettings/LockSettingsStorage$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/locksettings/LockSettingsStorage$1;

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-void
.end method

.method private constructor <init>([BIIZ)V
    .locals 2
    .param p1, "hash"    # [B
    .param p2, "type"    # I
    .param p3, "version"    # I
    .param p4, "isBaseZeroPattern"    # Z

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 114
    if-eqz p1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Empty hash for CredentialHash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    if-nez p1, :cond_2

    .line 122
    :goto_0
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 123
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    .line 124
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    .line 125
    iput-boolean p4, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    .line 126
    return-void

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "None type CredentialHash should not have hash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$300([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 1
    .param p0, "x0"    # [B

    .line 103
    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createBaseZeroPattern([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method static create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 2
    .param p0, "hash"    # [B
    .param p1, "type"    # I

    .line 134
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad type for CredentialHash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createBaseZeroPattern([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 2
    .param p0, "hash"    # [B

    .line 129
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIIZ)V

    return-object v0
.end method

.method static createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 4

    .line 141
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-object v0
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 6
    .param p0, "bytes"    # [B

    .line 173
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 174
    .local v0, "is":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 175
    .local v1, "version":I
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 176
    .local v2, "type":I
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 177
    .local v3, "hashSize":I
    const/4 v4, 0x0

    .line 178
    .local v4, "hash":[B
    if-lez v3, :cond_0

    .line 179
    new-array v5, v3, [B

    move-object v4, v5

    .line 180
    invoke-virtual {v0, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 182
    :cond_0
    new-instance v5, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    invoke-direct {v5, v4, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 183
    .end local v0    # "is":Ljava/io/DataInputStream;
    .end local v1    # "version":I
    .end local v2    # "type":I
    .end local v3    # "hashSize":I
    .end local v4    # "hash":[B
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public toBytes()[B
    .locals 3

    .line 151
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "base zero patterns are not serializable"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 154
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 155
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    .local v1, "dos":Ljava/io/DataOutputStream;
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 157
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 158
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v2, v2

    if-lez v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 160
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    .line 162
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 164
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 165
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 166
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
