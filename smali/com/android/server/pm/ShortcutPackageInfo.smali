.class Lcom/android/server/pm/ShortcutPackageInfo;
.super Ljava/lang/Object;
.source "ShortcutPackageInfo.java"


# static fields
.field private static final ATTR_BACKUP_ALLOWED:Ljava/lang/String; = "allow-backup"

.field private static final ATTR_BACKUP_ALLOWED_INITIALIZED:Ljava/lang/String; = "allow-backup-initialized"

.field private static final ATTR_BACKUP_SOURCE_BACKUP_ALLOWED:Ljava/lang/String; = "bk_src_backup-allowed"

.field private static final ATTR_BACKUP_SOURCE_VERSION:Ljava/lang/String; = "bk_src_version"

.field private static final ATTR_LAST_UPDATE_TIME:Ljava/lang/String; = "last_udpate_time"

.field private static final ATTR_SHADOW:Ljava/lang/String; = "shadow"

.field private static final ATTR_SIGNATURE_HASH:Ljava/lang/String; = "hash"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field static final TAG_ROOT:Ljava/lang/String; = "package-info"

.field private static final TAG_SIGNATURE:Ljava/lang/String; = "signature"


# instance fields
.field private mBackupAllowed:Z

.field private mBackupAllowedInitialized:Z

.field private mBackupSourceBackupAllowed:Z

.field private mBackupSourceVersionCode:J

.field private mIsShadow:Z

.field private mLastUpdateTime:J

.field private mSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mVersionCode:J


# direct methods
.method private constructor <init>(JJLjava/util/ArrayList;Z)V
    .locals 2
    .param p1, "versionCode"    # J
    .param p3, "lastUpdateTime"    # J
    .param p6, "isShadow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList<",
            "[B>;Z)V"
        }
    .end annotation

    .line 82
    .local p5, "sigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 68
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 83
    iput-wide p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 84
    iput-wide p3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 85
    iput-boolean p6, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 86
    iput-object p5, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 89
    return-void
.end method

