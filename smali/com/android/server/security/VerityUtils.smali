.class public abstract Lcom/android/server/security/VerityUtils;
.super Ljava/lang/Object;
.source "VerityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/VerityUtils$TrackedBufferFactory;,
        Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;,
        Lcom/android/server/security/VerityUtils$SetupResult;
    }
.end annotation


# static fields
.field private static final COMMON_LINUX_PAGE_SIZE_IN_BYTES:I = 0x1000

.field private static final DEBUG:Z = false

.field public static final FSVERITY_SIGNATURE_FILE_EXTENSION:Ljava/lang/String; = ".fsv_sig"

.field private static final MAX_SIGNATURE_FILE_SIZE_BYTES:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "VerityUtils"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 103
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .line 313
    invoke-static {p0}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native constructFsverityDescriptorNative(J)[B
.end method

.method private static native constructFsverityExtensionNative(SI)[B
.end method

.method private static native constructFsverityFooterNative(I)[B
.end method

.method private static native constructFsveritySignedDataNative([B)[B
.end method

.method private static native enableFsverityNative(Ljava/lang/String;)I
.end method

.method public static generateApkVerityRootHash(Ljava/lang/String;)[B
    .locals 1
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->generateApkVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateApkVeritySetupData(Ljava/lang/String;)Lcom/android/server/security/VerityUtils$SetupResult;
    .locals 6
    .param p0, "apkPath"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "shm":Landroid/os/SharedMemory;
    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v1

    .line 147
    .local v1, "signedVerityHash":[B
    if-nez v1, :cond_1

    .line 151
    invoke-static {}, Lcom/android/server/security/VerityUtils$SetupResult;->skipped()Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 151
    :cond_0
    return-object v2

    .line 154
    :cond_1
    nop

    .line 155
    :try_start_1
    invoke-static {p0, v1}, Lcom/android/server/security/VerityUtils;->generateFsVerityIntoSharedMemory(Ljava/lang/String;[B)Landroid/util/Pair;

    move-result-object v2

    .line 156
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/SharedMemory;Ljava/lang/Integer;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/SharedMemory;

    move-object v0, v3

    .line 157
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 158
    .local v3, "contentSize":I
    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 159
    .local v4, "rfd":Ljava/io/FileDescriptor;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 162
    :cond_2
    invoke-static {v4}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/server/security/VerityUtils$SetupResult;->ok(Ljava/io/FileDescriptor;I)Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    nop

    .line 169
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 162
    return-object v5

    .line 160
    :cond_3
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/android/server/security/VerityUtils$SetupResult;->failed()Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/DigestException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    nop

    .line 169
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 160
    return-object v5

    .line 168
    .end local v1    # "signedVerityHash":[B
    .end local v2    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/SharedMemory;Ljava/lang/Integer;>;"
    .end local v3    # "contentSize":I
    .end local v4    # "rfd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 163
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "VerityUtils"

    const-string v3, "Failed to set up apk verity: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    invoke-static {}, Lcom/android/server/security/VerityUtils$SetupResult;->failed()Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    if-eqz v0, :cond_4

    .line 169
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 166
    :cond_4
    return-object v2

    .line 168
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v0, :cond_5

    .line 169
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    :cond_5
    throw v1
.end method

.method private static generateFsVerityIntoSharedMemory(Ljava/lang/String;[B)Landroid/util/Pair;
    .locals 6
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "expectedRootHash"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/util/Pair<",
            "Landroid/os/SharedMemory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 291
    new-instance v0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;-><init>(Lcom/android/server/security/VerityUtils$1;)V

    .line 292
    .local v0, "shmBufferFactory":Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;
    nop

    .line 293
    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureVerifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v1

    .line 296
    .local v1, "generatedRootHash":[B
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-virtual {v0}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->getBufferLimit()I

    move-result v2

    .line 302
    .local v2, "contentSize":I
    invoke-virtual {v0}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->releaseSharedMemory()Landroid/os/SharedMemory;

    move-result-object v3

    .line 303
    .local v3, "shm":Landroid/os/SharedMemory;
    if-eqz v3, :cond_1

    .line 306
    sget v4, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v3, v4}, Landroid/os/SharedMemory;->setProtect(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 307
    :cond_0
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Failed to set up shared memory correctly"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 304
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to generate verity tree into shared memory"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 297
    .end local v2    # "contentSize":I
    .end local v3    # "shm":Landroid/os/SharedMemory;
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verity hash mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {v1}, Lcom/android/server/security/VerityUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/security/VerityUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static generateFsverityDescriptorAndMeasurement(Ljava/io/RandomAccessFile;[BLjava/lang/String;Ljava/nio/ByteBuffer;)[B
    .locals 12
    .param p0, "file"    # Ljava/io/RandomAccessFile;
    .param p1, "rootHash"    # [B
    .param p2, "pkcs7SignaturePath"    # Ljava/lang/String;
    .param p3, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x1

    .line 230
    .local v0, "kRootHashExtensionId":S
    const/4 v1, 0x3

    .line 231
    .local v1, "kPkcs7SignatureExtensionId":S
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 235
    .local v2, "origPosition":I
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 238
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/security/VerityUtils;->constructFsverityDescriptorNative(J)[B

    move-result-object v4

    .line 239
    .local v4, "desc":[B
    invoke-virtual {p3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 240
    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 243
    array-length v5, p1

    .line 244
    const/4 v6, 0x1

    invoke-static {v6, v5}, Lcom/android/server/security/VerityUtils;->constructFsverityExtensionNative(SI)[B

    move-result-object v5

    .line 245
    .local v5, "authExt":[B
    invoke-virtual {p3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 246
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 247
    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 248
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 251
    const/16 v7, 0x8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 252
    .local v7, "header":Ljava/nio/ByteBuffer;
    invoke-virtual {p3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    invoke-virtual {p3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 257
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p2, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    .line 258
    .local v6, "path":Ljava/nio/file/Path;
    invoke-static {v6}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v8

    const-wide/16 v10, 0x2000

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    .line 262
    invoke-static {v6}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v8

    .line 263
    .local v8, "pkcs7Signature":[B
    const/4 v9, 0x3

    array-length v10, v8

    invoke-static {v9, v10}, Lcom/android/server/security/VerityUtils;->constructFsverityExtensionNative(SI)[B

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 265
    invoke-virtual {p3, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 268
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-static {v9}, Lcom/android/server/security/VerityUtils;->constructFsverityFooterNative(I)[B

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 270
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    return-object v9

    .line 259
    .end local v8    # "pkcs7Signature":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature size is unexpectedly large: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private static generateFsverityMetadata(Ljava/lang/String;Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "signaturePath"    # Ljava/lang/String;
    .param p2, "trackedBufferFactory"    # Landroid/util/apk/ByteBufferFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .local v0, "file":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {v0, p2}, Landroid/util/apk/VerityBuilder;->generateFsVerityTree(Ljava/io/RandomAccessFile;Landroid/util/apk/ByteBufferFactory;)Landroid/util/apk/VerityBuilder$VerityResult;

    move-result-object v1

    .line 208
    .local v1, "result":Landroid/util/apk/VerityBuilder$VerityResult;
    iget-object v2, v1, Landroid/util/apk/VerityBuilder$VerityResult;->verityData:Ljava/nio/ByteBuffer;

    .line 209
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    iget v3, v1, Landroid/util/apk/VerityBuilder$VerityResult;->merkleTreeSize:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    iget-object v3, v1, Landroid/util/apk/VerityBuilder$VerityResult;->rootHash:[B

    invoke-static {v0, v3, p1, v2}, Lcom/android/server/security/VerityUtils;->generateFsverityDescriptorAndMeasurement(Ljava/io/RandomAccessFile;[BLjava/lang/String;Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 213
    .local v3, "measurement":[B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 214
    invoke-static {v3}, Lcom/android/server/security/VerityUtils;->constructFsveritySignedDataNative([B)[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    const/4 v5, 0x0

    invoke-static {v5, v0}, Lcom/android/server/security/VerityUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 214
    return-object v4

    .line 204
    .end local v1    # "result":Landroid/util/apk/VerityBuilder$VerityResult;
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "measurement":[B
    :catchall_0
    move-exception v1

    .end local v0    # "file":Ljava/io/RandomAccessFile;
    .end local p0    # "filePath":Ljava/lang/String;
    .end local p1    # "signaturePath":Ljava/lang/String;
    .end local p2    # "trackedBufferFactory":Landroid/util/apk/ByteBufferFactory;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    .restart local v0    # "file":Ljava/io/RandomAccessFile;
    .restart local p0    # "filePath":Ljava/lang/String;
    .restart local p1    # "signaturePath":Ljava/lang/String;
    .restart local p2    # "trackedBufferFactory":Landroid/util/apk/ByteBufferFactory;
    :catchall_1
    move-exception v2

    invoke-static {v1, v0}, Lcom/android/server/security/VerityUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fsv_sig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVerityRootHash(Ljava/lang/String;)[B
    .locals 1
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 187
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hasFsverity(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 124
    invoke-static {p0}, Lcom/android/server/security/VerityUtils;->measureFsverityNative(Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, "errno":I
    if-eqz v0, :cond_1

    .line 126
    sget v1, Landroid/system/OsConstants;->ENODATA:I

    if-eq v0, v1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to measure fs-verity, errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerityUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 131
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static isFsveritySignatureFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 69
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".fsv_sig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native measureFsverityNative(Ljava/lang/String;)I
.end method

.method private static roundUpToNextMultiple(JJ)J
    .locals 2
    .param p0, "number"    # J
    .param p2, "divisor"    # J

    .line 425
    const-wide v0, 0x7fffffffffffffffL

    sub-long/2addr v0, p2

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 428
    const-wide/16 v0, 0x1

    sub-long v0, p2, v0

    add-long/2addr v0, p0

    div-long/2addr v0, p2

    mul-long/2addr v0, p2

    return-wide v0

    .line 426
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "arithmetic overflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setUpFsverity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "signaturePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 80
    new-instance v0, Lsun/security/pkcs/PKCS7;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    .line 81
    .local v0, "pkcs7":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/pkcs/ContentInfo;->getContentBytes()[B

    move-result-object v1

    .line 88
    .local v1, "expectedMeasurement":[B
    new-instance v2, Lcom/android/server/security/VerityUtils$TrackedBufferFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/security/VerityUtils$TrackedBufferFactory;-><init>(Lcom/android/server/security/VerityUtils$1;)V

    .line 89
    .local v2, "bufferFactory":Lcom/android/server/security/VerityUtils$TrackedBufferFactory;
    invoke-static {p0, p1, v2}, Lcom/android/server/security/VerityUtils;->generateFsverityMetadata(Ljava/lang/String;Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v4

    .line 91
    .local v4, "actualMeasurement":[B
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rw"

    invoke-direct {v5, p0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 93
    .local v6, "ch":Ljava/nio/channels/FileChannel;
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    const-wide/16 v9, 0x1000

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/security/VerityUtils;->roundUpToNextMultiple(JJ)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 94
    invoke-virtual {v2}, Lcom/android/server/security/VerityUtils$TrackedBufferFactory;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 96
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    int-to-long v8, v8

    .line 97
    .local v8, "offset":J
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    int-to-long v10, v10

    .line 98
    .local v10, "size":J
    :goto_0
    cmp-long v12, v8, v10

    if-gez v12, :cond_0

    .line 99
    invoke-virtual {v6, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v12, v12

    .line 100
    .local v12, "s":J
    add-long/2addr v8, v12

    .line 101
    sub-long/2addr v10, v12

    .line 102
    .end local v12    # "s":J
    goto :goto_0

    .line 103
    .end local v6    # "ch":Ljava/nio/channels/FileChannel;
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "offset":J
    .end local v10    # "size":J
    :cond_0
    invoke-static {v3, v5}, Lcom/android/server/security/VerityUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 105
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    invoke-static {p0}, Lcom/android/server/security/VerityUtils;->enableFsverityNative(Ljava/lang/String;)I

    move-result v3

    .line 113
    .local v3, "errno":I
    if-nez v3, :cond_1

    .line 117
    return-void

    .line 114
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to enable fs-verity on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {v3}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 106
    .end local v3    # "errno":I
    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fs-verity measurement mismatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {v4}, Lcom/android/server/security/VerityUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " != "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {v1}, Lcom/android/server/security/VerityUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v3

    .end local v0    # "pkcs7":Lsun/security/pkcs/PKCS7;
    .end local v1    # "expectedMeasurement":[B
    .end local v2    # "bufferFactory":Lcom/android/server/security/VerityUtils$TrackedBufferFactory;
    .end local v4    # "actualMeasurement":[B
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "filePath":Ljava/lang/String;
    .end local p1    # "signaturePath":Ljava/lang/String;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .restart local v0    # "pkcs7":Lsun/security/pkcs/PKCS7;
    .restart local v1    # "expectedMeasurement":[B
    .restart local v2    # "bufferFactory":Lcom/android/server/security/VerityUtils$TrackedBufferFactory;
    .restart local v4    # "actualMeasurement":[B
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "filePath":Ljava/lang/String;
    .restart local p1    # "signaturePath":Ljava/lang/String;
    :catchall_1
    move-exception v6

    invoke-static {v3, v5}, Lcom/android/server/security/VerityUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
.end method
