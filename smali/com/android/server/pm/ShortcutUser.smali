.class Lcom/android/server/pm/ShortcutUser;
.super Ljava/lang/Object;
.source "ShortcutUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    }
.end annotation


# static fields
.field private static final ATTR_KNOWN_LOCALES:Ljava/lang/String; = "locales"

.field private static final ATTR_LAST_APP_SCAN_OS_FINGERPRINT:Ljava/lang/String; = "last-app-scan-fp"

.field private static final ATTR_LAST_APP_SCAN_TIME:Ljava/lang/String; = "last-app-scan-time2"

.field private static final ATTR_RESTORE_SOURCE_FINGERPRINT:Ljava/lang/String; = "restore-from-fp"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final DIRECTORY_LUANCHERS:Ljava/lang/String; = "launchers"

.field static final DIRECTORY_PACKAGES:Ljava/lang/String; = "packages"

.field private static final KEY_LAUNCHERS:Ljava/lang/String; = "launchers"

.field private static final KEY_PACKAGES:Ljava/lang/String; = "packages"

.field private static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_LAUNCHER:Ljava/lang/String; = "launcher"

.field static final TAG_ROOT:Ljava/lang/String; = "user"


# instance fields
.field private mCachedLauncher:Landroid/content/ComponentName;

.field private mKnownLocales:Ljava/lang/String;

.field private mLastAppScanOsFingerprint:Ljava/lang/String;

.field private mLastAppScanTime:J

.field private mLastKnownLauncher:Landroid/content/ComponentName;

.field private final mLaunchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreFromOsFingerprint:Ljava/lang/String;

.field final mService:Lcom/android/server/pm/ShortcutService;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;I)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "userId"    # I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 120
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 140
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 141
    iput p2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 142
    return-void
.end method

.method private addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V
    .locals 3
    .param p1, "launcher"    # Lcom/android/server/pm/ShortcutLauncher;

    .line 196
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutLauncher;->replaceUser(Lcom/android/server/pm/ShortcutUser;)V

    .line 197
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v1

    .line 198
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method private addPackage(Lcom/android/server/pm/ShortcutPackage;)V
    .locals 2
    .param p1, "p"    # Lcom/android/server/pm/ShortcutPackage;

    .line 176
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutPackage;->replaceUser(Lcom/android/server/pm/ShortcutUser;)V

    .line 177
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method

