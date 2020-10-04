.class public Lcom/android/server/pm/PmInjector;
.super Ljava/lang/Object;
.source "PmInjector.java"


# static fields
.field private static final ACTION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_ONEPLUS:Z

.field private static final RESTRICTED_PACKAGES_FOR_CTA_NETWORK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final WAIT_OM_INTERVAL:I = 0x1388

.field private static mOemPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sActivityManagerReady:Z

.field private static sSystemAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 88
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/PmInjector;->DEBUG_ONEPLUS:Z

    .line 89
    const-class v0, Lcom/android/server/pm/PmInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PmInjector;->sSystemAppList:Ljava/util/ArrayList;

    .line 94
    const-string v0, "com.oppo.market"

    const-string v1, "com.heytap.quicksearchbox"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PmInjector;->mOemPkgList:Ljava/util/List;

    .line 103
    const-string v1, "android.intent.action.VIEW"

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const-string v3, "android.intent.action.SEND"

    const-string v4, "android.intent.action.PICK"

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    const-string v6, "android.intent.action.INSERT"

    const-string v7, "android.intent.action.INSERT_OR_EDIT"

    const-string v8, "android.intent.action.SENDTO"

    const-string v9, "android.intent.action.DIAL"

    const-string v10, "android.intent.action.EDIT"

    const-string v11, "android.intent.action.GET_CONTENT"

    const-string v12, "android.intent.action.TRANSLATE"

    const-string v13, "android.intent.action.PROCESS_TEXT"

    const-string v14, "android.intent.action.OPEN_DOCUMENT"

    const-string v15, "android.media.action.VIDEO_CAPTURE"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PmInjector;->ACTION_LIST:Ljava/util/List;

    .line 431
    const-string v1, "com.google.android.configupdater"

    const-string v2, "com.google.android.backuptransport"

    const-string v3, "com.google.android.onetimeinitializer"

    const-string v4, "com.google.android.partnersetup"

    const-string v5, "com.google.android.gsf"

    const-string v6, "com.google.android.gms"

    const-string v7, "com.google.android.gms.policy_sidecar_aps"

    const-string v8, "com.google.android.ext.services"

    const-string v9, "com.google.android.ext.shared"

    const-string v10, "com.google.android.printservice.recommendation"

    const-string v11, "com.android.vending"

    const-string v12, "com.google.ar.core"

    const-string v13, "com.google.android.marvin.talkback"

    const-string v14, "com.google.android.apps.wellbeing"

    const-string v15, "com.google.android.syncadapters.contacts"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PmInjector;->RESTRICTED_PACKAGES_FOR_CTA_NETWORK:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 87
    sget-object v0, Lcom/android/server/pm/PmInjector;->RESTRICTED_PACKAGES_FOR_CTA_NETWORK:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static addDozeWhitelist(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 413
    nop

    .line 414
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 413
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 415
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_1

    .line 417
    :try_start_0
    sget-boolean v1, Lcom/android/server/pm/PmInjector;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 418
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDozeWhiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    invoke-interface {v0, p0}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v3, "Falied to add package to doze whitelist"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 425
    :cond_1
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get DeviceIdleController"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :goto_1
    return-void
.end method

.method public static checkOemDeviceIdleWhitelist(Ljava/lang/String;)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 386
    invoke-static {p0}, Lcom/android/server/pm/PmInjector;->isOemDeviceIdleWhitelist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-static {p0}, Lcom/android/server/pm/PmInjector;->addDozeWhitelist(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/PmInjector;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 390
    sget-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not in doze whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    :goto_0
    return-void
.end method

.method public static computePackageCacheName()Ljava/lang/String;
    .locals 14

    .line 480
    const-string/jumbo v0, "ro.build.fingerprint"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "fingerprint":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.isolated_storage"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "isolatedStorage":Ljava/lang/String;
    const-string/jumbo v4, "sys.isolated_storage_snapshot"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 483
    .local v5, "snapshot":Ljava/lang/String;
    const-string/jumbo v6, "ro.build.alpha"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 484
    .local v6, "alphaBuild":Ljava/lang/String;
    const-string/jumbo v7, "ro.build.version.ota"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 485
    .local v8, "otaVersion":Ljava/lang/String;
    const-string/jumbo v9, "persist.sys.version.ota"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 486
    .local v10, "persistOtaVersion":Ljava/lang/String;
    sget-object v11, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ro.build.fingerprint="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\npersist.sys.isolated_storage="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\nsys.isolated_storage_snapshot="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\nro.build.alpha="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\nro.build.version.ota="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\npersist.sys.version.ota="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v11, "1"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 497
    filled-new-array {v0, v2, v4, v7, v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->digestOf([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "cacheName":Ljava/lang/String;
    goto :goto_0

    .line 505
    .end local v0    # "cacheName":Ljava/lang/String;
    :cond_0
    filled-new-array {v0, v2, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->digestOf([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .restart local v0    # "cacheName":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Computed package cache name is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-object v0
.end method

.method public static controlGooglePackagesForCta(Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "firstBoot"    # Z

    .line 452
    if-eqz p2, :cond_0

    .line 453
    sget-object v0, Lcom/android/server/pm/PmInjector;->RESTRICTED_PACKAGES_FOR_CTA_NETWORK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 454
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    .line 456
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 460
    :cond_0
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 461
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/pm/PmInjector$1;

    invoke-direct {v3, p1, p0}, Lcom/android/server/pm/PmInjector$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 475
    return-void
.end method

.method public static copyPackageThemes(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I
    .locals 5
    .param p0, "packagePath"    # Ljava/lang/String;
    .param p1, "target"    # Lcom/android/internal/os/IParcelFileDescriptorFactory;

    .line 540
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    const/4 v0, 0x0

    .line 546
    .local v0, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    .local v1, "packageFile":Ljava/io/File;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v2

    move-object v0, v2

    .line 548
    invoke-static {v0, p1}, Lcom/android/server/pm/PmInjector;->copyPackageThemesInner(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 549
    .end local v1    # "packageFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy package themes at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v2, -0x4

    return v2

    .line 541
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, -0x3

    return v0
.end method

.method private static copyPackageThemesInner(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I
    .locals 10
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p1, "target"    # Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 561
    .local v1, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/4 v2, 0x0

    .line 562
    .local v2, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v3, 0x0

    .line 563
    .local v3, "out":Ljava/io/OutputStream;
    const-string v4, ""

    .line 566
    .local v4, "sourcePath":Ljava/lang/String;
    const/16 v5, -0x11

    :try_start_0
    iget-object v6, p0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    move-object v4, v6

    .line 567
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 568
    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v6

    .line 571
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    move-object v2, v6

    if-eqz v6, :cond_1

    .line 572
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 573
    .local v6, "zipEntryName":Ljava/lang/String;
    const-string/jumbo v7, "themes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "oneplus"

    .line 574
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 575
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v7, :cond_0

    .line 577
    :try_start_1
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 578
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->toString()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x30000000

    invoke-interface {p1, v8, v9}, Lcom/android/internal/os/IParcelFileDescriptorFactory;->open(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v3, v7

    .line 580
    invoke-static {v1, v3}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 586
    :goto_1
    goto :goto_3

    .line 585
    :catchall_0
    move-exception v7

    goto :goto_2

    .line 581
    :catch_0
    move-exception v7

    .line 582
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 583
    sget-object v8, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 585
    nop

    .end local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :goto_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v1    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "sourcePath":Ljava/lang/String;
    .end local p0    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    .end local p1    # "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    throw v7
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 588
    .end local v6    # "zipEntryName":Ljava/lang/String;
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "sourcePath":Ljava/lang/String;
    .restart local p0    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    .restart local p1    # "target":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    :cond_0
    :goto_3
    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 603
    nop

    .line 605
    const/4 v5, 0x1

    return v5

    .line 602
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 597
    :catch_1
    move-exception v6

    .line 598
    .local v6, "e":Ljava/lang/NullPointerException;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 599
    sget-object v7, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 600
    nop

    .line 602
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 600
    return v5

    .line 593
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v6

    .line 594
    .local v6, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 595
    sget-object v7, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 596
    nop

    .line 602
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 596
    return v5

    .line 589
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 590
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 591
    sget-object v7, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 592
    nop

    .line 602
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 592
    return v5

    .line 602
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :goto_4
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    throw v5
.end method

.method public static deletePackageIfParallel(Ljava/lang/String;JIIILcom/android/server/pm/UserManagerService;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)I
    .locals 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "versionCode"    # J
    .param p3, "userId"    # I
    .param p4, "deleteFlags"    # I
    .param p5, "returnCode"    # I
    .param p6, "sUserManager"    # Lcom/android/server/pm/UserManagerService;
    .param p7, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p8, "internalPackageName"    # Ljava/lang/String;
    .param p9, "mPm"    # Lcom/android/server/pm/PackageManagerService;

    .line 258
    move/from16 v0, p5

    move-object/from16 v1, p7

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x25

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    const/16 v3, 0x3e7

    move-object/from16 v4, p6

    invoke-virtual {v4, v3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne v0, v2, :cond_1

    if-nez p3, :cond_1

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    const/16 v9, 0x3e7

    move-object/from16 v5, p9

    move-object/from16 v6, p8

    move-wide v7, p1

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v2

    return v2

    .line 258
    :cond_0
    move-object/from16 v4, p6

    .line 266
    :cond_1
    return v0
.end method

.method public static doCheckOpSdk(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$OriginInfo;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p2, "ret"    # I

    .line 653
    const/4 v0, 0x0

    .line 655
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    :try_start_0
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    .line 656
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 655
    invoke-static {p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 659
    goto :goto_0

    .line 657
    :catch_0
    move-exception v1

    .line 658
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while getMinimalPackageInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkgLite.oplibDependencyStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/PackageInfoLite;->oplibDependencyStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v1, v0, Landroid/content/pm/PackageInfoLite;->oplibDependencyStr:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 664
    iget-object v1, v0, Landroid/content/pm/PackageInfoLite;->oplibDependencyStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isRequiredOpApiCompatibleWithRom(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    const/16 p2, -0xc

    .line 667
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to install, required OnePlus SDK : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/PackageInfoLite;->oplibDependencyStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    nop

    .line 670
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x50f0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 669
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 673
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 676
    .end local v1    # "toast":Landroid/widget/Toast;
    :cond_0
    return p2
.end method

.method public static doCopyApkTheme(Lcom/android/server/pm/PackageManagerService$OriginInfo;I)I
    .locals 5
    .param p0, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p1, "ret"    # I

    .line 610
    new-instance v0, Lcom/android/server/pm/PmInjector$2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PmInjector$2;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;)V

    .line 636
    .local v0, "themesTarget":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/pm/PmInjector;->copyPackageThemes(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v1

    .line 643
    goto :goto_0

    .line 638
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    .line 642
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    .line 641
    const-string v4, "Exception happened while copying themes from APK: "

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 646
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy package themes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    return p1
.end method

.method public static doSendOemBroadcast(Landroid/content/Intent;Landroid/app/IActivityManager;Landroid/content/IIntentReceiver;[Ljava/lang/String;IZ)V
    .locals 18
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "am"    # Landroid/app/IActivityManager;
    .param p2, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p3, "requiredPermissions"    # [Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "dumpLog"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    move-object/from16 v14, p0

    const/4 v15, 0x1

    new-array v0, v15, [I

    const/4 v13, 0x0

    aput v13, v0, v13

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/pm/PmInjector;->sActivityManagerReady:Z

    if-eqz v0, :cond_3

    .line 349
    if-eqz v14, :cond_3

    .line 350
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    sget-object v0, Lcom/android/server/pm/PmInjector;->mOemPkgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_2

    .line 351
    sget-object v0, Lcom/android/server/pm/PmInjector;->mOemPkgList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    if-eqz p5, :cond_0

    .line 353
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 355
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p4

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v14, v13, v15, v13, v13}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 352
    .end local v0    # "here":Ljava/lang/RuntimeException;
    :cond_0
    move/from16 v11, p4

    .line 359
    :goto_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz p2, :cond_1

    move/from16 v16, v15

    goto :goto_2

    :cond_1
    move/from16 v16, v13

    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v8, p3

    move/from16 v11, v16

    move/from16 v16, v12

    .end local v12    # "i":I
    .local v16, "i":I
    move/from16 v12, v17

    move/from16 v17, v13

    move/from16 v13, p4

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 350
    add-int/lit8 v12, v16, 0x1

    move/from16 v13, v17

    .end local v16    # "i":I
    .restart local v12    # "i":I
    goto :goto_0

    :cond_2
    move/from16 v16, v12

    .line 365
    .end local v12    # "i":I
    :cond_3
    return-void
.end method

.method public static filterIfParallel(ILjava/util/List;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/pm/ComponentResolver;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .locals 8
    .param p0, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "mComponentResolver"    # Lcom/android/server/pm/ComponentResolver;
    .param p6, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p7, "mPm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/ComponentResolver;",
            "Landroid/content/pm/PackageParser$Package;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 245
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x25

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/PmInjector;->ACTION_LIST:Ljava/util/List;

    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 249
    iget-object v6, p6, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p7, v0, v1}, Lcom/android/server/pm/PackageManagerService;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    return-object p1
.end method

.method public static genOemAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "action"    # Ljava/lang/String;

    .line 307
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 308
    .local v0, "isPackageAdded":Z
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 309
    .local v1, "isPackageRemoved":Z
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 310
    .local v2, "isPackageReplaced":Z
    if-eqz v0, :cond_0

    .line 311
    const-string/jumbo v3, "oneplus.intent.action.OEM_PACKAGE_ADDED"

    return-object v3

    .line 312
    :cond_0
    if-eqz v1, :cond_1

    .line 313
    const-string/jumbo v3, "oneplus.intent.action.OEM_PACKAGE_REMOVED"

    return-object v3

    .line 314
    :cond_1
    if-eqz v2, :cond_2

    .line 316
    const-string/jumbo v3, "oneplus.intent.action.OEM_PACKAGE_REPLACED"

    return-object v3

    .line 318
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public static generatePackageInfoParallel(IILandroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p0, "flags"    # I
    .param p1, "userId"    # I
    .param p2, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mPm"    # Lcom/android/server/pm/PackageManagerService;

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x25

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p4, v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 160
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    invoke-static {p1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 161
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generatePackageInfo of ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] for parallel user("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p4, v2, p0, v1}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1

    .line 165
    :cond_0
    return-object v0

    .line 167
    .end local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p4, v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityInfoInternalusers(Landroid/content/pm/PackageParser$Activity;IILcom/android/server/pm/Settings;)I
    .locals 3
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .param p3, "mSettings"    # Lcom/android/server/pm/Settings;

    .line 173
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x25

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p2}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    return v1

    .line 180
    :cond_0
    return p2
.end method

.method public static getApplicationInfoInternalUsers(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/PackageSetting;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x25

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    nop

    .line 140
    invoke-virtual {p2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 139
    invoke-static {p0, p1, v0, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 141
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {p3}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 142
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateApplicationInfo of ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] for parallel user("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    nop

    .line 145
    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    .line 144
    invoke-static {p0, p1, v2, v1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1

    .line 148
    :cond_0
    return-object v0

    .line 150
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    nop

    .line 151
    invoke-virtual {p2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 150
    invoke-static {p0, p1, v0, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceInfoParallel(Landroid/content/ComponentName;Landroid/content/pm/PackageParser$Service;IILcom/android/server/pm/Settings;IILcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ServiceInfo;
    .locals 12
    .param p0, "component"    # Landroid/content/ComponentName;
    .param p1, "s"    # Landroid/content/pm/PackageParser$Service;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "mSettings"    # Lcom/android/server/pm/Settings;
    .param p5, "callingUid"    # I
    .param p6, "typeService"    # I
    .param p7, "mPm"    # Lcom/android/server/pm/PackageManagerService;

    .line 187
    move-object v0, p1

    move v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x25

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 188
    invoke-static {p2}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 189
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2, v3, p3, v4}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    iget-object v3, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 192
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_0

    .line 193
    return-object v5

    .line 195
    :cond_0
    const/4 v11, 0x0

    move-object/from16 v6, p7

    move-object v7, v3

    move/from16 v8, p5

    move-object v9, p0

    move/from16 v10, p6

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->filterAppAccessLPr(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 197
    return-object v5

    .line 199
    :cond_1
    sget-object v5, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateServiceInfo of ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "] for parallel user("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    nop

    .line 202
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v5

    .line 201
    invoke-static {p1, p3, v5, v4}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    return-object v4

    .line 189
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    move-object v7, p0

    move v8, p2

    goto :goto_0

    .line 188
    :cond_3
    move-object v7, p0

    move v8, p2

    goto :goto_0

    .line 187
    :cond_4
    move-object v7, p0

    move v8, p2

    .line 206
    :goto_0
    return-object v5
.end method

.method public static informActivityManagerReady()V
    .locals 2

    .line 324
    sget-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v1, "Update sActivityManagerReady to true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/PmInjector;->sActivityManagerReady:Z

    .line 326
    return-void
.end method

.method private static isInSystemAppList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 692
    sget-object v0, Lcom/android/server/pm/PmInjector;->sSystemAppList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 693
    new-array v0, v1, [I

    aput v2, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    .line 695
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x5020027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 694
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PmInjector;->sSystemAppList:Ljava/util/ArrayList;

    goto :goto_0

    .line 698
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 699
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x5020028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 698
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PmInjector;->sSystemAppList:Ljava/util/ArrayList;

    .line 703
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/pm/PmInjector;->sSystemAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private static isOemDeviceIdleWhitelist(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 396
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 397
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/power/IOpPowerController$Stub;

    .line 399
    .local v0, "opPowerController":Lcom/oneplus/android/power/IOpPowerController$Stub;
    if-eqz v0, :cond_0

    .line 401
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->isOemDeviceIdleWhitelist(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v3, "Could not judge if it is in OemDeviceIdleWhitelist"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 406
    :cond_0
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v2, "OpPowerController doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isPkgNeedToBeHandleThemeAndOpSdk(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$OriginInfo;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 681
    const/4 v0, 0x0

    .line 683
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    .line 684
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 683
    invoke-static {p0, v2, v1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 687
    goto :goto_0

    .line 685
    :catch_0
    move-exception v2

    .line 686
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while getMinimalPackageInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/server/pm/PmInjector;->isInSystemAppList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static makeSessionActiveLockedUsers(ILjava/lang/String;I)Landroid/os/UserHandle;
    .locals 4
    .param p0, "userId"    # I
    .param p1, "mInstallerPackageName"    # Ljava/lang/String;
    .param p2, "mInstallerUid"    # I

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x25

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const-string v0, "com.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const-string v0, "com.google.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v2, 0x3e7

    if-ne v0, v2, :cond_1

    if-ne p0, v2, :cond_1

    .line 127
    sget-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change the user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "to user 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0

    .line 130
    :cond_1
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public static managedIcon(Landroid/content/pm/PackageManagerInternal;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageParser$ActivityIntentInfo;I)V
    .locals 4
    .param p0, "sPackageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p1, "res"    # Landroid/content/pm/ResolveInfo;
    .param p2, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p3, "userId"    # I

    .line 369
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x25

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    const/16 v1, 0x3e7

    if-eq p3, v1, :cond_0

    .line 371
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManagerInternal;->userNeedsBadging(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    iput-boolean v0, p1, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_0

    .line 374
    :cond_0
    iget v0, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManagerInternal;->userNeedsBadging(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    iput-boolean v0, p1, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_0

    .line 380
    :cond_2
    iget v0, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 383
    :goto_0
    return-void
.end method

.method public static maybeReplaceResultsWithParallelResults(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;IILcom/android/server/pm/ComponentResolver;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "mComponentResolver"    # Lcom/android/server/pm/ComponentResolver;
    .param p6, "mPm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/server/pm/ComponentResolver;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 217
    .local p0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x25

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    invoke-static {p4}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/pm/PmInjector;->ACTION_LIST:Ljava/util/List;

    .line 219
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    move-object v1, p0

    .line 222
    .local v1, "parallelResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p5, p1, p2, p3, v2}, Lcom/android/server/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p6, v3, v2}, Lcom/android/server/pm/PackageManagerService;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    .line 224
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 225
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 226
    .local v3, "parallelAi":Landroid/content/pm/ActivityInfo;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_1

    .line 227
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 228
    .local v5, "ownerAi":Landroid/content/pm/ActivityInfo;
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne v6, v7, :cond_0

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-ne v6, v7, :cond_0

    .line 230
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-interface {p0, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 231
    goto :goto_2

    .line 226
    .end local v5    # "ownerAi":Landroid/content/pm/ActivityInfo;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 224
    .end local v3    # "parallelAi":Landroid/content/pm/ActivityInfo;
    .end local v4    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 236
    .end local v1    # "parallelResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "i":I
    :cond_2
    return-object p0
.end method

.method public static prepareOemBroadcast(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "action"    # Ljava/lang/String;

    .line 330
    if-nez p1, :cond_0

    .line 331
    const/4 v0, 0x0

    return-object v0

    .line 334
    :cond_0
    const/4 v0, 0x0

    .line 336
    .local v0, "oemIntent":Landroid/content/Intent;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v1

    .line 340
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    :cond_1
    return-object v0
.end method

.method public static pruneNonSystemMarketApp(Lcom/android/server/pm/PackageManagerService$PmsInner;Landroid/util/ArrayMap;Lcom/android/server/pm/Settings;)V
    .locals 11
    .param p0, "pmsInner"    # Lcom/android/server/pm/PackageManagerService$PmsInner;
    .param p2, "settings"    # Lcom/android/server/pm/Settings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$PmsInner;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/Settings;",
            ")V"
        }
    .end annotation

    .line 517
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "foundNonSystemMarketApp":Z
    const-string v1, "com.oppo.market"

    .line 520
    .local v1, "prevMarket":Ljava/lang/String;
    const-string v2, "com.heytap.market"

    .line 521
    .local v2, "curMarket":Ljava/lang/String;
    monitor-enter p1

    .line 522
    :try_start_0
    iget-object v3, p2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string v4, "com.oppo.market"

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 523
    .local v3, "prevPs":Lcom/android/server/pm/PackageSetting;
    iget-object v4, p2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string v5, "com.heytap.market"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 524
    .local v4, "curPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 525
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 526
    const/4 v0, 0x1

    .line 528
    .end local v3    # "prevPs":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "curPs":Lcom/android/server/pm/PackageSetting;
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    if-eqz v0, :cond_1

    .line 531
    sget-object v3, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v4, "Delete previous market app com.oppo.market"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    const-string v6, "com.oppo.market"

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService$PmsInner;->deletePackageX(Ljava/lang/String;JII)V

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 536
    .end local v0    # "foundNonSystemMarketApp":Z
    .end local v1    # "prevMarket":Ljava/lang/String;
    .end local v2    # "curMarket":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public static purgeInstalledThemeApks(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 708
    invoke-static {p0, p1}, Lcom/android/server/pm/PmInjector;->isInSystemAppList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    return-void

    .line 711
    :cond_0
    nop

    .line 712
    const-string/jumbo v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 711
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    .line 714
    .local v0, "om":Landroid/content/om/IOverlayManager;
    if-nez v0, :cond_1

    .line 715
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v2, "OverlayManager is not ready yet, retry later"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v2, Lcom/android/server/pm/PmInjector$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/pm/PmInjector$3;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 721
    return-void

    .line 725
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 727
    .local v1, "overlayInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    sget-boolean v2, Lcom/android/server/pm/PmInjector;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    .line 728
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "all overlayInfos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    .line 731
    .local v3, "overlayInfo":Landroid/content/om/OverlayInfo;
    sget-object v4, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "overlay info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", theme pkg name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", code path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 731
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v4, v3, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    const-string v5, "/data/app/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 736
    sget-object v4, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "to uninstall installed theme apk"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v6, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    .end local v3    # "overlayInfo":Landroid/content/om/OverlayInfo;
    :cond_3
    goto :goto_0

    .line 744
    .end local v1    # "overlayInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    :cond_4
    goto :goto_1

    .line 742
    :catch_0
    move-exception v1

    .line 743
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public static queryFakeHome(Lcom/android/server/pm/PackageManagerService$PmsInner;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 10
    .param p0, "pmsInner"    # Lcom/android/server/pm/PackageManagerService$PmsInner;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$PmsInner;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 882
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 883
    .local v0, "queryFakeHome":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 884
    .local v1, "queryRealHome":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v2, "queryWrongHome":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 886
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 887
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 890
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    .line 894
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 895
    .local v4, "intentRealHome":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 896
    invoke-virtual {p0, v4, p3, p4, p5}, Lcom/android/server/pm/PackageManagerService$PmsInner;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 901
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    .line 902
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 903
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 904
    .local v3, "QF":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 905
    .local v5, "QR":I
    const/4 v6, 0x0

    .local v6, "f":I
    :goto_0
    if-ge v6, v3, :cond_2

    .line 906
    const/4 v7, 0x0

    .local v7, "r":I
    :goto_1
    if-ge v7, v5, :cond_1

    .line 907
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 908
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 909
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    goto :goto_2

    .line 906
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 905
    .end local v7    # "r":I
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 914
    .end local v6    # "f":I
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 917
    .end local v3    # "QF":I
    .end local v4    # "intentRealHome":Landroid/content/Intent;
    .end local v5    # "QR":I
    :cond_3
    return-object v0
.end method

.method public static resetParallelAppsRuntimepermissions(Lcom/android/server/pm/PackageSetting;ILcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 5
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "userId"    # I
    .param p2, "mPm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 272
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x10

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v0, [I

    const/16 v1, 0x25

    aput v1, v0, v2

    .line 273
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    const/16 v0, 0x3e7

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_2

    .line 275
    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 276
    :cond_1
    move v0, v2

    :goto_0
    nop

    .line 278
    .local v0, "targetId":I
    :try_start_0
    invoke-virtual {p2, p0, v0}, Lcom/android/server/pm/PackageManagerService;->resetUserChangesToRuntimePermissionsAndFlagsLPw(Lcom/android/server/pm/PackageSetting;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_1

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail resetUserChangesToRuntimePermissionsAndFlagsLPw for Parallel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ;targetId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v0    # "targetId":I
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method private static setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V
    .locals 15
    .param p0, "mPm"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "settings"    # Lcom/android/server/pm/Settings;
    .param p2, "sUserManager"    # Lcom/android/server/pm/UserManagerService;
    .param p5, "state"    # I
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Settings;",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 753
    .local p3, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    .local p4, "unifyPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move/from16 v1, p6

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    return-void

    .line 757
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 758
    .local v2, "packageName":Ljava/lang/String;
    monitor-enter p3

    .line 759
    move-object/from16 v9, p1

    :try_start_0
    iget-object v3, v9, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    move-object v10, v3

    .line 760
    .local v10, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v10, :cond_1

    .line 761
    monitor-exit p3

    goto :goto_0

    .line 763
    :cond_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    .line 767
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    move-object v11, v3

    .local v3, "users":[I
    goto :goto_1

    .line 769
    .end local v3    # "users":[I
    :cond_2
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v1, v3, v4

    move-object v11, v3

    .line 772
    .local v11, "users":[I
    :goto_1
    array-length v12, v11

    move v13, v4

    :goto_2
    if-ge v13, v12, :cond_3

    aget v14, v11, v13

    .line 773
    .local v14, "user":I
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v2

    move/from16 v5, p5

    move v7, v14

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 772
    .end local v14    # "user":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 775
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v11    # "users":[I
    :cond_3
    goto :goto_0

    .line 763
    .end local v10    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 776
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_4
    move-object/from16 v9, p1

    return-void
.end method

.method public static setUnifyAppStateForNewUser(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/Settings;Landroid/util/ArrayMap;I)V
    .locals 35
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mPm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "sUserManager"    # Lcom/android/server/pm/UserManagerService;
    .param p3, "settings"    # Lcom/android/server/pm/Settings;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/UserManagerService;",
            "Lcom/android/server/pm/Settings;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;I)V"
        }
    .end annotation

    .line 825
    .local p4, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    new-instance v4, Landroid/util/ArraySet;

    .line 826
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 828
    .local v4, "sprintPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v11, Landroid/util/ArraySet;

    .line 829
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 831
    .local v11, "tmoPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    .line 832
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v18, v0

    .line 835
    .local v18, "sprintEnableApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    nop

    .line 836
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 835
    const/4 v1, 0x0

    const-string v2, "carrier_sprint_first_boot"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    move/from16 v21, v1

    .line 839
    .local v21, "hasRunSprint":Z
    const-string/jumbo v0, "ro.boot.opcarrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sprint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 840
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    .line 841
    const/4 v12, 0x2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move/from16 v13, p5

    invoke-static/range {v7 .. v13}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    goto :goto_0

    .line 842
    :cond_1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tmo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 843
    if-nez v21, :cond_2

    .line 844
    const/16 v19, 0x2

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p2

    move-object/from16 v17, p4

    move/from16 v20, p5

    invoke-static/range {v14 .. v20}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    .line 846
    :cond_2
    const/16 v27, 0x2

    move-object/from16 v22, p1

    move-object/from16 v23, p3

    move-object/from16 v24, p2

    move-object/from16 v25, p4

    move-object/from16 v26, v4

    move/from16 v28, p5

    invoke-static/range {v22 .. v28}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    .line 847
    const/16 v33, 0x1

    move-object/from16 v28, p1

    move-object/from16 v29, p3

    move-object/from16 v30, p2

    move-object/from16 v31, p4

    move-object/from16 v32, v11

    move/from16 v34, p5

    invoke-static/range {v28 .. v34}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    .line 849
    :cond_3
    :goto_0
    return-void
.end method

.method public static setUnifyAppsState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/Settings;Landroid/util/ArrayMap;Z)V
    .locals 33
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mPm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "sUserManager"    # Lcom/android/server/pm/UserManagerService;
    .param p3, "settings"    # Lcom/android/server/pm/Settings;
    .param p5, "firstBoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/UserManagerService;",
            "Lcom/android/server/pm/Settings;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;Z)V"
        }
    .end annotation

    .line 783
    .local p4, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    new-instance v4, Landroid/util/ArraySet;

    .line 784
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 786
    .local v4, "sprintPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v11, Landroid/util/ArraySet;

    .line 787
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 789
    .local v11, "tmoPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    .line 790
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v18, v0

    .line 793
    .local v18, "sprintEnableApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v0, "ro.boot.opcarrier"

    const-string/jumbo v1, "tmo"

    if-eqz p5, :cond_0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    const/16 v19, 0x2

    const/16 v20, -0x1

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p2

    move-object/from16 v17, p4

    invoke-static/range {v14 .. v20}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    .line 798
    :cond_0
    nop

    .line 799
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 798
    const/4 v3, 0x0

    const-string v5, "carrier_sprint_first_boot"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    move v3, v6

    :cond_1
    move v14, v3

    .line 801
    .local v14, "hasRunSprint":Z
    nop

    .line 802
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 801
    const-string v3, "carrier_pre_load"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 804
    .local v15, "preLoadCarrier":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sprint"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 805
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 806
    if-nez v14, :cond_2

    .line 807
    const/16 v24, 0x1

    const/16 v25, -0x1

    move-object/from16 v19, p1

    move-object/from16 v20, p3

    move-object/from16 v21, p2

    move-object/from16 v22, p4

    move-object/from16 v23, v18

    invoke-static/range {v19 .. v25}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    .line 808
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 811
    :cond_2
    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    .line 812
    const/4 v12, 0x2

    const/4 v13, -0x1

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    invoke-static/range {v7 .. v13}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    goto :goto_0

    .line 813
    :cond_3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 814
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 815
    const/16 v24, 0x2

    const/16 v25, -0x1

    move-object/from16 v19, p1

    move-object/from16 v20, p3

    move-object/from16 v21, p2

    move-object/from16 v22, p4

    move-object/from16 v23, v4

    invoke-static/range {v19 .. v25}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    .line 816
    const/16 v31, 0x1

    const/16 v32, -0x1

    move-object/from16 v26, p1

    move-object/from16 v27, p3

    move-object/from16 v28, p2

    move-object/from16 v29, p4

    move-object/from16 v30, v11

    invoke-static/range {v26 .. v32}, Lcom/android/server/pm/PmInjector;->setAppsState(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;Landroid/util/ArraySet;II)V

    .line 818
    :cond_4
    :goto_0
    return-void
.end method

.method public static setUnifyPAIAppState(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mPm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 855
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xd8

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 857
    :try_start_0
    const-string/jumbo v0, "ro.boot.opcarrier"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "carrier":Ljava/lang/String;
    const-string/jumbo v1, "sprint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    new-instance v1, Ljava/util/ArrayList;

    .line 860
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 859
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 861
    .local v1, "tmoPaiPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    .line 864
    .end local v1    # "tmoPaiPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v1, "tmo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 865
    new-instance v1, Ljava/util/ArrayList;

    .line 866
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107009d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 865
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 867
    .local v1, "sprintPaiPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 868
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 864
    .end local v1    # "sprintPaiPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    nop

    .line 873
    .end local v0    # "carrier":Ljava/lang/String;
    :cond_2
    :goto_1
    goto :goto_2

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException, Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :goto_2
    return-void
.end method

.method public static updateUserId()I
    .locals 3

    .line 288
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x25

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    :try_start_0
    const-string/jumbo v0, "user"

    .line 291
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    .line 294
    .local v0, "mUm":Landroid/os/IUserManager;
    const/16 v1, 0x3e7

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isUserRunning(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const-string v1, "PackageManagerShellCommand"

    const-string v2, "Update UserId to (-2)"

    invoke-static {v1, v2}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    const/4 v1, -0x2

    return v1

    .line 301
    .end local v0    # "mUm":Landroid/os/IUserManager;
    :cond_0
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v2, "fail updateUserId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method