.method public static generateForInstalledPackageForTest(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 11
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 168
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 169
    .local v1, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v1, :cond_0

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get signatures: package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v2, 0x0

    return-object v2

    .line 174
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 175
    .local v2, "signatures":[Landroid/content/pm/Signature;
    new-instance v10, Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 176
    invoke-static {v2}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(JJLjava/util/ArrayList;Z)V

    .line 178
    .local v3, "ret":Lcom/android/server/pm/ShortcutPackageInfo;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 179
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 180
    return-object v3
.end method

.method public static newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 8

    .line 92
    new-instance v7, Lcom/android/server/pm/ShortcutPackageInfo;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(JJLjava/util/ArrayList;Z)V

    return-object v7
.end method


# virtual methods
.method public canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;Z)I
    .locals 7
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "currentPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "anyVersionOkay"    # Z

    .line 144
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 145
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-static {v1, p2, v0}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v1

    const-string v2, "ShortcutService"

    if-nez v1, :cond_0

    .line 146
    const-string v1, "Can\'t restore: Package signature mismatch"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/16 v1, 0x66

    return v1

    .line 149
    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    const/4 v1, 0x0

    if-nez p3, :cond_2

    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 155
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 157
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    .line 155
    const-string v1, "Can\'t restore: package current version %d < backed up version %d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/16 v1, 0x64

    return v1

    .line 160
    :cond_2
    return v1

    .line 151
    :cond_3
    :goto_0
    const-string v1, "Can\'t restore: package didn\'t or doesn\'t allow backup"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/16 v1, 0x65

    return v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 320
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    const-string v0, "PackageInfo:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    const-string v0, "  IsShadow: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 326
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    if-eqz v0, :cond_0

    const-string v0, " (not installed)"

    goto :goto_0

    :cond_0
    const-string v0, " (installed)"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 329
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    const-string v0, "  Version: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 332
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 334
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    const-string v0, "  Backup Allowed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 338
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 341
    :cond_1
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 342
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    const-string v0, "  Backup source version: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 345
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 347
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    const-string v0, "  Backup source backup allowed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 350
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 353
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    const-string v0, "  Last package update time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 356
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 359
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    const-string v1, "SigHash: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println([C)V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 364
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public getBackupSourceVersionCode()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    return-wide v0
.end method

.method public getVersionCode()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    return-wide v0
.end method

.method public hasSignatures()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBackupAllowed()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    return v0
.end method

.method public isBackupSourceBackupAllowed()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 114
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    return v0
.end method

.method public isShadow()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    return v0
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 19
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, -0x1

    const-string/jumbo v4, "version"

    invoke-static {v1, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 245
    .local v4, "versionCode":J
    const-string/jumbo v6, "last_udpate_time"

    invoke-static {v1, v6}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    .line 249
    .local v6, "lastUpdateTime":J
    const/4 v9, 0x1

    if-nez p2, :cond_1

    .line 250
    const-string/jumbo v10, "shadow"

    invoke-static {v1, v10}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v10, v9

    .line 254
    .local v10, "shadow":Z
    :goto_1
    const-string v11, "bk_src_version"

    invoke-static {v1, v11, v2, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    .line 261
    .local v11, "backupSourceVersion":J
    const-string v13, "allow-backup"

    invoke-static {v1, v13, v9}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v13

    .line 263
    .local v13, "backupAllowed":Z
    const-string v14, "bk_src_backup-allowed"

    invoke-static {v1, v14, v9}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    .line 266
    .local v14, "backupSourceBackupAllowed":Z
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v15, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 270
    .local v8, "outerDepth":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v9, :cond_9

    const/4 v2, 0x3

    if-ne v3, v2, :cond_3

    .line 271
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v8, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v16, v3

    move/from16 v18, v8

    goto :goto_7

    .line 272
    :cond_3
    :goto_3
    const/4 v2, 0x2

    if-eq v3, v2, :cond_4

    .line 273
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 275
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 276
    .local v2, "depth":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 278
    .local v9, "tag":Ljava/lang/String;
    move/from16 v16, v3

    .end local v3    # "type":I
    .local v16, "type":I
    add-int/lit8 v3, v8, 0x1

    if-ne v2, v3, :cond_8

    .line 279
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v3

    move/from16 v18, v8

    .end local v8    # "outerDepth":I
    .local v18, "outerDepth":I
    const v8, 0x3ffd98b8

    if-eq v3, v8, :cond_6

    :cond_5
    goto :goto_4

    :cond_6
    const-string/jumbo v3, "signature"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v17, 0x0

    goto :goto_5

    :goto_4
    const/16 v17, -0x1

    :goto_5
    if-eqz v17, :cond_7

    goto :goto_6

    .line 281
    :cond_7
    const-string v3, "hash"

    invoke-static {v1, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "hash":Ljava/lang/String;
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v8

    .line 285
    .local v8, "decoded":[B
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    move/from16 v8, v18

    const-wide/16 v2, -0x1

    const/4 v9, 0x1

    goto :goto_2

    .line 278
    .end local v3    # "hash":Ljava/lang/String;
    .end local v18    # "outerDepth":I
    .local v8, "outerDepth":I
    :cond_8
    move/from16 v18, v8

    .line 290
    .end local v8    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :goto_6
    invoke-static {v2, v9}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    .line 291
    .end local v2    # "depth":I
    .end local v9    # "tag":Ljava/lang/String;
    move/from16 v8, v18

    const-wide/16 v2, -0x1

    const/4 v9, 0x1

    goto :goto_2

    .line 270
    .end local v16    # "type":I
    .end local v18    # "outerDepth":I
    .local v3, "type":I
    .restart local v8    # "outerDepth":I
    :cond_9
    move/from16 v16, v3

    move/from16 v18, v8

    .line 294
    .end local v3    # "type":I
    .end local v8    # "outerDepth":I
    .restart local v16    # "type":I
    .restart local v18    # "outerDepth":I
    :goto_7
    if-eqz p2, :cond_a

    .line 295
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 296
    iput-wide v4, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 297
    iput-boolean v13, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    goto :goto_8

    .line 299
    :cond_a
    iput-wide v4, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 300
    iput-wide v11, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 301
    iput-boolean v14, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 303
    :goto_8
    iput-wide v6, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 304
    iput-boolean v10, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 305
    iput-object v15, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 313
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 314
    iput-boolean v2, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    .line 315
    return-void
.end method

.method public refreshSignature(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 5
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "pkg"    # Lcom/android/server/pm/ShortcutPackageItem;

    .line 184
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to refresh package info for shadow package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 187
    return-void

    .line 190
    :cond_0
    nop

    .line 191
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    .line 190
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 192
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    const-string v1, "ShortcutService"

    if-nez v0, :cond_1

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 197
    :cond_1
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 198
    .local v2, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v2, :cond_2

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not refreshing signature for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " since it appears to have no signing info."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 204
    :cond_2
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1

    .line 205
    .local v1, "signatures":[Landroid/content/pm/Signature;
    invoke-static {v1}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 206
    return-void
.end method

.method public saveToXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 6
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    if-nez v0, :cond_0

    .line 211
    const-string v0, "Backup happened before mBackupAllowed is initialized."

    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 214
    :cond_0
    const-string/jumbo v0, "package-info"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    const-string/jumbo v4, "version"

    invoke-static {p2, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 217
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    const-string/jumbo v4, "last_udpate_time"

    invoke-static {p2, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 218
    iget-boolean v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    const-string/jumbo v3, "shadow"

    invoke-static {p2, v3, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 219
    iget-boolean v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    const-string v3, "allow-backup"

    invoke-static {p2, v3, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 223
    iget-boolean v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    const-string v3, "allow-backup-initialized"

    invoke-static {p2, v3, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 225
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    const-string v4, "bk_src_version"

    invoke-static {p2, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 226
    iget-boolean v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    const-string v3, "bk_src_backup-allowed"

    invoke-static {p2, v3, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 230
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 231
    const-string/jumbo v3, "signature"

    invoke-interface {p2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v4, v5}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "encoded":Ljava/lang/String;
    const-string v5, "hash"

    invoke-static {p2, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 234
    invoke-interface {p2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    .end local v4    # "encoded":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "i":I
    :cond_1
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    return-void
.end method

.method public setShadow(Z)V
    .locals 0
    .param p1, "shadow"    # Z

    .line 101
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 102
    return-void
.end method

.method public updateFromPackageInfo(Landroid/content/pm/PackageInfo;)V
    .locals 2
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 132
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 133
    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    .line 136
    :cond_0
    return-void
.end method
