.class public Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
.super Ljava/lang/Object;
.source "TestHarnessModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/testharness/TestHarnessModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistentData"
.end annotation


# static fields
.field static final VERSION_1:B = 0x1t

.field static final VERSION_2:B = 0x2t


# instance fields
.field final mAdbKeys:[B

.field final mAdbTempKeys:[B

.field final mVersion:I


# direct methods
.method constructor <init>(I[B[B)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "adbKeys"    # [B
    .param p3, "adbTempKeys"    # [B

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput p1, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mVersion:I

    .line 410
    iput-object p2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    .line 411
    iput-object p3, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    .line 412
    return-void
.end method

.method constructor <init>([B[B)V
    .locals 1
    .param p1, "adbKeys"    # [B
    .param p2, "adbTempKeys"    # [B

    .line 405
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>(I[B[B)V

    .line 406
    return-void
.end method

.method static fromBytes([B)Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
    .locals 7
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;
        }
    .end annotation

    .line 416
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 417
    .local v0, "is":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 418
    .local v1, "version":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 421
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 423
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 424
    .local v2, "adbKeysLength":I
    new-array v3, v2, [B

    .line 425
    .local v3, "adbKeys":[B
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 426
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 427
    .local v4, "adbTempKeysLength":I
    new-array v5, v4, [B

    .line 428
    .local v5, "adbTempKeys":[B
    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 429
    new-instance v6, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    invoke-direct {v6, v1, v3, v5}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>(I[B[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 430
    .end local v0    # "is":Ljava/io/DataInputStream;
    .end local v1    # "version":I
    .end local v2    # "adbKeysLength":I
    .end local v3    # "adbKeys":[B
    .end local v4    # "adbTempKeysLength":I
    .end local v5    # "adbTempKeys":[B
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;

    invoke-direct {v1, v0}, Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method toBytes()[B
    .locals 3

    .line 437
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 438
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 439
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 440
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 441
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 442
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 443
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 444
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 445
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 446
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
