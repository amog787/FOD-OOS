.class public Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "CertificateTransparencyLogInstallReceiver.java"


# static fields
.field private static final LOGDIR_PREFIX:Ljava/lang/String; = "logs-"

.field private static final TAG:Ljava/lang/String; = "CTLogInstallReceiver"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 50
    const-string v0, "/data/misc/keychain/trusted_ct_logs/"

    const-string v1, "ct_logs"

    const-string v2, "metadata/"

    const-string v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private deleteOldLogDirectories()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    const-string v2, "current"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 178
    .local v0, "currentTarget":Ljava/io/File;
    new-instance v1, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;-><init>(Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;Ljava/io/File;)V

    .line 184
    .local v1, "filter":Ljava/io/FileFilter;
    iget-object v2, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 185
    .local v5, "f":Ljava/io/File;
    invoke-static {v5}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 184
    .end local v5    # "f":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    :cond_1
    return-void
.end method

.method private getLogFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "base64PublicKey"    # Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 160
    .local v1, "keyBytes":[B
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 161
    .local v2, "id":[B
    invoke-static {v2, v0}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 162
    .end local v2    # "id":[B
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private installLog(Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "logObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    const-string v0, "description"

    const-string v1, "url"

    const-string v2, "key"

    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->getLogFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "logFilename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .local v5, "out":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v1, v2}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v0, v1}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 144
    .end local v5    # "out":Ljava/io/OutputStreamWriter;
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    .end local v3    # "logFilename":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    nop

    .line 151
    return-void

    .line 145
    .restart local v3    # "logFilename":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set permissions on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "logObject":Lorg/json/JSONObject;
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    .restart local v5    # "out":Ljava/io/OutputStreamWriter;
    .restart local p0    # "this":Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "logObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "logObject":Lorg/json/JSONObject;
    :goto_0
    throw v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 147
    .end local v3    # "logFilename":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "out":Ljava/io/OutputStreamWriter;
    .restart local p0    # "this":Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "logObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse log"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStreamWriter;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 171
    return-void
.end method


# virtual methods
.method protected install(Ljava/io/InputStream;I)V
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 63
    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Unable to make directory "

    if-eqz v0, :cond_6

    .line 66
    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    const-string v5, "current"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .local v0, "currentSymlink":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "logs-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .local v4, "newVersion":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateVersion:Ljava/io/File;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    int-to-long v5, p2

    .line 80
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 79
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 81
    invoke-direct {p0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->deleteOldLogDirectories()V

    .line 82
    return-void

    .line 84
    :cond_0
    invoke-static {v4}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 89
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 90
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 93
    invoke-virtual {v4, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_3

    .line 100
    :try_start_1
    invoke-static {p1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 101
    .local v1, "content":[B
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "logs"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 103
    .local v3, "logs":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 104
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 105
    .local v6, "log":Lorg/json/JSONObject;
    invoke-direct {p0, v4, v6}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->installLog(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 103
    .end local v6    # "log":Lorg/json/JSONObject;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "content":[B
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "logs":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_2
    nop

    .line 113
    :try_start_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    const-string v3, "new_symlink"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    .local v1, "tempSymlink":Ljava/io/File;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 118
    nop

    .line 121
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 125
    nop

    .line 126
    .end local v1    # "tempSymlink":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CT log directory updated to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTLogInstallReceiver"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateVersion:Ljava/io/File;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    int-to-long v5, p2

    .line 129
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 128
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 131
    invoke-direct {p0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->deleteOldLogDirectories()V

    .line 132
    return-void

    .line 116
    .restart local v1    # "tempSymlink":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Landroid/system/ErrnoException;
    :try_start_5
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Failed to create symlink"

    invoke-direct {v3, v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "currentSymlink":Ljava/io/File;
    .end local v4    # "newVersion":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "version":I
    throw v3

    .line 107
    .end local v1    # "tempSymlink":Ljava/io/File;
    .end local v2    # "e":Landroid/system/ErrnoException;
    .restart local v0    # "currentSymlink":Ljava/io/File;
    .restart local v4    # "newVersion":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "version":I
    :catch_1
    move-exception v1

    .line 108
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to parse logs"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "currentSymlink":Ljava/io/File;
    .end local v4    # "newVersion":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "version":I
    throw v2

    .line 94
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "currentSymlink":Ljava/io/File;
    .restart local v4    # "newVersion":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "version":I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " readable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "currentSymlink":Ljava/io/File;
    .end local v4    # "newVersion":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "version":I
    throw v1

    .line 91
    .restart local v0    # "currentSymlink":Ljava/io/File;
    .restart local v4    # "newVersion":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "version":I
    :cond_4
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "currentSymlink":Ljava/io/File;
    .end local v4    # "newVersion":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
    .end local p1    # "inputStream":Ljava/io/InputStream;
    .end local p2    # "version":I
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 122
    .restart local v0    # "currentSymlink":Ljava/io/File;
    .restart local v4    # "newVersion":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "version":I
    :catch_2
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v4}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 124
    throw v1

    .line 67
    .end local v0    # "currentSymlink":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "newVersion":Ljava/io/File;
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set permissions on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    .line 68
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
