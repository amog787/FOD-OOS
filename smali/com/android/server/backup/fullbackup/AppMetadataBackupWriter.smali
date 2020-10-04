.class public Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;
.super Ljava/lang/Object;
.source "AppMetadataBackupWriter.java"


# instance fields
.field private final mOutput:Landroid/app/backup/FullBackupDataOutput;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "output"    # Landroid/app/backup/FullBackupDataOutput;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 50
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 51
    return-void
.end method

.method private getManifestBytes(Landroid/content/pm/PackageInfo;Z)[B
    .locals 10
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "withApk"    # Z

    .line 127
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 128
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 129
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Landroid/util/StringBuilderPrinter;

    invoke-direct {v2, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 131
    .local v2, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2, v0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 134
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 136
    iget-object v3, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "installerName":Ljava/lang/String;
    if-eqz v3, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v2, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 139
    const-string v4, "0"

    if-eqz p2, :cond_1

    const-string v5, "1"

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    invoke-virtual {v2, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 142
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 143
    .local v5, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v5, :cond_2

    .line 144
    invoke-virtual {v2, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 148
    :cond_2
    invoke-virtual {v5}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    .line 149
    .local v4, "signatures":[Landroid/content/pm/Signature;
    array-length v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 150
    array-length v6, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v4, v7

    .line 151
    .local v8, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 150
    .end local v8    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 154
    .end local v4    # "signatures":[Landroid/content/pm/Signature;
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4
.end method

.method private getMetadataBytes(Ljava/lang/String;)[B
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Landroid/util/StringBuilderPrinter;

    invoke-direct {v1, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 211
    .local v1, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1, p1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2
.end method

.method private writeWidgetData(Ljava/io/DataOutputStream;[B)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    const v0, 0x1ffed01

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 230
    array-length v0, p2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 231
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 232
    return-void
.end method


# virtual methods
.method public backupApk(Landroid/content/pm/PackageInfo;)V
    .locals 8
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 241
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "appSourceDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "apkDir":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    const-string v2, "a"

    const/4 v3, 0x0

    move-object v4, v7

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 250
    return-void
.end method

.method public backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "filesDir"    # Ljava/io/File;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "linkDomain"    # Ljava/lang/String;
    .param p6, "withApk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p6

    invoke-direct {p0, p1, v3}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->getManifestBytes(Landroid/content/pm/PackageInfo;Z)[B

    move-result-object v4

    .line 91
    .local v4, "manifestBytes":[B
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 92
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v5, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 93
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 99
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 101
    iget-object v8, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 105
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 106
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 101
    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v8 .. v13}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 108
    return-void
.end method

.method public backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Z)V
    .locals 7
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "filesDir"    # Ljava/io/File;
    .param p4, "withApk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    return-void
.end method

.method public backupObb(ILandroid/content/pm/PackageInfo;)V
    .locals 13
    .param p1, "userId"    # I
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 260
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v0, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 262
    .local v0, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 263
    .local v1, "obbDir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 268
    .local v3, "obbFiles":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 269
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 270
    .local v10, "obbDirName":Ljava/lang/String;
    array-length v11, v3

    :goto_0
    if-ge v2, v11, :cond_0

    aget-object v12, v3, v2

    .line 271
    .local v12, "obb":Ljava/io/File;
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    .line 276
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 271
    const-string/jumbo v5, "obb"

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 270
    .end local v12    # "obb":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v3    # "obbFiles":[Ljava/io/File;
    .end local v10    # "obbDirName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public backupWidget(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;[B)V
    .locals 11
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "metadataFile"    # Ljava/io/File;
    .param p3, "filesDir"    # Ljava/io/File;
    .param p4, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    array-length v0, p4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can\'t backup widget with no data."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 174
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 175
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 176
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v2

    .line 177
    .local v8, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v9, v2

    .line 179
    .local v9, "dataOutputStream":Ljava/io/DataOutputStream;
    invoke-direct {p0, v0}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->getMetadataBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 180
    .local v10, "metadata":[B
    invoke-virtual {v8, v10}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 181
    invoke-direct {p0, v9, p4}, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->writeWidgetData(Ljava/io/DataOutputStream;[B)V

    .line 182
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 183
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 187
    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 189
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 193
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 194
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 189
    move-object v2, v0

    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 196
    return-void
.end method
