.class public Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigUpdateInstallReceiver.java"


# static fields
.field private static final EXTRA_REQUIRED_HASH:Ljava/lang/String; = "REQUIRED_HASH"

.field private static final EXTRA_VERSION_NUMBER:Ljava/lang/String; = "VERSION"

.field private static final TAG:Ljava/lang/String; = "ConfigUpdateInstallReceiver"


# instance fields
.field protected final updateContent:Ljava/io/File;

.field protected final updateDir:Ljava/io/File;

.field protected final updateVersion:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "updateDir"    # Ljava/lang/String;
    .param p2, "updateContentPath"    # Ljava/lang/String;
    .param p3, "updateMetadataPath"    # Ljava/lang/String;
    .param p4, "updateVersionPath"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v0, "updateMetadataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1, "x1"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getVersionFromIntent(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .line 42
    invoke-direct {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentContent()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400([B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B

    .line 42
    invoke-static {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentHash([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)Ljava/io/BufferedInputStream;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getAltContent(Landroid/content/Context;Landroid/content/Intent;)Ljava/io/BufferedInputStream;

    move-result-object v0

    return-object v0
.end method

.method private getAltContent(Landroid/content/Context;Landroid/content/Intent;)Ljava/io/BufferedInputStream;
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-direct {p0, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getContentFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    .line 138
    .local v0, "content":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 140
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 140
    return-object v1

    .line 142
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 143
    throw v1
.end method

.method private getContentFromIntent(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 104
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 107
    return-object v0

    .line 105
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required content path, ignoring."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getCurrentContent()[B
    .locals 3

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ConfigUpdateInstallReceiver"

    const-string v2, "Failed to read current content, assuming first update!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getCurrentHash([B)Ljava/lang/String;
    .locals 3
    .param p0, "content"    # [B

    .line 156
    if-nez p0, :cond_0

    .line 157
    const-string v0, "0"

    return-object v0

    .line 160
    :cond_0
    :try_start_0
    const-string v0, "SHA512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 161
    .local v0, "dgst":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 162
    .local v1, "fingerprint":[B
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 163
    .end local v0    # "dgst":Ljava/security/MessageDigest;
    .end local v1    # "fingerprint":[B
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private getCurrentVersion()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "strVersion":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 130
    .end local v0    # "strVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ConfigUpdateInstallReceiver"

    const-string v2, "Couldn\'t find current metadata, assuming first update"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v1, 0x0

    return v1
.end method

.method private getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    .line 119
    const-string v0, "REQUIRED_HASH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "extraValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 121
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required previous hash, ignoring."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getVersionFromIntent(Landroid/content/Intent;)I
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 111
    const-string v0, "VERSION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "extraValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required version number, ignoring."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "current"    # Ljava/lang/String;
    .param p2, "required"    # Ljava/lang/String;

    .line 174
    const-string v0, "NONE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x1

    return v0

    .line 178
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected install(Ljava/io/InputStream;I)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    int-to-long v3, p2

    .line 216
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 215
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 217
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 63
    new-instance v0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;-><init>(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->start()V

    .line 100
    return-void
.end method

.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 220
    return-void
.end method

.method protected verifyVersion(II)Z
    .locals 1
    .param p1, "current"    # I
    .param p2, "alternative"    # I

    .line 169
    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 186
    .local v1, "tmp":Ljava/io/File;
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 187
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 189
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    const-string v3, "journal"

    const-string v4, ""

    invoke-static {v3, v4, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    move-object v1, v3

    .line 195
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 197
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 198
    invoke-static {p3, v0}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 200
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 202
    invoke-virtual {v1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 206
    .end local v2    # "parent":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 209
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 210
    nop

    .line 211
    return-void

    .line 203
    .restart local v2    # "parent":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to atomically rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v1    # "tmp":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .end local p1    # "dir":Ljava/io/File;
    .end local p2    # "file":Ljava/io/File;
    .end local p3    # "inputStream":Ljava/io/InputStream;
    throw v3

    .line 190
    .restart local v0    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "tmp":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .restart local p1    # "dir":Ljava/io/File;
    .restart local p2    # "file":Ljava/io/File;
    .restart local p3    # "inputStream":Ljava/io/InputStream;
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v1    # "tmp":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .end local p1    # "dir":Ljava/io/File;
    .end local p2    # "file":Ljava/io/File;
    .end local p3    # "inputStream":Ljava/io/InputStream;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    .end local v2    # "parent":Ljava/io/File;
    .restart local v0    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "tmp":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .restart local p1    # "dir":Ljava/io/File;
    .restart local p2    # "file":Ljava/io/File;
    .restart local p3    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 209
    :cond_3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 210
    throw v2
.end method