.method private dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/io/File;

    .line 679
    const/4 v0, 0x0

    .line 680
    .local v0, "numFiles":I
    const-wide/16 v1, 0x0

    .line 681
    .local v1, "size":J
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 682
    .local v3, "children":[Ljava/io/File;
    if-eqz v3, :cond_2

    .line 683
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 684
    .local v7, "child":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 685
    add-int/lit8 v0, v0, 0x1

    .line 686
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v1, v8

    goto :goto_1

    .line 687
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 688
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, v7}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    .line 683
    .end local v7    # "child":Ljava/io/File;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 692
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    const-string v4, "Path: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 695
    const-string v4, "/ has "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 697
    const-string v4, " files, size="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 699
    const-string v4, " ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v4, v4, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method private static forAllFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V
    .locals 4
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/function/Consumer<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 509
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    return-void

    .line 512
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 513
    .local v0, "list":[Ljava/io/File;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 514
    .local v3, "f":Ljava/io/File;
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 513
    .end local v3    # "f":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    :cond_1
    return-void
.end method

.method private getKnownLocales()Ljava/lang/String;
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetLocaleTagsForUser(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    return-object v0
.end method

.method private getShortcutPackageItemFile(Lcom/android/server/pm/ShortcutPackageItem;)Ljava/io/File;
    .locals 5
    .param p1, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    .line 404
    instance-of v0, p1, Lcom/android/server/pm/ShortcutLauncher;

    .line 406
    .local v0, "isShortcutLauncher":Z
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v3, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v2

    .line 407
    if-eqz v0, :cond_0

    const-string/jumbo v3, "launchers"

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "packages"

    :goto_0
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 410
    .local v1, "path":Ljava/io/File;
    const-string v2, ".xml"

    if-eqz v0, :cond_1

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "fileName":Ljava/lang/String;
    goto :goto_1

    .line 415
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    .restart local v2    # "fileName":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3
.end method

.method static synthetic lambda$attemptToRestoreIfNeededAndSave$2(Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 0
    .param p0, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    .line 336
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 337
    return-void
.end method

.method static synthetic lambda$detectLocaleChange$1(Lcom/android/server/pm/ShortcutPackage;)V
    .locals 0
    .param p0, "pkg"    # Lcom/android/server/pm/ShortcutPackage;

    .line 314
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    .line 315
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resolveResourceStrings()V

    .line 316
    return-void
.end method

.method static synthetic lambda$forPackageItem$0(ILjava/lang/String;Ljava/util/function/Consumer;Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 1
    .param p0, "packageUserId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/util/function/Consumer;
    .param p3, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    .line 262
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 263
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 266
    :cond_0
    return-void
.end method

.method static synthetic lambda$loadFromXml$3(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ZLjava/io/File;)V
    .locals 3
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "ret"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "fromBackup"    # Z
    .param p3, "f"    # Ljava/io/File;

    .line 490
    invoke-static {p0, p1, p3, p2}, Lcom/android/server/pm/ShortcutPackage;->loadFromFile(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Ljava/io/File;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 491
    .local v0, "sp":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v0, :cond_0

    .line 492
    iget-object v1, p1, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_0
    return-void
.end method

.method static synthetic lambda$loadFromXml$4(Lcom/android/server/pm/ShortcutUser;IZLjava/io/File;)V
    .locals 1
    .param p0, "ret"    # Lcom/android/server/pm/ShortcutUser;
    .param p1, "userId"    # I
    .param p2, "fromBackup"    # Z
    .param p3, "f"    # Ljava/io/File;

    .line 497
    nop

    .line 498
    invoke-static {p3, p0, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;->loadFromFile(Ljava/io/File;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 499
    .local v0, "sl":Lcom/android/server/pm/ShortcutLauncher;
    if-eqz v0, :cond_0

    .line 500
    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    .line 502
    :cond_0
    return-void
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;
    .locals 17
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    .line 423
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    new-instance v0, Lcom/android/server/pm/ShortcutUser;

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    move-object v5, v0

    .line 424
    .local v5, "ret":Lcom/android/server/pm/ShortcutUser;
    const/4 v6, 0x0

    .line 426
    .local v6, "readShortcutItems":Z
    :try_start_0
    const-string/jumbo v0, "locales"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 431
    const-string/jumbo v0, "last-app-scan-time2"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v7

    .line 433
    .local v7, "lastAppScanTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v9

    .line 434
    .local v9, "currentTime":J
    cmp-long v0, v7, v9

    if-gez v0, :cond_0

    move-wide v11, v7

    goto :goto_0

    :cond_0
    const-wide/16 v11, 0x0

    :goto_0
    iput-wide v11, v5, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    .line 435
    const-string/jumbo v0, "last-app-scan-fp"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    .line 437
    const-string/jumbo v0, "restore-from-fp"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 439
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 441
    .local v0, "outerDepth":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v12, v11

    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v11, v13, :cond_b

    const/4 v11, 0x3

    if-ne v12, v11, :cond_1

    .line 442
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v0, :cond_c

    .line 443
    :cond_1
    const/4 v11, 0x2

    if-eq v12, v11, :cond_2

    .line 444
    move/from16 v16, v0

    goto/16 :goto_5

    .line 446
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 447
    .local v14, "depth":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 449
    .local v15, "tag":Ljava/lang/String;
    add-int/lit8 v11, v0, 0x1

    if-ne v14, v11, :cond_a

    .line 450
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v13, -0x53e0f060

    if-eq v11, v13, :cond_6

    const v13, -0x4457a875

    if-eq v11, v13, :cond_5

    const v13, -0x301acbba

    if-eq v11, v13, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    const-string/jumbo v11, "package"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const-string/jumbo v11, "launcher-pins"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x2

    goto :goto_3

    :cond_6
    const-string/jumbo v11, "launcher"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    goto :goto_3

    :goto_2
    const/4 v11, -0x1

    :goto_3
    if-eqz v11, :cond_9

    const/4 v13, 0x1

    if-eq v11, v13, :cond_8

    const/4 v13, 0x2

    if-eq v11, v13, :cond_7

    move/from16 v16, v0

    goto :goto_4

    .line 467
    :cond_7
    nop

    .line 468
    invoke-static {v2, v5, v3, v4}, Lcom/android/server/pm/ShortcutLauncher;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v11

    .line 467
    invoke-direct {v5, v11}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    .line 469
    const/4 v6, 0x1

    .line 470
    goto :goto_1

    .line 457
    :cond_8
    invoke-static {v1, v5, v2, v4}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v11

    .line 461
    .local v11, "shortcuts":Lcom/android/server/pm/ShortcutPackage;
    iget-object v13, v5, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    move/from16 v16, v0

    .end local v0    # "outerDepth":I
    .local v16, "outerDepth":I
    invoke-virtual {v11}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const/4 v6, 0x1

    .line 463
    move/from16 v0, v16

    goto/16 :goto_1

    .line 452
    .end local v11    # "shortcuts":Lcom/android/server/pm/ShortcutPackage;
    .end local v16    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    :cond_9
    move/from16 v16, v0

    .end local v0    # "outerDepth":I
    .restart local v16    # "outerDepth":I
    const-string/jumbo v0, "value"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    .line 454
    goto :goto_5

    .line 449
    .end local v16    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    :cond_a
    move/from16 v16, v0

    .line 474
    .end local v0    # "outerDepth":I
    .restart local v16    # "outerDepth":I
    :goto_4
    invoke-static {v14, v15}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v14    # "depth":I
    .end local v15    # "tag":Ljava/lang/String;
    nop

    .line 441
    .end local v12    # "type":I
    .end local v16    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    :goto_5
    move/from16 v0, v16

    .end local v0    # "outerDepth":I
    .restart local v16    # "outerDepth":I
    goto/16 :goto_1

    .end local v16    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    .restart local v12    # "type":I
    :cond_b
    move/from16 v16, v0

    .line 479
    .end local v0    # "outerDepth":I
    .end local v7    # "lastAppScanTime":J
    .end local v9    # "currentTime":J
    .end local v12    # "type":I
    :cond_c
    nop

    .line 481
    if-eqz v6, :cond_d

    .line 485
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    goto :goto_6

    .line 487
    :cond_d
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v0

    .line 489
    .local v0, "root":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "packages"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/pm/-$$Lambda$ShortcutUser$WEqKmk0AyNmC3cTrDBpLnQYS7yQ;

    invoke-direct {v8, v1, v5, v4}, Lcom/android/server/pm/-$$Lambda$ShortcutUser$WEqKmk0AyNmC3cTrDBpLnQYS7yQ;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Z)V

    invoke-static {v7, v8}, Lcom/android/server/pm/ShortcutUser;->forAllFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V

    .line 496
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "launchers"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/pm/-$$Lambda$ShortcutUser$J226XST5zFAxi7f11OTPtvDbTTE;

    invoke-direct {v8, v5, v3, v4}, Lcom/android/server/pm/-$$Lambda$ShortcutUser$J226XST5zFAxi7f11OTPtvDbTTE;-><init>(Lcom/android/server/pm/ShortcutUser;IZ)V

    invoke-static {v7, v8}, Lcom/android/server/pm/ShortcutUser;->forAllFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V

    .line 505
    .end local v0    # "root":Ljava/io/File;
    :goto_6
    return-object v5

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v7, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;

    const-string v8, "Unable to parse file"

    invoke-direct {v7, v8, v0}, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private saveShortcutPackageItem(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V
    .locals 2
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;
    .param p3, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 386
    if-eqz p3, :cond_1

    .line 387
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 388
    return-void

    .line 390
    :cond_0
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    goto :goto_0

    .line 393
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutUser;->getShortcutPackageItemFile(Lcom/android/server/pm/ShortcutPackageItem;)Ljava/io/File;

    move-result-object v0

    .line 398
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 399
    invoke-virtual {p2, v0, p3}, Lcom/android/server/pm/ShortcutPackageItem;->saveToFile(Ljava/io/File;Z)V

    .line 401
    .end local v0    # "path":Ljava/io/File;
    :goto_0
    return-void
.end method

.method private setLauncher(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "launcherComponent"    # Landroid/content/ComponentName;
    .param p2, "allowPurgeLastKnown"    # Z

    .line 540
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Landroid/content/ComponentName;

    .line 542
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    return-void

    .line 545
    :cond_0
    if-nez p2, :cond_1

    if-nez p1, :cond_1

    .line 546
    return-void

    .line 548
    :cond_1
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    .line 549
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 550
    return-void
.end method


# virtual methods
.method public attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageUserId"    # I

    .line 335
    sget-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$bsc89E_40a5X2amehalpqawQ5hY;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutUser$bsc89E_40a5X2amehalpqawQ5hY;

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/pm/ShortcutUser;->forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 338
    return-void
.end method

.method public clearLauncher()V
    .locals 1

    .line 528
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;)V

    .line 529
    return-void
.end method

.method public detectLocaleChange()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetLocaleTagsForUser(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "currentLocales":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    return-void

    .line 311
    :cond_0
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 313
    sget-object v1, Lcom/android/server/pm/-$$Lambda$ShortcutUser$6rBk7xJFaM9dXyyKHFs-DCus0iM;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutUser$6rBk7xJFaM9dXyyKHFs-DCus0iM;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 318
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 319
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/pm/ShortcutService$DumpFilter;

    .line 621
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v0

    const-string v1, "  "

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    const-string v0, "User: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 625
    const-string v0, "  Known locales: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 627
    const-string v0, "  Last app scan: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 629
    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 634
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    const-string v0, "Last app scan FP: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 639
    const-string v0, "Restore from FP: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 644
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 645
    const-string v0, "Cached launcher: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 647
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 649
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    const-string v0, "Last known launcher: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 652
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 655
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 656
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutLauncher;

    .line 657
    .local v2, "launcher":Lcom/android/server/pm/ShortcutLauncher;
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isPackageMatch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 658
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 655
    .end local v2    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 663
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutPackage;

    .line 664
    .local v2, "pkg":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isPackageMatch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 665
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 662
    .end local v2    # "pkg":Lcom/android/server/pm/ShortcutPackage;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 669
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 670
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 671
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    const-string v0, "Bitmap directories: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    .line 675
    :cond_5
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 4
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 705
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 707
    .local v0, "result":Lorg/json/JSONObject;
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 710
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 711
    .local v1, "launchers":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 712
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutLauncher;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ShortcutLauncher;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 711
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 714
    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v2, "launchers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 718
    .end local v1    # "launchers":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 719
    .local v1, "packages":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 720
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ShortcutPackage;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 719
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 722
    .end local v2    # "i":I
    :cond_1
    const-string/jumbo v2, "packages"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 725
    .end local v1    # "packages":Lorg/json/JSONArray;
    return-object v0
.end method

.method public forAllLaunchers(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;)V"
        }
    .end annotation

    .line 248
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutLauncher;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 249
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 250
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public forAllPackageItems(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutPackageItem;",
            ">;)V"
        }
    .end annotation

    .line 255
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutPackageItem;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 257
    return-void
.end method

.method public forAllPackages(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;)V"
        }
    .end annotation

    .line 241
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutPackage;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 242
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/ShortcutPackageItem;",
            ">;)V"
        }
    .end annotation

    .line 261
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/ShortcutPackageItem;>;"
    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$XHWlvjfCvG1SoVwGHi3envhmtfM;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/pm/-$$Lambda$ShortcutUser$XHWlvjfCvG1SoVwGHi3envhmtfM;-><init>(ILjava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 267
    return-void
.end method

.method public forceClearLauncher()V
    .locals 2

    .line 536
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;Z)V

    .line 537
    return-void
.end method

.method getAllLaunchersForTest()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method getAllPackagesForTest()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getCachedLauncher()Landroid/content/ComponentName;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLastAppScanOsFingerprint()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAppScanTime()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    return-wide v0
.end method

.method public getLastKnownLauncher()Landroid/content/ComponentName;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLauncherShortcuts(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "launcherUserId"    # I

    .line 229
    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v0

    .line 230
    .local v0, "key":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutLauncher;

    .line 231
    .local v1, "ret":Lcom/android/server/pm/ShortcutLauncher;
    if-nez v1, :cond_0

    .line 232
    new-instance v2, Lcom/android/server/pm/ShortcutLauncher;

    iget v3, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    move-object v1, v2

    .line 233
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 237
    :goto_0
    return-object v1
.end method

.method public getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 219
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackage;
    if-nez v0, :cond_0

    .line 220
    new-instance v1, Lcom/android/server/pm/ShortcutPackage;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    move-object v0, v1

    .line 221
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    return-object v0
.end method

.method public getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 210
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->attemptToRestoreIfNeededAndSave()V

    .line 213
    :cond_0
    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    return v0
.end method

.method public hasPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$mergeRestoredFile$5$ShortcutUser(Lcom/android/server/pm/ShortcutService;[ILcom/android/server/pm/ShortcutLauncher;)V
    .locals 2
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "restoredLaunchers"    # [I
    .param p3, "sl"    # Lcom/android/server/pm/ShortcutLauncher;

    .line 585
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    return-void

    .line 589
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    .line 590
    const/4 v0, 0x0

    aget v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    .line 591
    return-void
.end method

.method public synthetic lambda$mergeRestoredFile$6$ShortcutUser(Lcom/android/server/pm/ShortcutService;[I[ILcom/android/server/pm/ShortcutPackage;)V
    .locals 4
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "restoredPackages"    # [I
    .param p3, "restoredShortcuts"    # [I
    .param p4, "sp"    # Lcom/android/server/pm/ShortcutPackage;

    .line 595
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    return-void

    .line 600
    :cond_0
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 601
    .local v0, "previous":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->hasNonManifestShortcuts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shortcuts for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " are being restored. Existing non-manifeset shortcuts will be overwritten."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortcutService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_1
    invoke-direct {p0, p4}, Lcom/android/server/pm/ShortcutUser;->addPackage(Lcom/android/server/pm/ShortcutPackage;)V

    .line 606
    const/4 v1, 0x0

    aget v2, p2, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p2, v1

    .line 607
    aget v2, p3, v1

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getShortcutCount()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p3, v1

    .line 608
    return-void
.end method

.method logSharingShortcutStats(Lcom/android/internal/logging/MetricsLogger;)V
    .locals 5
    .param p1, "logger"    # Lcom/android/internal/logging/MetricsLogger;

    .line 729
    const/4 v0, 0x0

    .line 730
    .local v0, "packageWithShareTargetsCount":I
    const/4 v1, 0x0

    .line 731
    .local v1, "totalSharingShortcutCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 732
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->hasShareTargets()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 733
    add-int/lit8 v0, v0, 0x1

    .line 734
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->getSharingShortcutCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 731
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 738
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x6b5

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 739
    .local v2, "logMaker":Landroid/metrics/LogMaker;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 740
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 739
    invoke-virtual {p1, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 741
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 742
    invoke-virtual {v3, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 741
    invoke-virtual {p1, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 743
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 744
    invoke-virtual {v3, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 743
    invoke-virtual {p1, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 745
    return-void
.end method

.method public mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V
    .locals 7
    .param p1, "restored"    # Lcom/android/server/pm/ShortcutUser;

    .line 563
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 577
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 578
    .local v2, "restoredLaunchers":[I
    new-array v3, v1, [I

    .line 579
    .local v3, "restoredPackages":[I
    new-array v1, v1, [I

    .line 581
    .local v1, "restoredShortcuts":[I
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 582
    new-instance v4, Lcom/android/server/pm/-$$Lambda$ShortcutUser$9L9586f0tFIMO5kym3kYgtd-s-4;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/pm/-$$Lambda$ShortcutUser$9L9586f0tFIMO5kym3kYgtd-s-4;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I)V

    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 592
    new-instance v4, Lcom/android/server/pm/-$$Lambda$ShortcutUser$1MymUWg2gtFS2o2Ay87xy7GTBD8;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/server/pm/-$$Lambda$ShortcutUser$1MymUWg2gtFS2o2Ay87xy7GTBD8;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I[I)V

    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 610
    iget-object v4, p1, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 611
    iget-object v4, p1, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 613
    iget-object v4, p1, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restored: L="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget v6, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " P="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " S="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShortcutService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void
.end method

.method public onCalledByPublisher(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 285
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 287
    return-void
.end method

.method public removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;
    .locals 2
    .param p1, "packageUserId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutLauncher;

    return-object v0
.end method

.method public removePackage(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 183
    .local v0, "removed":Lcom/android/server/pm/ShortcutPackage;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    .line 185
    return-object v0
.end method

.method public rescanPackageIfNeeded(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "forceRescan"    # Z

    .line 322
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 324
    .local v0, "isNewApp":Z
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 326
    .local v1, "shortcutPackage":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    if-eqz v0, :cond_0

    .line 328
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_0
    return-void
.end method

.method public resetThrottling()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->resetThrottling()V

    .line 557
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 560
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 342
    const/4 v0, 0x0

    const-string/jumbo v1, "user"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    const-string/jumbo v2, "restore-from-fp"

    if-nez p2, :cond_0

    .line 346
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    const-string/jumbo v4, "locales"

    invoke-static {p1, v4, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 347
    iget-wide v3, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    const-string/jumbo v5, "last-app-scan-time2"

    invoke-static {p1, v5, v3, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 349
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    const-string/jumbo v4, "last-app-scan-fp"

    invoke-static {p1, v4, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 351
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 354
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    const-string/jumbo v3, "launcher"

    invoke-static {p1, v3, v2}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 356
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 357
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 360
    :goto_0
    if-nez p2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v3, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v2

    .line 364
    .local v2, "root":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "packages"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 365
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "launchers"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 369
    .end local v2    # "root":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 370
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 371
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    .line 370
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 375
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 376
    .restart local v2    # "size":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 377
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    .line 376
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 381
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_3
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    return-void
.end method

.method public setLastAppScanOsFingerprint(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastAppScanOsFingerprint"    # Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setLastAppScanTime(J)V
    .locals 0
    .param p1, "lastAppScanTime"    # J

    .line 153
    iput-wide p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    .line 154
    return-void
.end method

.method public setLauncher(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "launcherComponent"    # Landroid/content/ComponentName;

    .line 523
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;Z)V

    .line 524
    return-void
.end method
