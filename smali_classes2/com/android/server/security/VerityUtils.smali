.class public abstract Lcom/android/server/security/VerityUtils;
.super Ljava/lang/Object;
.source "VerityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;,
        Lcom/android/server/security/VerityUtils$SetupResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FSVERITY_SIGNATURE_FILE_EXTENSION:Ljava/lang/String; = ".fsv_sig"

.field private static final MAX_SIGNATURE_FILE_SIZE_BYTES:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "VerityUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .line 194
    invoke-static {p0}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native enableFsverityNative(Ljava/lang/String;[B)I
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->generateApkVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateApkVeritySetupData(Ljava/lang/String;)Lcom/android/server/security/VerityUtils$SetupResult;
    .locals 6
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "shm":Landroid/os/SharedMemory;
    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v1

    .line 113
    .local v1, "signedVerityHash":[B
    if-nez v1, :cond_1

    .line 117
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

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 117
    :cond_0
    return-object v2

    .line 120
    :cond_1
    nop

    .line 121
    :try_start_1
    invoke-static {p0, v1}, Lcom/android/server/security/VerityUtils;->generateFsVerityIntoSharedMemory(Ljava/lang/String;[B)Landroid/util/Pair;

    move-result-object v2

    .line 122
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/SharedMemory;Ljava/lang/Integer;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/SharedMemory;

    move-object v0, v3

    .line 123
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 124
    .local v3, "contentSize":I
    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 125
    .local v4, "rfd":Ljava/io/FileDescriptor;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 128
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

    .line 134
    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 128
    :cond_3
    return-object v5

    .line 126
    :cond_4
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

    .line 134
    if-eqz v0, :cond_5

    .line 135
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 126
    :cond_5
    return-object v5

    .line 134
    .end local v1    # "signedVerityHash":[B
    .end local v2    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/SharedMemory;Ljava/lang/Integer;>;"
    .end local v3    # "contentSize":I
    .end local v4    # "rfd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 129
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "VerityUtils"

    const-string v3, "Failed to set up apk verity: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    invoke-static {}, Lcom/android/server/security/VerityUtils$SetupResult;->failed()Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    if-eqz v0, :cond_6

    .line 135
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 132
    :cond_6
    return-object v2

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v0, :cond_7

    .line 135
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 137
    :cond_7
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

    .line 172
    new-instance v0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;-><init>(Lcom/android/server/security/VerityUtils$1;)V

    .line 173
    .local v0, "shmBufferFactory":Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;
    nop

    .line 174
    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureVerifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v1

    .line 177
    .local v1, "generatedRootHash":[B
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    invoke-virtual {v0}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->getBufferLimit()I

    move-result v2

    .line 183
    .local v2, "contentSize":I
    invoke-virtual {v0}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->releaseSharedMemory()Landroid/os/SharedMemory;

    move-result-object v3

    .line 184
    .local v3, "shm":Landroid/os/SharedMemory;
    if-eqz v3, :cond_1

    .line 187
    sget v4, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v3, v4}, Landroid/os/SharedMemory;->setProtect(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 188
    :cond_0
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Failed to set up shared memory correctly"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to generate verity tree into shared memory"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 178
    .end local v2    # "contentSize":I
    .end local v3    # "shm":Landroid/os/SharedMemory;
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verity hash mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
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

.method public static getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 64
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hasFsverity(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .line 84
    invoke-static {p0}, Lcom/android/server/security/VerityUtils;->statxForFsverityNative(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "retval":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check whether fs-verity is enabled, errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VerityUtils"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v1

    .line 90
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static isFsveritySignatureFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".fsv_sig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setUpFsverity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "signaturePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v1

    const-wide/16 v3, 0x2000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 73
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 75
    .local v0, "pkcs7Signature":[B
    invoke-static {p0, v0}, Lcom/android/server/security/VerityUtils;->enableFsverityNative(Ljava/lang/String;[B)I

    move-result v1

    .line 76
    .local v1, "errno":I
    if-nez v1, :cond_0

    .line 80
    return-void

    .line 77
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to enable fs-verity on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-static {v1}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    .end local v0    # "pkcs7Signature":[B
    .end local v1    # "errno":I
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature file is unexpectedly large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native statxForFsverityNative(Ljava/lang/String;)I
.end method
