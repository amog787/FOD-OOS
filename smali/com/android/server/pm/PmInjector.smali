.class public Lcom/android/server/pm/PmInjector;
.super Ljava/lang/Object;
.source "PmInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final MIN_TOAST_DELAY_TIME:I = 0xfa0

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

.field private static lastShowTime:J

.field private static final mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mOemPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
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

    .line 94
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/pm/PmInjector;->DEBUG_ONEPLUS:Z

    .line 95
    const-class v0, Lcom/android/server/pm/PmInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PmInjector;->sSystemAppList:Ljava/util/ArrayList;

    .line 99
    const-string v0, "com.heytap.market"

    const-string v1, "com.heytap.quicksearchbox"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PmInjector;->mOemPkgList:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PmInjector;->map:Ljava/util/Map;

    .line 110
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

    sput-object v0, Lcom/android/server/pm/PmInjector;->mActionList:Ljava/util/List;

    .line 130
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/pm/PmInjector;->lastShowTime:J

    .line 403
    const-string v2, "com.google.android.configupdater"

    const-string v3, "com.google.android.backuptransport"

    const-string v4, "com.google.android.onetimeinitializer"

    const-string v5, "com.google.android.partnersetup"

    const-string v6, "com.google.android.gsf"

    const-string v7, "com.google.android.gms"

    const-string v8, "com.google.android.gms.policy_sidecar_aps"

    const-string v9, "com.google.android.ext.shared"

    const-string v10, "com.google.android.printservice.recommendation"

    const-string v11, "com.android.vending"

    const-string v12, "com.google.ar.core"

    const-string v13, "com.google.android.marvin.talkback"

    const-string v14, "com.google.android.apps.wellbeing"

    const-string v15, "com.google.android.syncadapters.contacts"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PmInjector;->RESTRICTED_PACKAGES_FOR_CTA_NETWORK:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 93
    sget-object v0, Lcom/android/server/pm/PmInjector;->RESTRICTED_PACKAGES_FOR_CTA_NETWORK:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static addDependencyPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageDependencyNames"    # Ljava/lang/String;

    .line 731
    sget-object v0, Lcom/android/server/pm/PmInjector;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/pm/PmInjector;->map:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    .end local v0    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    sget-object v0, Lcom/android/server/pm/PmInjector;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    return-void
.end method

