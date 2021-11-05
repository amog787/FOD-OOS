.class final Lcom/android/server/timezone/CheckToken;
.super Ljava/lang/Object;
.source "CheckToken.java"


# instance fields
.field final mOptimisticLockId:I

.field final mPackageVersions:Lcom/android/server/timezone/PackageVersions;


# direct methods
.method constructor <init>(ILcom/android/server/timezone/PackageVersions;)V
    .locals 2
    .param p1, "optimisticLockId"    # I
    .param p2, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    .line 39
    if-eqz p2, :cond_0

    .line 42
    iput-object p2, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    .line 43
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "packageVersions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static fromByteArray([B)Lcom/android/server/timezone/CheckToken;
    .locals 9
    .param p0, "tokenBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 59
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 61
    .local v2, "versionId":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .line 62
    .local v3, "updateAppVersion":J
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    .line 63
    .local v5, "dataAppVersion":J
    new-instance v7, Lcom/android/server/timezone/CheckToken;

    new-instance v8, Lcom/android/server/timezone/PackageVersions;

    invoke-direct {v8, v3, v4, v5, v6}, Lcom/android/server/timezone/PackageVersions;-><init>(JJ)V

    invoke-direct {v7, v2, v8}, Lcom/android/server/timezone/CheckToken;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 63
    return-object v7

    .line 59
    .end local v2    # "versionId":I
    .end local v3    # "updateAppVersion":J
    .end local v5    # "dataAppVersion":J
    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
    if-ne p0, p1, :cond_0

    .line 70
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/timezone/CheckToken;

    .line 78
    .local v1, "checkToken":Lcom/android/server/timezone/CheckToken;
    iget v2, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    iget v3, v1, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    if-eq v2, v3, :cond_2

    .line 79
    return v0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget-object v2, v1, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v0, v2}, Lcom/android/server/timezone/PackageVersions;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 73
    .end local v1    # "checkToken":Lcom/android/server/timezone/CheckToken;
    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 86
    iget v0, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    .line 87
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v2}, Lcom/android/server/timezone/PackageVersions;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 88
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method toByteArray()[B
    .locals 4

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 47
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_1
    iget v2, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 49
    iget-object v2, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget-wide v2, v2, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 50
    iget-object v2, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget-wide v2, v2, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 53
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    nop

    .line 54
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 47
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/android/server/timezone/CheckToken;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 51
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/server/timezone/CheckToken;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to write into a ByteArrayOutputStream"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token{mOptimisticLockId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