.method private static addDozeWhitelist(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 648
    nop

    .line 649
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 648
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 650
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_1

    .line 652
    :try_start_0
    sget-boolean v1, Lcom/android/server/pm/PmInjector;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 653
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDozeWhiteList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    invoke-interface {v0, p0}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 656
    :catch_0
    move-exception v1

    .line 657
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v3, "Falied to add package to doze whitelist"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 660
    :cond_1
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get DeviceIdleController"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_1
    return-void
.end method

.method public static checkOemDeviceIdleWhitelist(Ljava/lang/String;)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 622
    invoke-static {p0}, Lcom/android/server/pm/PmInjector;->isOemDeviceIdleWhitelist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    invoke-static {p0}, Lcom/android/server/pm/PmInjector;->addDozeWhitelist(Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/PmInjector;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 626
    sget-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not in doze whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_1
    :goto_0
    return-void
.end method

.method public static computePackageCacheName(Z)Ljava/lang/String;
    .locals 14
    .param p0, "forcePackageParsedCacheEnabled"    # Z

    .line 451
    const-string/jumbo v0, "ro.build.fingerprint"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "fingerprint":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.isolated_storage"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "isolatedStorage":Ljava/lang/String;
    const-string/jumbo v4, "sys.isolated_storage_snapshot"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, "snapshot":Ljava/lang/String;
    const-string/jumbo v6, "ro.build.alpha"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 455
    .local v6, "alphaBuild":Ljava/lang/String;
    const-string/jumbo v7, "ro.build.version.ota"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 456
    .local v8, "otaVersion":Ljava/lang/String;
    const-string/jumbo v9, "persist.sys.version.ota"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 457
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

    .line 465
    const-string v11, "1"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "debug"

    if-eqz v11, :cond_1

    .line 468
    if-eqz p0, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    filled-new-array {v0, v2, v4, v7, v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->digestOf([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_0
    move-object v0, v12

    .local v0, "cacheName":Ljava/lang/String;
    goto :goto_2

    .line 478
    .end local v0    # "cacheName":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_2

    goto :goto_1

    .line 479
    :cond_2
    filled-new-array {v0, v2, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->digestOf([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_1
    move-object v0, v12

    .line 485
    .restart local v0    # "cacheName":Ljava/lang/String;
    :goto_2
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Computed package cache name is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-object v0
.end method

.method public static controlGooglePackagesForCta(Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "firstBoot"    # Z

    .line 423
    if-eqz p2, :cond_0

    .line 424
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

    .line 425
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    .line 427
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 431
    :cond_0
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 432
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/pm/PmInjector$1;

    invoke-direct {v3, p1, p0}, Lcom/android/server/pm/PmInjector$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 446
    return-void
.end method

.method public static copyPackageThemes(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I
    .locals 5
    .param p0, "packagePath"    # Ljava/lang/String;
    .param p1, "target"    # Lcom/android/internal/os/IParcelFileDescriptorFactory;

    .line 510
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    const/4 v0, 0x0

    .line 516
    .local v0, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    .local v1, "packageFile":Ljava/io/File;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v2

    move-object v0, v2

    .line 518
    invoke-static {v0, p1}, Lcom/android/server/pm/PmInjector;->copyPackageThemesInner(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 519
    .end local v1    # "packageFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 520
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

    .line 522
    const/4 v2, -0x4

    return v2

    .line 511
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

    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 531
    .local v1, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/4 v2, 0x0

    .line 532
    .local v2, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v3, 0x0

    .line 533
    .local v3, "out":Ljava/io/OutputStream;
    const-string v4, ""

    .line 536
    .local v4, "sourcePath":Ljava/lang/String;
    const/16 v5, -0x11

    :try_start_0
    iget-object v6, p0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    move-object v4, v6

    .line 537
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 538
    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v6

    .line 541
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    move-object v2, v6

    if-eqz v6, :cond_1

    .line 542
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 543
    .local v6, "zipEntryName":Ljava/lang/String;
    const-string/jumbo v7, "themes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "oneplus"

    .line 544
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 545
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v7, :cond_0

    .line 547
    :try_start_1
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 548
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->toString()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x30000000

    invoke-interface {p1, v8, v9}, Lcom/android/internal/os/IParcelFileDescriptorFactory;->open(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v3, v7

    .line 550
    invoke-static {v1, v3}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :goto_1
    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 556
    goto :goto_3

    .line 555
    :catchall_0
    move-exception v7

    goto :goto_2

    .line 551
    :catch_0
    move-exception v7

    .line 552
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 553
    sget-object v8, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 555
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 556
    nop

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

    .line 558
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

    .line 572
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 573
    nop

    .line 575
    const/4 v5, 0x1

    return v5

    .line 572
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 567
    :catch_1
    move-exception v6

    .line 568
    .local v6, "e":Ljava/lang/NullPointerException;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 569
    sget-object v7, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 570
    nop

    .line 572
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 570
    return v5

    .line 563
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v6

    .line 564
    .local v6, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 565
    sget-object v7, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 566
    nop

    .line 572
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 566
    return v5

    .line 559
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 560
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 561
    sget-object v7, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 562
    nop

    .line 572
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 562
    return v5

    .line 572
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :goto_4
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 573
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

    .line 272
    move/from16 v0, p5

    move-object/from16 v1, p7

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x1a

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    const/16 v3, 0x3e7

    move-object/from16 v4, p6

    invoke-virtual {v4, v3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne v0, v2, :cond_1

    if-nez p3, :cond_1

    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    const/16 v9, 0x3e7

    move-object/from16 v5, p9

    move-object/from16 v6, p8

    move-wide v7, p1

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v2

    return v2

    .line 272
    :cond_0
    move-object/from16 v4, p6

    .line 280
    :cond_1
    return v0
.end method

.method public static doCopyApkTheme(Lcom/android/server/pm/PackageManagerService$OriginInfo;I)I
    .locals 5
    .param p0, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p1, "ret"    # I

    .line 580
    new-instance v0, Lcom/android/server/pm/PmInjector$2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PmInjector$2;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;)V

    .line 606
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

    .line 613
    goto :goto_0

    .line 608
    :catch_0
    move-exception v1

    .line 611
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    .line 612
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    .line 611
    const-string v4, "Exception happened while copying themes from APK: "

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 616
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy package themes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    return p1
.end method

.method public static doSendOemBroadcast(Landroid/content/Intent;Landroid/app/IActivityManager;Landroid/content/IIntentReceiver;[Ljava/lang/String;IZ)V
    .locals 19
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "am"    # Landroid/app/IActivityManager;
    .param p2, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p3, "requiredPermissions"    # [Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "dumpLog"    # Z

    .line 359
    move-object/from16 v15, p0

    const/4 v14, 0x1

    new-array v0, v14, [I

    const/4 v13, 0x0

    aput v13, v0, v13

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/pm/PmInjector;->sActivityManagerReady:Z

    if-eqz v0, :cond_3

    .line 360
    if-eqz v15, :cond_3

    .line 361
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    sget-object v0, Lcom/android/server/pm/PmInjector;->mOemPkgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_2

    .line 362
    sget-object v0, Lcom/android/server/pm/PmInjector;->mOemPkgList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    if-eqz p5, :cond_0

    .line 364
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 366
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p4

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v15, v13, v14, v13, v13}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 363
    .end local v0    # "here":Ljava/lang/RuntimeException;
    :cond_0
    move/from16 v11, p4

    .line 371
    :goto_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move/from16 v16, v14

    goto :goto_2

    :cond_1
    move/from16 v16, v13

    :goto_2
    const/16 v17, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    move-object v11, v0

    move/from16 v18, v12

    .end local v12    # "i":I
    .local v18, "i":I
    move/from16 v12, v16

    move/from16 v16, v13

    move/from16 v13, v17

    move/from16 v17, v14

    move/from16 v14, p4

    :try_start_0
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    goto :goto_3

    .line 375
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to broadcastIntent, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    add-int/lit8 v12, v18, 0x1

    move/from16 v13, v16

    move/from16 v14, v17

    .end local v18    # "i":I
    .restart local v12    # "i":I
    goto/16 :goto_0

    :cond_2
    move/from16 v18, v12

    .line 381
    .end local v12    # "i":I
    :cond_3
    return-void
.end method

.method public static filterIfParallel(ILjava/util/List;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/pm/ComponentResolver;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .locals 9
    .param p0, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "mComponentResolver"    # Lcom/android/server/pm/ComponentResolver;
    .param p6, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
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
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 258
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    invoke-static {p0}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/pm/PmInjector;->mActionList:Ljava/util/List;

    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 262
    nop

    .line 263
    invoke-interface {p6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    .line 262
    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p7

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/PackageManagerService;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 261
    :cond_0
    move-object/from16 v1, p7

    goto :goto_0

    .line 260
    :cond_1
    move-object/from16 v1, p7

    goto :goto_0

    .line 259
    :cond_2
    move-object/from16 v1, p7

    goto :goto_0

    .line 258
    :cond_3
    move-object/from16 v1, p7

    .line 265
    :goto_0
    return-object p1
.end method

.method public static genOemAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "action"    # Ljava/lang/String;

    .line 320
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 321
    .local v0, "isPackageAdded":Z
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 322
    .local v1, "isPackageRemoved":Z
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 323
    .local v2, "isPackageReplaced":Z
    if-eqz v0, :cond_0

    .line 324
    const-string/jumbo v3, "oneplus.intent.action.OEM_PACKAGE_ADDED"

    return-object v3

    .line 325
    :cond_0
    if-eqz v1, :cond_1

    .line 326
    const-string/jumbo v3, "oneplus.intent.action.OEM_PACKAGE_REMOVED"

    return-object v3

    .line 327
    :cond_1
    if-eqz v2, :cond_2

    .line 329
    const-string/jumbo v3, "oneplus.intent.action.OEM_PACKAGE_REPLACED"

    return-object v3

    .line 331
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public static generatePackageInfoParallel(IILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p0, "flags"    # I
    .param p1, "userId"    # I
    .param p2, "p"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p5, "mPm"    # Lcom/android/server/pm/PackageManagerService;

    .line 173
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p5, p4, p0, p1}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 175
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    invoke-static {p1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 176
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

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

    invoke-static {v1, v3}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p5, p4, p0, v2}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1

    .line 180
    :cond_0
    return-object v0

    .line 182
    .end local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    invoke-virtual {p5, p4, p0, p1}, Lcom/android/server/pm/PackageManagerService;->generatePackageInfo(Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityInfoInternalusers(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedActivity;IILcom/android/server/pm/Settings;)I
    .locals 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "a"    # Landroid/content/pm/parsing/component/ParsedActivity;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "mSettings"    # Lcom/android/server/pm/Settings;

    .line 188
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {p3}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    if-eqz p0, :cond_0

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    return v2

    .line 195
    :cond_0
    return p3
.end method

.method public static getApplicationInfoInternalUsers(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILcom/android/server/pm/PackageSetting;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p0, "p"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "flags"    # I
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 152
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    nop

    .line 154
    invoke-virtual {p2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 153
    invoke-static {p0, p1, v0, p3, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 155
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {p3}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 156
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

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

    invoke-static {v1, v3}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    nop

    .line 159
    invoke-virtual {p2, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 158
    invoke-static {p0, p1, v1, v2, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1

    .line 162
    :cond_0
    return-object v0

    .line 164
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    nop

    .line 165
    invoke-virtual {p2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 164
    invoke-static {p0, p1, v0, p3, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getApplicationNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 749
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 752
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 753
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    .local v1, "applicationName":Ljava/lang/String;
    goto :goto_0

    .line 754
    .end local v1    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 755
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, ""

    move-object v1, v2

    .line 757
    .local v1, "applicationName":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method public static getDependencyPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageDependencyNames"    # Ljava/lang/String;

    .line 739
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 742
    :cond_0
    sget-object v1, Lcom/android/server/pm/PmInjector;->map:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/pm/PmInjector;->map:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 743
    const/4 v0, 0x1

    return v0

    .line 745
    :cond_1
    return v0

    .line 740
    :cond_2
    :goto_0
    return v0
.end method

.method public static getServiceInfoParallel(Landroid/content/ComponentName;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedService;IILcom/android/server/pm/Settings;IILcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ServiceInfo;
    .locals 16
    .param p0, "component"    # Landroid/content/ComponentName;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "s"    # Landroid/content/pm/parsing/component/ParsedService;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "mSettings"    # Lcom/android/server/pm/Settings;
    .param p6, "callingUid"    # I
    .param p7, "TYPE_SERVICE"    # I
    .param p8, "mPm"    # Lcom/android/server/pm/PackageManagerService;

    .line 202
    move-object/from16 v6, p2

    move-object/from16 v7, p5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 203
    invoke-static/range {p3 .. p3}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    if-eqz v6, :cond_3

    move-object/from16 v8, p1

    move/from16 v9, p4

    invoke-virtual {v7, v8, v6, v9, v2}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, v7, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 207
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v5, :cond_0

    return-object v1

    .line 208
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v10, p8

    move-object v11, v5

    move/from16 v12, p6

    move-object/from16 v13, p0

    move/from16 v14, p7

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/PackageManagerService;->shouldFilterApplicationLocked(Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    return-object v1

    .line 212
    :cond_1
    sget-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateServiceInfo of ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p0

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] for parallel user("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p3

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    nop

    .line 215
    invoke-virtual {v5, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    const/4 v4, 0x0

    .line 214
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object v12, v5

    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0

    .line 204
    .end local v12    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    move-object/from16 v10, p0

    move/from16 v11, p3

    goto :goto_0

    :cond_3
    move-object/from16 v10, p0

    move-object/from16 v8, p1

    move/from16 v11, p3

    move/from16 v9, p4

    goto :goto_0

    .line 203
    :cond_4
    move-object/from16 v10, p0

    move-object/from16 v8, p1

    move/from16 v11, p3

    move/from16 v9, p4

    goto :goto_0

    .line 202
    :cond_5
    move-object/from16 v10, p0

    move-object/from16 v8, p1

    move/from16 v11, p3

    move/from16 v9, p4

    .line 219
    :goto_0
    return-object v1
.end method

.method private static getTopPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .line 702
    nop

    .line 703
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 704
    .local v0, "manager":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 706
    .local v1, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 707
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 709
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static informActivityManagerReady()V
    .locals 2

    .line 337
    sget-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v1, "Update sActivityManagerReady to true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/PmInjector;->sActivityManagerReady:Z

    .line 339
    return-void
.end method

.method private static isFastShowDialog()Z
    .locals 7

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "flag":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 790
    .local v1, "curTime":J
    sget-wide v3, Lcom/android/server/pm/PmInjector;->lastShowTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xfa0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 791
    const/4 v0, 0x1

    .line 793
    :cond_0
    sput-wide v1, Lcom/android/server/pm/PmInjector;->lastShowTime:J

    .line 794
    return v0
.end method

.method private static isOemDeviceIdleWhitelist(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 632
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 633
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/power/IOpPowerController$Stub;

    .line 635
    .local v0, "opPowerController":Lcom/oneplus/android/power/IOpPowerController$Stub;
    if-eqz v0, :cond_0

    .line 637
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->isOemDeviceIdleWhitelist(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 638
    :catch_0
    move-exception v1

    .line 639
    goto :goto_0

    .line 641
    :cond_0
    sget-object v1, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v2, "OpPowerController doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isPkgForegroundOrHaveDependency(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;)Z
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .line 686
    invoke-static {p0}, Lcom/android/server/pm/PmInjector;->getTopPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "topPackage":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 688
    invoke-static {v0, v1}, Lcom/android/server/pm/PmInjector;->getDependencyPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 690
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/server/pm/PmInjector;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 691
    .local v1, "isSystemApp":Z
    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v2, v3, v2

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    .line 693
    .local v2, "isChina":Z
    const/4 v3, 0x0

    .line 695
    .local v3, "isStopInstall":Z
    iget-object v4, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {p0, v4, v0, v3}, Lcom/android/server/pm/PmInjector;->showInstallPackageForegroundToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 696
    return v3

    .line 698
    .end local v1    # "isSystemApp":Z
    .end local v2    # "isChina":Z
    .end local v3    # "isStopInstall":Z
    :cond_1
    return v2
.end method

.method public static isPkgNeedToBeHandleThemeAndOpSdk(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$OriginInfo;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 666
    const/4 v0, 0x0

    .line 668
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    :try_start_0
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    .line 669
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 668
    invoke-static {p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 672
    goto :goto_0

    .line 670
    :catch_0
    move-exception v1

    .line 671
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

    .line 673
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    sget-object v1, Lcom/android/server/pm/PmInjector;->sSystemAppList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 674
    new-instance v1, Ljava/util/ArrayList;

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x502002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 674
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/server/pm/PmInjector;->sSystemAppList:Ljava/util/ArrayList;

    .line 679
    :cond_0
    sget-object v1, Lcom/android/server/pm/PmInjector;->sSystemAppList:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "appName"    # Ljava/lang/String;

    .line 714
    const/4 v0, 0x0

    .line 715
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 717
    .local v1, "isSystem":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 720
    goto :goto_0

    .line 718
    :catch_0
    move-exception v2

    .line 719
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 721
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v0, :cond_0

    .line 722
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 723
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 724
    const/4 v1, 0x1

    .line 727
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return v1
.end method

.method public static makeSessionActiveLockedUsers(ILjava/lang/String;I)Landroid/os/UserHandle;
    .locals 4
    .param p0, "userId"    # I
    .param p1, "mInstallerPackageName"    # Ljava/lang/String;
    .param p2, "mInstallerUid"    # I

    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "com.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-string v0, "com.google.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_1

    if-ne p0, v1, :cond_1

    .line 141
    sget-object v0, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change the user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "to user 0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0

    .line 144
    :cond_1
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public static managedIcon(Landroid/content/pm/PackageManagerInternal;Landroid/content/pm/ResolveInfo;Landroid/content/pm/parsing/component/ParsedIntentInfo;I)V
    .locals 4
    .param p0, "sPackageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p1, "res"    # Landroid/content/pm/ResolveInfo;
    .param p2, "info"    # Landroid/content/pm/parsing/component/ParsedIntentInfo;
    .param p3, "userId"    # I

    .line 385
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x1a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    const/16 v1, 0x3e7

    if-eq p3, v1, :cond_0

    .line 387
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManagerInternal;->userNeedsBadging(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    iput-boolean v0, p1, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getIcon()I

    move-result v0

    iput v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_0

    .line 393
    :cond_1
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManagerInternal;->userNeedsBadging(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    iput-boolean v0, p1, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {p2}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getIcon()I

    move-result v0

    iput v0, p1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 399
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

    .line 230
    .local p0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    invoke-static {p4}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/pm/PmInjector;->mActionList:Ljava/util/List;

    .line 232
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    move-object v1, p0

    .line 235
    .local v1, "parallelResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p5, p1, p2, p3, v3}, Lcom/android/server/pm/ComponentResolver;->queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p6, v2, v3}, Lcom/android/server/pm/PackageManagerService;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    .line 237
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 238
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 239
    .local v3, "parallelAi":Landroid/content/pm/ActivityInfo;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_1

    .line 240
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 241
    .local v5, "ownerAi":Landroid/content/pm/ActivityInfo;
    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne v6, v7, :cond_0

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-ne v6, v7, :cond_0

    .line 243
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-interface {p0, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 244
    goto :goto_2

    .line 239
    .end local v5    # "ownerAi":Landroid/content/pm/ActivityInfo;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 237
    .end local v3    # "parallelAi":Landroid/content/pm/ActivityInfo;
    .end local v4    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 249
    .end local v1    # "parallelResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "i":I
    :cond_2
    return-object p0
.end method

.method public static prepareOemBroadcast(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "action"    # Ljava/lang/String;

    .line 343
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 345
    :cond_0
    const/4 v0, 0x0

    .line 347
    .local v0, "oemIntent":Landroid/content/Intent;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v1

    .line 351
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    :cond_1
    return-object v0
.end method

.method public static pruneNonSystemMarketApp(Lcom/android/server/pm/PackageManagerService$PmsInner;Lcom/android/server/pm/Settings;)V
    .locals 13
    .param p0, "pmsInner"    # Lcom/android/server/pm/PackageManagerService$PmsInner;
    .param p1, "settings"    # Lcom/android/server/pm/Settings;

    .line 492
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PmsInner;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 494
    :try_start_0
    const-string v1, "com.oppo.market"

    .line 495
    .local v1, "prevMarket":Ljava/lang/String;
    const-string v2, "com.heytap.market"

    .line 496
    .local v2, "curMarket":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string v4, "com.oppo.market"

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 497
    .local v3, "prevPs":Lcom/android/server/pm/PackageSetting;
    iget-object v4, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string v5, "com.heytap.market"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 498
    .local v4, "curPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 499
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 500
    sget-object v5, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    const-string v6, "Delete previous market app com.oppo.market"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v8, "com.oppo.market"

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/pm/PackageManagerService$PmsInner;->deletePackageX(Ljava/lang/String;JII)V

    .line 504
    .end local v1    # "prevMarket":Ljava/lang/String;
    .end local v2    # "curMarket":Ljava/lang/String;
    .end local v3    # "prevPs":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "curPs":Lcom/android/server/pm/PackageSetting;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 506
    :cond_1
    :goto_0
    return-void
.end method

.method public static resetParallelAppsRuntimepermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;)V
    .locals 5
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "userId"    # I
    .param p2, "mPermissionManager"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 286
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xb

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v0, [I

    const/16 v1, 0x1a

    aput v1, v0, v3

    .line 287
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    const/16 v0, 0x3e7

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_2

    .line 289
    :cond_0
    if-nez p1, :cond_1

    move v3, v0

    goto :goto_0

    .line 290
    :cond_1
    nop

    :goto_0
    move v0, v3

    .line 292
    .local v0, "targetId":I
    :try_start_0
    invoke-virtual {p2, p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->resetRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    goto :goto_1

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/pm/PmInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail resetRuntimePermissionsInternal for Parallel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ;targetId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .end local v0    # "targetId":I
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method private static showInstallPackageForegroundToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "installPackage"    # Ljava/lang/String;
    .param p2, "topPackage"    # Ljava/lang/String;
    .param p3, "isStopInstall"    # Z

    .line 762
    invoke-static {}, Lcom/android/server/pm/PmInjector;->isFastShowDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    invoke-static {p0, p1}, Lcom/android/server/pm/PmInjector;->getApplicationNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "installAppName":Ljava/lang/String;
    invoke-static {p0, p2}, Lcom/android/server/pm/PmInjector;->getApplicationNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "topAppName":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 766
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x50f00f5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, "message":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/server/pm/PmInjector;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 769
    .end local v2    # "message":Ljava/lang/String;
    goto :goto_0

    .line 770
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x50f005e

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v1, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 772
    .restart local v2    # "message":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/server/pm/PmInjector;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 775
    .end local v0    # "installAppName":Ljava/lang/String;
    .end local v1    # "topAppName":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 778
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 779
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/pm/PmInjector$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PmInjector$3;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 785
    return-void
.end method

.method public static updateUserId()I
    .locals 3

    .line 302
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :try_start_0
    const-string/jumbo v0, "user"

    .line 305
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    .line 308
    .local v0, "mUm":Landroid/os/IUserManager;
    const/16 v1, 0x3e7

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isUserRunning(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    const-string v1, "PackageManagerShellCommand"

    const-string v2, "Update UserId to (-2)"

    invoke-static {v1, v2}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    const/4 v1, -0x2

    return v1

    .line 314
    .end local v0    # "mUm":Landroid/os/IUserManager;
    :cond_0
    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 316
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method
