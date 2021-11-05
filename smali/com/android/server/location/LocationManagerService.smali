.class public Lcom/android/server/location/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationManagerService$LocalService;,
        Lcom/android/server/location/LocationManagerService$UpdateRecord;,
        Lcom/android/server/location/LocationManagerService$Receiver;,
        Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;,
        Lcom/android/server/location/LocationManagerService$LocationProviderManager;,
        Lcom/android/server/location/LocationManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTRIBUTION_TAG:Ljava/lang/String; = "LocationService"

.field public static D:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field private static final DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

.field private static final FASTEST_COARSE_INTERVAL_MS:J = 0x927c0L

.field private static final FUSED_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final LOG_SHIELD:Ljava/lang/String; = "XXX"

.field private static final MAX_CURRENT_LOCATION_AGE_MS:J = 0x2710L

.field private static final MAX_PROVIDER_SCHEDULING_JITTER_MS:I = 0x64

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"

.field public static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "*location*"


# instance fields
.field private final mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

.field private final mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

.field private mBatterySaverMode:I

.field private mComboNlpPackageName:Ljava/lang/String;

.field private mComboNlpReadyMarker:Ljava/lang/String;

.field private mComboNlpScreenMarker:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mExtraLocationControllerPackage:Ljava/lang/String;

.field private mExtraLocationControllerPackageEnabled:Z

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeofenceManager:Lcom/android/server/location/GeofenceManager;

.field private volatile mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

.field private final mHandler:Landroid/os/Handler;

.field private final mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

.field private final mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

.field private final mLock:Ljava/lang/Object;

.field private final mPassiveManager:Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/LocationManagerService$LocationProviderManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/location/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/location/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

.field private final mSettingsHelper:Lcom/android/server/location/SettingsHelper;

.field private final mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 217
    const-string v0, "LocationManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    .line 222
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/location/LocationManagerService;->DEBUG_ONEPLUS:Z

    .line 254
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    sput-object v0, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/location/UserInfoHelper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userInfoHelper"    # Lcom/android/server/location/UserInfoHelper;

    .line 299
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 285
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 288
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 290
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 293
    new-instance v1, Lcom/android/server/location/LocationRequestStatistics;

    invoke-direct {v1}, Lcom/android/server/location/LocationRequestStatistics;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    .line 300
    const-string v1, "LocationService"

    invoke-virtual {p1, v1}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 301
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 302
    new-instance v1, Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/LocationManagerService$LocalService;-><init>(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    .line 304
    const-class v2, Landroid/location/LocationManagerInternal;

    invoke-static {v2, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 306
    new-instance v1, Lcom/android/server/location/AppOpsHelper;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/location/AppOpsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    .line 307
    iput-object p2, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    .line 308
    new-instance v1, Lcom/android/server/location/SettingsHelper;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/SettingsHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    .line 309
    new-instance v1, Lcom/android/server/location/AppForegroundHelper;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/location/AppForegroundHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    .line 310
    new-instance v1, Lcom/android/server/location/LocationUsageLogger;

    invoke-direct {v1}, Lcom/android/server/location/LocationUsageLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    .line 316
    new-instance v1, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

    invoke-direct {v1, p0, v0}, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

    .line 317
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

    new-instance v1, Lcom/android/server/location/PassiveProvider;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 322
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 324
    .local v0, "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$nzVFoCdmIONeiXrvXa4GDW2BD7s;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$nzVFoCdmIONeiXrvXa4GDW2BD7s;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setLocationPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 327
    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$6OCuateQj_yVMsW-SFSfx_8hszQ;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$6OCuateQj_yVMsW-SFSfx_8hszQ;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 335
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->getInstance(Landroid/content/Context;)V

    .line 337
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/location/UserInfoHelper;Lcom/android/server/location/LocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/server/location/UserInfoHelper;
    .param p3, "x2"    # Lcom/android/server/location/LocationManagerService$1;

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/UserInfoHelper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/SettingsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/UserInfoHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$LocationProviderManager;Landroid/location/Location;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .param p2, "x2"    # Landroid/location/Location;
    .param p3, "x3"    # Landroid/location/Location;

    .line 148
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/LocationManagerService;->handleLocationChangedLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;Landroid/location/Location;Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/gnss/GnssManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$LocationProviderManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .param p2, "x2"    # Z

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->updateProviderEnabledLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/location/LocationManagerService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onSystemReady()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/LocationManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppOpsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/LocationManagerService;Lcom/android/server/location/LocationManagerService$Receiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/location/LocationManagerService$Receiver;

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/AppForegroundHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/location/LocationManagerService;)Lcom/android/server/location/LocationUsageLogger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onSystemThirdPartyAppsCanStart()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/location/LocationManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/LocationManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->onPackageDisappeared(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/LocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationManagerService;

    .line 148
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onScreenStateChanged()V

    return-void
.end method

.method private applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V
    .locals 20
    .param p1, "manager"    # Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 1638
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1639
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    new-instance v3, Lcom/android/internal/location/ProviderRequest$Builder;

    invoke-direct {v3}, Lcom/android/internal/location/ProviderRequest$Builder;-><init>()V

    .line 1643
    .local v3, "providerRequest":Lcom/android/internal/location/ProviderRequest$Builder;
    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1644
    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottleIntervalMs()J

    move-result-wide v4

    .line 1646
    .local v4, "backgroundThrottleInterval":J
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1648
    .local v6, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/LocationRequest;>;"
    iget v7, v0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v7, v8, :cond_0

    move v7, v10

    goto :goto_0

    :cond_0
    move v7, v9

    .line 1650
    .local v7, "isForegroundOnlyMode":Z
    :goto_0
    iget v8, v0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    const/4 v11, 0x4

    if-ne v8, v11, :cond_1

    iget-object v8, v0, Lcom/android/server/location/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 1653
    invoke-virtual {v8}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v10

    goto :goto_1

    :cond_1
    move v8, v9

    .line 1655
    .local v8, "shouldThrottleRequests":Z
    :goto_1
    invoke-virtual {v3, v10}, Lcom/android/internal/location/ProviderRequest$Builder;->setLowPowerMode(Z)Lcom/android/internal/location/ProviderRequest$Builder;

    .line 1660
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_d

    .line 1661
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 1663
    .local v12, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    iget-object v13, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v13, v13, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 1664
    .local v13, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v14, v0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    iget v15, v13, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v14, v15}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1665
    move/from16 v16, v11

    goto/16 :goto_6

    .line 1668
    :cond_2
    iget-object v14, v0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v14, v13}, Lcom/android/server/location/AppOpsHelper;->checkLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 1669
    move/from16 v16, v11

    goto/16 :goto_6

    .line 1671
    :cond_3
    if-nez v8, :cond_5

    if-eqz v7, :cond_4

    .line 1672
    invoke-static {v12}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$900(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_3

    :cond_4
    move v14, v9

    goto :goto_4

    :cond_5
    :goto_3
    move v14, v10

    .line 1673
    .local v14, "isBatterySaverDisablingLocation":Z
    :goto_4
    iget v15, v13, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v1, v15}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v14, :cond_7

    .line 1674
    :cond_6
    invoke-direct {v0, v12}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1675
    invoke-virtual {v3, v10}, Lcom/android/internal/location/ProviderRequest$Builder;->setLocationSettingsIgnored(Z)Lcom/android/internal/location/ProviderRequest$Builder;

    .line 1676
    invoke-virtual {v3, v9}, Lcom/android/internal/location/ProviderRequest$Builder;->setLowPowerMode(Z)Lcom/android/internal/location/ProviderRequest$Builder;

    .line 1682
    :cond_7
    invoke-static {v12}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v15

    .line 1683
    .local v15, "locationRequest":Landroid/location/LocationRequest;
    move/from16 v16, v11

    .end local v11    # "i":I
    .local v16, "i":I
    invoke-virtual {v15}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    .line 1687
    .local v10, "interval":J
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->isLocationSettingsIgnored()Z

    move-result v17

    if-nez v17, :cond_9

    iget-object v9, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {v0, v9}, Lcom/android/server/location/LocationManagerService;->isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1689
    invoke-static {v12}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$900(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1690
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 1692
    :cond_8
    invoke-virtual {v15}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v18

    cmp-long v9, v10, v18

    if-eqz v9, :cond_9

    .line 1693
    new-instance v9, Landroid/location/LocationRequest;

    invoke-direct {v9, v15}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    move-object v15, v9

    .line 1694
    invoke-virtual {v15, v10, v11}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 1698
    :cond_9
    iput-object v15, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1699
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    invoke-virtual {v15}, Landroid/location/LocationRequest;->isLowPowerMode()Z

    move-result v9

    if-nez v9, :cond_a

    .line 1701
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/internal/location/ProviderRequest$Builder;->setLowPowerMode(Z)Lcom/android/internal/location/ProviderRequest$Builder;

    goto :goto_5

    .line 1700
    :cond_a
    const/4 v9, 0x0

    .line 1703
    :goto_5
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getInterval()J

    move-result-wide v17

    cmp-long v17, v10, v17

    if-gez v17, :cond_c

    .line 1704
    invoke-virtual {v3, v10, v11}, Lcom/android/internal/location/ProviderRequest$Builder;->setInterval(J)Lcom/android/internal/location/ProviderRequest$Builder;

    goto :goto_6

    .line 1674
    .end local v10    # "interval":J
    .end local v15    # "locationRequest":Landroid/location/LocationRequest;
    .end local v16    # "i":I
    .restart local v11    # "i":I
    :cond_b
    move/from16 v16, v11

    .line 1660
    .end local v11    # "i":I
    .end local v12    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .end local v13    # "identity":Lcom/android/server/location/CallerIdentity;
    .end local v14    # "isBatterySaverDisablingLocation":Z
    .restart local v16    # "i":I
    :cond_c
    :goto_6
    add-int/lit8 v11, v16, 0x1

    const/4 v10, 0x1

    .end local v16    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_2

    :cond_d
    move/from16 v16, v11

    .line 1708
    .end local v11    # "i":I
    invoke-virtual {v3, v6}, Lcom/android/internal/location/ProviderRequest$Builder;->setLocationRequests(Ljava/util/List;)Lcom/android/internal/location/ProviderRequest$Builder;

    .line 1710
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getInterval()J

    move-result-wide v9

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v9, v9, v11

    if-gez v9, :cond_11

    .line 1717
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getInterval()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    add-long/2addr v9, v11

    const-wide/16 v11, 0x3

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x2

    div-long/2addr v9, v11

    .line 1718
    .local v9, "thresholdInterval":J
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 1719
    .restart local v12    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    iget-object v13, v0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    iget-object v14, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v14, v14, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v14, v14, Lcom/android/server/location/CallerIdentity;->uid:I

    .line 1720
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 1719
    invoke-virtual {v13, v14}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1721
    iget-object v13, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1725
    .local v13, "locationRequest":Landroid/location/LocationRequest;
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getLocationRequests()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 1726
    goto :goto_7

    .line 1729
    :cond_e
    invoke-virtual {v13}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v14

    cmp-long v14, v14, v9

    if-gtz v14, :cond_10

    .line 1730
    iget-object v14, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v14, v14, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v14, :cond_f

    iget-object v14, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v14, v14, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    .line 1731
    invoke-static {v14}, Lcom/android/server/location/LocationManagerService;->isValidWorkSource(Landroid/os/WorkSource;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1732
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v14, v15}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_8

    .line 1736
    :cond_f
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->uid:I

    iget-object v0, v12, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15, v0}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    .line 1742
    .end local v12    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .end local v13    # "locationRequest":Landroid/location/LocationRequest;
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    goto :goto_7

    .line 1746
    .end local v4    # "backgroundThrottleInterval":J
    .end local v6    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/LocationRequest;>;"
    .end local v7    # "isForegroundOnlyMode":Z
    .end local v8    # "shouldThrottleRequests":Z
    .end local v9    # "thresholdInterval":J
    :cond_11
    invoke-virtual {v3}, Lcom/android/internal/location/ProviderRequest$Builder;->build()Lcom/android/internal/location/ProviderRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRequest(Lcom/android/internal/location/ProviderRequest;)V

    .line 1747
    return-void
.end method

.method private applyRequirementsLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;

    .line 1630
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    .line 1631
    .local v0, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-eqz v0, :cond_0

    .line 1632
    invoke-direct {p0, v0}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 1634
    :cond_0
    return-void
.end method

.method private createSanitizedRequest(Landroid/location/LocationRequest;Lcom/android/server/location/CallerIdentity;Z)Landroid/location/LocationRequest;
    .locals 5
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "identity"    # Lcom/android/server/location/CallerIdentity;
    .param p3, "callerHasLocationHardwarePermission"    # Z

    .line 1967
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    .line 1968
    .local v0, "sanitizedRequest":Landroid/location/LocationRequest;
    if-nez p3, :cond_0

    .line 1970
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setLowPowerMode(Z)Landroid/location/LocationRequest;

    .line 1972
    :cond_0
    iget v1, p2, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    .line 1973
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1978
    :cond_1
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_0

    .line 1975
    :cond_2
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 1976
    nop

    .line 1982
    :goto_0
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 1983
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 1985
    :cond_3
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 1986
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 1990
    :cond_4
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 1991
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 1993
    :cond_5
    return-object v0
.end method

.method private getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .locals 3
    .param p1, "providerName"    # Ljava/lang/String;

    .line 1517
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 1518
    .local v1, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1519
    return-object v1

    .line 1521
    .end local v1    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_0
    goto :goto_0

    .line 1523
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getReceiverLocked(Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;
    .locals 10
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "identity"    # Lcom/android/server/location/CallerIdentity;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "hideFromAppOps"    # Z

    .line 1948
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 1949
    .local v0, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1950
    new-instance v9, Lcom/android/server/location/LocationManagerService$Receiver;

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/LocationManagerService$Receiver;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;ZLcom/android/server/location/LocationManagerService$1;)V

    move-object v0, v9

    .line 1952
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    :cond_0
    return-object v0
.end method

.method private getReceiverLocked(Landroid/location/ILocationListener;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;
    .locals 11
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "identity"    # Lcom/android/server/location/CallerIdentity;
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "hideFromAppOps"    # Z

    .line 1931
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1932
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 1933
    .local v1, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 1934
    new-instance v10, Lcom/android/server/location/LocationManagerService$Receiver;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/location/LocationManagerService$Receiver;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;ZLcom/android/server/location/LocationManagerService$1;)V

    move-object v1, v10

    .line 1936
    nop

    .line 1937
    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1936
    invoke-virtual {v1, v2}, Lcom/android/server/location/LocationManagerService$Receiver;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1938
    const/4 v2, 0x0

    return-object v2

    .line 1940
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    :cond_1
    return-object v1
.end method

.method private handleLocationChangedLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;Landroid/location/Location;Landroid/location/Location;)V
    .locals 16
    .param p1, "manager"    # Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .param p2, "fineLocation"    # Landroid/location/Location;
    .param p3, "coarseLocation"    # Landroid/location/Location;

    .line 2601
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "LocationManagerService"

    if-nez v2, :cond_0

    .line 2602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received location from unknown provider: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    return-void

    .line 2607
    :cond_0
    iget-object v2, v0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;

    if-eq v1, v2, :cond_1

    .line 2608
    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Lcom/android/server/location/LocationManagerService$PassiveLocationProviderManager;->updateLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 2607
    :cond_1
    move-object/from16 v4, p2

    .line 2612
    :goto_0
    sget-boolean v2, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v2, :cond_2

    const-string v2, "incoming location: XXX"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2619
    .local v2, "now":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2620
    invoke-virtual {v0, v2, v3}, Lcom/android/server/location/LocationManagerService;->mdmCheckIfLossSv(J)V

    .line 2626
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v3}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mdmSaveOnLocationChanged(Ljava/lang/String;J)Z

    .line 2629
    iget-object v5, v0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2630
    .local v5, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_6

    .line 2632
    :cond_4
    const/4 v6, 0x0

    .line 2633
    .local v6, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    const/4 v7, 0x0

    .line 2640
    .local v7, "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_12

    .line 2641
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2643
    .local v9, "r":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    iget-object v11, v9, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    .line 2644
    .local v11, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    iget-object v12, v11, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 2645
    .local v12, "identity":Lcom/android/server/location/CallerIdentity;
    const/4 v13, 0x0

    .line 2648
    .local v13, "receiverDead":Z
    iget v14, v12, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v1, v14}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-direct {v0, v9}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 2649
    goto/16 :goto_3

    .line 2652
    :cond_5
    iget-object v14, v0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    iget v15, v12, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v14, v15}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v14

    if-nez v14, :cond_6

    iget-object v14, v12, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    .line 2653
    invoke-virtual {v0, v14}, Lcom/android/server/location/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 2654
    goto/16 :goto_3

    .line 2657
    :cond_6
    iget-object v14, v0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    iget v15, v12, Lcom/android/server/location/CallerIdentity;->userId:I

    iget-object v10, v12, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15, v10}, Lcom/android/server/location/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2659
    goto/16 :goto_3

    .line 2663
    :cond_7
    iget v10, v12, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    const/4 v14, 0x1

    if-eq v10, v14, :cond_9

    const/4 v14, 0x2

    if-ne v10, v14, :cond_8

    .line 2668
    move-object/from16 v10, p2

    .line 2669
    .local v10, "location":Landroid/location/Location;
    goto :goto_2

    .line 2671
    .end local v10    # "location":Landroid/location/Location;
    :cond_8
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 2665
    :cond_9
    move-object/from16 v10, p3

    .line 2666
    .restart local v10    # "location":Landroid/location/Location;
    nop

    .line 2674
    :goto_2
    invoke-static {v9}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/Location;

    move-result-object v14

    invoke-static {v10, v14, v9, v2, v3}, Lcom/android/server/location/LocationManagerService;->shouldBroadcastSafeLocked(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/location/LocationManagerService$UpdateRecord;J)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 2675
    invoke-static {v9, v10}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3502(Lcom/android/server/location/LocationManagerService$UpdateRecord;Landroid/location/Location;)Landroid/location/Location;

    .line 2678
    iget-object v14, v0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    iget-object v15, v11, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-virtual {v14, v15}, Lcom/android/server/location/AppOpsHelper;->noteLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 2679
    goto :goto_3

    .line 2682
    :cond_a
    invoke-virtual {v11, v10}, Lcom/android/server/location/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 2683
    const/4 v13, 0x1

    .line 2685
    :cond_b
    invoke-static {v9}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v14

    invoke-virtual {v14}, Landroid/location/LocationRequest;->decrementNumUpdates()V

    .line 2689
    :cond_c
    invoke-static {v9}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v14

    invoke-virtual {v14}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v14

    if-lez v14, :cond_d

    invoke-static {v9}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)J

    move-result-wide v14

    cmp-long v14, v14, v2

    if-gez v14, :cond_f

    .line 2691
    :cond_d
    iget-object v14, v9, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-virtual {v14}, Lcom/android/server/location/LocationManagerService$Receiver;->callRemovedLocked()V

    .line 2692
    if-nez v7, :cond_e

    .line 2693
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v14

    .line 2695
    :cond_e
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2698
    :cond_f
    if-eqz v13, :cond_11

    .line 2699
    if-nez v6, :cond_10

    .line 2700
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v14

    .line 2702
    :cond_10
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 2703
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2640
    .end local v9    # "r":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .end local v10    # "location":Landroid/location/Location;
    .end local v11    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    .end local v12    # "identity":Lcom/android/server/location/CallerIdentity;
    .end local v13    # "receiverDead":Z
    :cond_11
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 2709
    .end local v8    # "i":I
    :cond_12
    if-eqz v6, :cond_13

    .line 2710
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 2711
    .local v9, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-direct {v0, v9}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    .line 2712
    .end local v9    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    goto :goto_4

    .line 2714
    :cond_13
    if-eqz v7, :cond_15

    .line 2715
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2716
    .local v9, "r":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3200(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V

    .line 2717
    .end local v9    # "r":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    goto :goto_5

    .line 2718
    :cond_14
    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 2720
    :cond_15
    return-void

    .line 2630
    .end local v6    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    .end local v7    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    :cond_16
    :goto_6
    return-void
.end method

.method private initializeGnss()V
    .locals 7

    .line 685
    invoke-static {}, Lcom/android/server/location/gnss/GnssManagerService;->isGnssSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    new-instance v0, Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/AppOpsHelper;Lcom/android/server/location/SettingsHelper;Lcom/android/server/location/AppForegroundHelper;Lcom/android/server/location/LocationUsageLogger;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 688
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->onSystemReady()V

    .line 690
    new-instance v0, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    const/4 v1, 0x0

    const-string v2, "gps"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    .line 691
    .local v0, "gnssManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 692
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssLocationProvider()Lcom/android/server/location/gnss/GnssLocationProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 697
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssManagerService;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v1

    .line 698
    .local v1, "gpsGeofenceHardware":Landroid/location/IGpsGeofenceHardware;
    if-eqz v1, :cond_0

    .line 699
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    move-result-object v2

    .line 700
    .local v2, "provider":Lcom/android/server/location/GeofenceProxy;
    if-nez v2, :cond_0

    .line 701
    const-string v3, "LocationManagerService"

    const-string/jumbo v4, "unable to bind to GeofenceProxy"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 693
    .end local v1    # "gpsGeofenceHardware":Landroid/location/IGpsGeofenceHardware;
    .end local v2    # "provider":Lcom/android/server/location/GeofenceProxy;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 708
    .end local v0    # "gnssManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/location/gnss/GnssManagerService;->isGnssSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 709
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->setGnssProvider()V

    .line 712
    :cond_1
    return-void
.end method

.method private initializeProvidersLocked()V
    .locals 24

    .line 598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.android.location.service.v3.NetworkLocationProvider"

    const v3, 0x111007a

    const v4, 0x104023e

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/location/LocationProviderProxy;->createAndRegister(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v1

    .line 603
    .local v1, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    const/4 v2, 0x0

    const-string v3, "LocationManagerService"

    if-eqz v1, :cond_0

    .line 604
    new-instance v4, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    const-string/jumbo v5, "network"

    invoke-direct {v4, v0, v5, v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    .line 605
    .local v4, "networkManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    iget-object v5, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-virtual {v4, v1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 607
    .end local v4    # "networkManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_0

    .line 608
    :cond_0
    const-string/jumbo v4, "no network location provider found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->setNetworkProvider()V

    .line 616
    :goto_0
    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x180000

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 618
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 616
    const-string v7, "Unable to find a direct boot aware fused location provider"

    invoke-static {v4, v7}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 622
    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1110073

    const v9, 0x1040225

    invoke-static {v4, v6, v7, v9}, Lcom/android/server/location/LocationProviderProxy;->createAndRegister(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v4

    .line 627
    .local v4, "fusedProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v4, :cond_1

    .line 628
    new-instance v6, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    const-string v7, "fused"

    invoke-direct {v6, v0, v7, v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    .line 629
    .local v6, "fusedManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual {v6, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 631
    .end local v6    # "fusedManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_1

    .line 632
    :cond_1
    const-string/jumbo v6, "no fused location provider found"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->setFusedProvider()V

    .line 640
    :goto_1
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/location/GeocoderProxy;->createAndRegister(Landroid/content/Context;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 641
    if-nez v6, :cond_2

    .line 642
    const-string/jumbo v6, "no geocoder provider found"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_2
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10401ea

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/location/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    .line 647
    if-eqz v6, :cond_3

    .line 648
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".nlp:ready"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/location/LocationManagerService;->mComboNlpReadyMarker:Ljava/lang/String;

    .line 649
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/android/server/location/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".nlp:screen"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/location/LocationManagerService;->mComboNlpScreenMarker:Ljava/lang/String;

    .line 653
    :cond_3
    iget-object v6, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 654
    invoke-static {v6}, Lcom/android/server/location/HardwareActivityRecognitionProxy;->createAndRegister(Landroid/content/Context;)Lcom/android/server/location/HardwareActivityRecognitionProxy;

    move-result-object v6

    .line 655
    .local v6, "hardwareActivityRecognitionProxy":Lcom/android/server/location/HardwareActivityRecognitionProxy;
    if-nez v6, :cond_4

    .line 656
    const-string/jumbo v7, "unable to bind ActivityRecognitionProxy"

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_4
    iget-object v3, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1070079

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 661
    .local v3, "testProviderStrings":[Ljava/lang/String;
    array-length v7, v3

    move v9, v8

    :goto_2
    if-ge v9, v7, :cond_6

    aget-object v10, v3, v9

    .line 662
    .local v10, "testProviderString":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 663
    .local v11, "fragments":[Ljava/lang/String;
    aget-object v12, v11, v8

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 664
    .local v12, "name":Ljava/lang/String;
    new-instance v23, Lcom/android/internal/location/ProviderProperties;

    aget-object v13, v11, v5

    .line 665
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    const/4 v13, 0x2

    aget-object v13, v11, v13

    .line 666
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    const/4 v13, 0x3

    aget-object v13, v11, v13

    .line 667
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    const/4 v13, 0x4

    aget-object v13, v11, v13

    .line 668
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    const/4 v13, 0x5

    aget-object v13, v11, v13

    .line 669
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    const/4 v13, 0x6

    aget-object v13, v11, v13

    .line 670
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    const/4 v13, 0x7

    aget-object v13, v11, v13

    .line 671
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    const/16 v13, 0x8

    aget-object v13, v11, v13

    .line 672
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v13, 0x9

    aget-object v13, v11, v13

    .line 673
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v13, v23

    invoke-direct/range {v13 .. v22}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 674
    .local v13, "properties":Lcom/android/internal/location/ProviderProperties;
    invoke-direct {v0, v12}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v14

    .line 675
    .local v14, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v14, :cond_5

    .line 676
    new-instance v15, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    invoke-direct {v15, v0, v12, v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    move-object v14, v15

    .line 677
    iget-object v15, v0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_5
    new-instance v15, Lcom/android/server/location/MockProvider;

    invoke-direct {v15, v13}, Lcom/android/server/location/MockProvider;-><init>(Lcom/android/internal/location/ProviderProperties;)V

    invoke-virtual {v14, v15}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProvider(Lcom/android/server/location/MockProvider;)V

    .line 661
    .end local v10    # "testProviderString":Ljava/lang/String;
    .end local v11    # "fragments":[Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v14    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 681
    :cond_6
    return-void
.end method

.method private isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 1791
    invoke-static {p1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1792
    const/4 v0, 0x0

    return v0

    .line 1795
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getIgnoreSettingsPackageWhitelist()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1797
    const/4 v0, 0x1

    return v0

    .line 1800
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    iget-object v1, p1, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z
    .locals 3
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 1777
    iget v0, p1, Lcom/android/server/location/CallerIdentity;->uid:I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 1778
    return v1

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1783
    return v1

    .line 1786
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    iget-object v1, p1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidWorkSource(Landroid/os/WorkSource;)Z
    .locals 4
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .line 1753
    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 1756
    invoke-virtual {p0, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1760
    :cond_1
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object v0

    .line 1761
    .local v0, "workChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1762
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1761
    :goto_1
    return v1
.end method

.method public static synthetic lambda$Cw7xwIE70-6c85ztm6T7WScKZRA(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onBackgroundThrottleIntervalChanged()V

    return-void
.end method

.method public static synthetic lambda$Jsn9f_NWM0cs884cOI1fOaFZw8M(Lcom/android/server/location/LocationManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->onLocationModeChanged(I)V

    return-void
.end method

.method public static synthetic lambda$SdJCjgY1BwQ-VOtT2s6dcqDrOkA(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->onAppOpChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$VbEiHJaYRYQKq-KAS1hQcxjIX3w(Lcom/android/server/location/LocationManagerService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->onAppForegroundChanged(IZ)V

    return-void
.end method

.method public static synthetic lambda$ZMNjuBZeNXZ1-aQV1f9Cim6fRag(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onIgnoreSettingsWhitelistChanged()V

    return-void
.end method

.method public static synthetic lambda$fqo6KrQPiessbxGobdg5DXwHuPc(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onBackgroundThrottleWhitelistChanged()V

    return-void
.end method

.method public static synthetic lambda$r1HQs34pMDdwthhOWsKVe7pybhc(Lcom/android/server/location/LocationManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->onUserChanged(II)V

    return-void
.end method

.method private onAppForegroundChanged(IZ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "foreground"    # Z

    .line 551
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 553
    .local v1, "affectedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 554
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 555
    .local v4, "provider":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 556
    .local v6, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    iget-object v7, v6, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v7, v7, Lcom/android/server/location/CallerIdentity;->uid:I

    if-ne v7, p1, :cond_0

    .line 557
    invoke-static {v6}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$900(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v7

    if-eq v7, p2, :cond_0

    .line 558
    invoke-static {v6, p2}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$1000(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V

    .line 560
    iget-object v7, v6, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {p0, v7}, Lcom/android/server/location/LocationManagerService;->isThrottlingExempt(Lcom/android/server/location/CallerIdentity;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 561
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 564
    .end local v6    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    :cond_0
    goto :goto_1

    .line 565
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;>;"
    .end local v4    # "provider":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 566
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 567
    .local v3, "provider":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 568
    .end local v3    # "provider":Ljava/lang/String;
    goto :goto_2

    .line 569
    .end local v1    # "affectedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onAppOpChanged(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 443
    .local v2, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    iget-object v3, v2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, v3, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 446
    .end local v2    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :cond_0
    goto :goto_0

    .line 448
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 449
    .local v1, "affectedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 450
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 451
    .local v4, "provider":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 452
    .local v6, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    iget-object v7, v6, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v7, v7, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 453
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 455
    .end local v6    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    :cond_2
    goto :goto_2

    .line 456
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;>;"
    .end local v4    # "provider":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 457
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 458
    .local v3, "provider":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 459
    .end local v3    # "provider":Ljava/lang/String;
    goto :goto_3

    .line 460
    .end local v1    # "affectedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    monitor-exit v0

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onBackgroundThrottleIntervalChanged()V
    .locals 3

    .line 573
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 575
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 576
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_0

    .line 577
    :cond_0
    monitor-exit v0

    .line 578
    return-void

    .line 577
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onBackgroundThrottleWhitelistChanged()V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 583
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 584
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_0

    .line 585
    :cond_0
    monitor-exit v0

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onBatterySaverModeChangedLocked(I)V
    .locals 2
    .param p1, "newLocationMode"    # I

    .line 472
    iget v0, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    if-ne v0, p1, :cond_0

    .line 473
    return-void

    .line 476
    :cond_0
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_1

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery Saver location mode changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    .line 479
    invoke-static {v1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-static {p1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_1
    iput p1, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    .line 485
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 486
    .local v1, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 487
    .end local v1    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_0

    .line 488
    :cond_2
    return-void
.end method

.method private onIgnoreSettingsWhitelistChanged()V
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 591
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 592
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_0

    .line 593
    :cond_0
    monitor-exit v0

    .line 594
    return-void

    .line 593
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onLocationModeChanged(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 501
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    .line 502
    .local v0, "enabled":Z
    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    .line 504
    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v1, :cond_0

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] location enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    const-string v2, "android.location.extra.LOCATION_ENABLED"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 510
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 511
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 512
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 514
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 515
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 516
    .local v4, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v4, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onEnabledChangedLocked(I)V

    .line 517
    .end local v4    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_0

    .line 518
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mdmReportLocSwitchData()V

    .line 522
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->getProviderFlag()I

    move-result v2

    if-eqz v2, :cond_2

    .line 523
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mdmPrReport()V

    .line 526
    :cond_2
    return-void

    .line 518
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private onPackageDisappeared(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    const/4 v1, 0x0

    .line 532
    .local v1, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 533
    .local v3, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    iget-object v4, v3, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v4, v4, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    if-nez v1, :cond_0

    .line 535
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 537
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    .end local v3    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :cond_1
    goto :goto_0

    .line 542
    :cond_2
    if-eqz v1, :cond_3

    .line 543
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 544
    .restart local v3    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    .line 545
    .end local v3    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    goto :goto_1

    .line 547
    .end local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    :cond_3
    monitor-exit v0

    .line 548
    return-void

    .line 547
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onPermissionsChangedLocked()V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 466
    .local v1, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 467
    .end local v1    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_0

    .line 468
    :cond_0
    return-void
.end method

.method private onScreenStateChanged()V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_0
    iget v1, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 494
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 495
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_0

    .line 497
    :cond_0
    monitor-exit v0

    .line 498
    return-void

    .line 497
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onSystemReady()V
    .locals 9

    .line 340
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/AppOpsHelper;->onSystemReady()V

    .line 341
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    invoke-virtual {v0}, Lcom/android/server/location/UserInfoHelper;->onSystemReady()V

    .line 342
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->onSystemReady()V

    .line 343
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    invoke-virtual {v0}, Lcom/android/server/location/AppForegroundHelper;->onSystemReady()V

    .line 345
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 347
    new-instance v1, Lcom/android/server/location/GeofenceManager;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/SettingsHelper;)V

    iput-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    .line 350
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$AZ-sFaR-D5V4QO0E44ITib-_Pl0;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$AZ-sFaR-D5V4QO0E44ITib-_Pl0;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 361
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$_lFMOHyrWj6WiqyBQsMWkc1X03E;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$_lFMOHyrWj6WiqyBQsMWkc1X03E;-><init>(Lcom/android/server/location/LocationManagerService;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 372
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getLocationPowerSaveMode()I

    move-result v1

    iput v1, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    .line 374
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$SdJCjgY1BwQ-VOtT2s6dcqDrOkA;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$SdJCjgY1BwQ-VOtT2s6dcqDrOkA;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/AppOpsHelper;->addListener(Lcom/android/server/location/AppOpsHelper$LocationAppOpListener;)V

    .line 376
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$Jsn9f_NWM0cs884cOI1fOaFZw8M;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$Jsn9f_NWM0cs884cOI1fOaFZw8M;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/SettingsHelper;->addOnLocationEnabledChangedListener(Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;)V

    .line 377
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$Cw7xwIE70-6c85ztm6T7WScKZRA;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$Cw7xwIE70-6c85ztm6T7WScKZRA;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/SettingsHelper;->addOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V

    .line 379
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$fqo6KrQPiessbxGobdg5DXwHuPc;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$fqo6KrQPiessbxGobdg5DXwHuPc;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/SettingsHelper;->addOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V

    .line 381
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$ZMNjuBZeNXZ1-aQV1f9Cim6fRag;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$ZMNjuBZeNXZ1-aQV1f9Cim6fRag;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/SettingsHelper;->addOnIgnoreSettingsPackageWhitelistChangedListener(Lcom/android/server/location/SettingsHelper$GlobalSettingChangedListener;)V

    .line 384
    new-instance v1, Lcom/android/server/location/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$1;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 392
    .local v1, "packageMonitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 394
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    new-instance v3, Lcom/android/server/location/-$$Lambda$LocationManagerService$r1HQs34pMDdwthhOWsKVe7pybhc;

    invoke-direct {v3, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$r1HQs34pMDdwthhOWsKVe7pybhc;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/UserInfoHelper;->addListener(Lcom/android/server/location/UserInfoHelper$UserListener;)V

    .line 396
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    new-instance v3, Lcom/android/server/location/-$$Lambda$LocationManagerService$VbEiHJaYRYQKq-KAS1hQcxjIX3w;

    invoke-direct {v3, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$VbEiHJaYRYQKq-KAS1hQcxjIX3w;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/AppForegroundHelper;->addListener(Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;)V

    .line 398
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 399
    .local v2, "screenIntentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/location/LocationManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/location/LocationManagerService$2;-><init>(Lcom/android/server/location/LocationManagerService;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 412
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->initInstance(Landroid/content/Context;)V

    .line 413
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->listenEmergencyCallStatus()V

    .line 418
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->getLogLevelStatusUpdates()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/location/LocationManagerService;->D:Z

    .line 423
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    invoke-virtual {v3}, Lcom/android/server/location/UserInfoHelper;->getCurrentUserIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v3, v5

    .line 424
    .local v6, "userId":I
    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/server/location/LocationManagerService;->onUserChanged(II)V

    .line 423
    .end local v6    # "userId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 426
    .end local v1    # "packageMonitor":Lcom/android/internal/content/PackageMonitor;
    .end local v2    # "screenIntentFilter":Landroid/content/IntentFilter;
    :cond_0
    monitor-exit v0

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onSystemThirdPartyAppsCanStart()V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->initializeProvidersLocked()V

    .line 433
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->initializeGnss()V

    .line 438
    return-void

    .line 433
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onUserChanged(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "change"    # I

    .line 715
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_3

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 733
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onUserStopped(I)V

    .line 734
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_0

    .line 735
    :cond_1
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 726
    .restart local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onUserStarted(I)V

    .line 727
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_1

    .line 728
    :cond_3
    monitor-exit v0

    .line 729
    goto :goto_3

    .line 728
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 717
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_2
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 719
    .restart local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v2, p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->onEnabledChangedLocked(I)V

    .line 720
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_2

    .line 721
    :cond_5
    monitor-exit v0

    .line 722
    nop

    .line 738
    :goto_3
    return-void

    .line 721
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1
.end method

.method private removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/server/location/LocationManagerService$Receiver;

    .line 2161
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :cond_1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mdmRequestTimeCount(Ljava/lang/String;J)V

    .line 2171
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2172
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/location/LocationManagerService$Receiver;->access$3300(Lcom/android/server/location/LocationManagerService$Receiver;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Receiver;->isListener()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2173
    nop

    .line 2174
    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2173
    invoke-virtual {p1, v1}, Lcom/android/server/location/LocationManagerService$Receiver;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;)V

    .line 2175
    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 2177
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2180
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2183
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2184
    .local v1, "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 2185
    .local v2, "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    if-eqz v2, :cond_4

    .line 2187
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2189
    .local v4, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    invoke-static {v4, v0}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3200(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V

    .line 2190
    .end local v4    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    goto :goto_0

    .line 2192
    :cond_3
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2196
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2197
    .local v3, "provider":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2198
    .end local v3    # "provider":Ljava/lang/String;
    goto :goto_1

    .line 2199
    :cond_5
    return-void

    .line 2177
    .end local v1    # "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;)V
    .locals 11
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "receiver"    # Lcom/android/server/location/LocationManagerService$Receiver;

    .line 2075
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2076
    :cond_0
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v6

    .line 2077
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 2081
    invoke-direct {p0, v6}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v7

    .line 2082
    .local v7, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-eqz v7, :cond_6

    .line 2086
    new-instance v8, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;Lcom/android/server/location/LocationManagerService$1;)V

    .line 2089
    .local v0, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_3

    .line 2090
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, v3, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v3, v3, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    invoke-static {v0}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$900(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "foreground"

    goto :goto_0

    :cond_2
    const-string v2, "background"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "featureId is\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v2, v2, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WS is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2090
    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :cond_3
    iget-object v1, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2099
    .local v1, "oldRecord":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2100
    invoke-static {v1, v2}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3200(Lcom/android/server/location/LocationManagerService$UpdateRecord;Z)V

    .line 2103
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2105
    .local v3, "identity":J
    :try_start_0
    iget-object v5, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2106
    .local v5, "userId":I
    invoke-virtual {v7, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2109
    invoke-static {p2, v6, v2}, Lcom/android/server/location/LocationManagerService$Receiver;->access$2400(Lcom/android/server/location/LocationManagerService$Receiver;Ljava/lang/String;Z)Z

    .line 2112
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2116
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/server/location/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2120
    iget-object v2, p2, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v2, v2, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v2, v8, v6, v9, v10}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mdmSaveRequestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2123
    .end local v5    # "userId":I
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2124
    nop

    .line 2125
    return-void

    .line 2123
    :catchall_0
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2124
    throw v2

    .line 2083
    .end local v0    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .end local v1    # "oldRecord":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .end local v3    # "identity":J
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2078
    .end local v7    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static shouldBroadcastSafeLocked(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/location/LocationManagerService$UpdateRecord;J)Z
    .locals 11
    .param p0, "loc"    # Landroid/location/Location;
    .param p1, "lastLoc"    # Landroid/location/Location;
    .param p2, "record"    # Lcom/android/server/location/LocationManagerService$UpdateRecord;
    .param p3, "now"    # J

    .line 2569
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2570
    return v0

    .line 2574
    :cond_0
    invoke-static {p2}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    .line 2575
    .local v1, "minTime":J
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2576
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 2575
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 2577
    .local v3, "deltaMs":J
    const-wide/16 v5, 0x64

    sub-long v5, v1, v5

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-gez v5, :cond_1

    .line 2578
    return v6

    .line 2582
    :cond_1
    invoke-static {p2}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v5

    float-to-double v7, v5

    .line 2583
    .local v7, "minDistance":D
    const-wide/16 v9, 0x0

    cmpl-double v5, v7, v9

    if-lez v5, :cond_2

    .line 2584
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    float-to-double v9, v5

    cmpg-double v5, v9, v7

    if-gtz v5, :cond_2

    .line 2585
    return v6

    .line 2590
    :cond_2
    invoke-static {p2}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$2500(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v5

    if-gtz v5, :cond_3

    .line 2591
    return v6

    .line 2595
    :cond_3
    invoke-static {p2}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->access$3400(Lcom/android/server/location/LocationManagerService$UpdateRecord;)J

    move-result-wide v9

    cmp-long v5, v9, p3

    if-ltz v5, :cond_4

    goto :goto_0

    :cond_4
    move v0, v6

    :goto_0
    return v0
.end method

.method private updateProviderEnabledLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;Z)V
    .locals 6
    .param p1, "manager"    # Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .param p2, "enabled"    # Z

    .line 1589
    const/4 v0, 0x0

    .line 1590
    .local v0, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$Receiver;>;"
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1591
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;"
    if-eqz v1, :cond_4

    .line 1596
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1597
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 1599
    .local v3, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    iget-object v5, v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/location/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->uid:I

    .line 1600
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1599
    invoke-virtual {v4, v5}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1601
    goto :goto_1

    .line 1605
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->isSettingsExempt(Lcom/android/server/location/LocationManagerService$UpdateRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1606
    goto :goto_1

    .line 1610
    :cond_1
    iget-object v4, v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-virtual {p1}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p2}, Lcom/android/server/location/LocationManagerService$Receiver;->access$2400(Lcom/android/server/location/LocationManagerService$Receiver;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1611
    if-nez v0, :cond_2

    .line 1612
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 1614
    :cond_2
    iget-object v4, v3, Lcom/android/server/location/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1596
    .end local v3    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1619
    .end local v2    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 1620
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_5

    .line 1621
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$Receiver;

    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    .line 1620
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1625
    .end local v2    # "i":I
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/location/LocationManagerService$LocationProviderManager;)V

    .line 1626
    return-void
.end method


# virtual methods
.method public addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/IGnssAntennaInfoListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 2428
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/IBatchedLocationCallback;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 1489
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addGnssMeasurementsListener(Landroid/location/GnssRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "request"    # Landroid/location/GnssRequest;
    .param p2, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;

    .line 2397
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssMeasurementsListener(Landroid/location/GnssRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 2442
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;

    .line 2759
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    .line 2760
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->noteMockLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2761
    return-void

    .line 2764
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2765
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v2

    .line 2766
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v2, :cond_1

    .line 2767
    new-instance v3, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;-><init>(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;Lcom/android/server/location/LocationManagerService$1;)V

    move-object v2, v3

    .line 2768
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2771
    :cond_1
    new-instance v3, Lcom/android/server/location/MockProvider;

    invoke-direct {v3, p2}, Lcom/android/server/location/MockProvider;-><init>(Lcom/android/internal/location/ProviderProperties;)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProvider(Lcom/android/server/location/MockProvider;)V

    .line 2772
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    monitor-exit v1

    .line 2773
    return-void

    .line 2772
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2854
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "LocationManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2855
    return-void

    .line 2858
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2860
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2861
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v2, :cond_1

    array-length v2, p3

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v2, p3, v2

    const-string v3, "--gnssmetrics"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2862
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/location/gnss/GnssManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2863
    monitor-exit v1

    return-void

    .line 2866
    :cond_1
    const-string v2, "Location Manager State:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2867
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current System Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2868
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Current Elapsed Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2871
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2870
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2873
    const-string v2, "User Info:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2874
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2875
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/location/UserInfoHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2876
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2878
    const-string v2, "Location Settings:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2879
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2880
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/location/SettingsHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2881
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Battery Saver Location Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/location/LocationManagerService;->mBatterySaverMode:I

    .line 2884
    invoke-static {v3}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2883
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2886
    const-string v2, "Location Listeners:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2887
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2888
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 2889
    .local v3, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2890
    .end local v3    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    goto :goto_0

    .line 2891
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2893
    const-string v2, "Active Records by Provider:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2894
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2895
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2896
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2897
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2898
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/LocationManagerService$UpdateRecord;

    .line 2899
    .local v5, "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2900
    .end local v5    # "record":Lcom/android/server/location/LocationManagerService$UpdateRecord;
    goto :goto_2

    .line 2901
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2902
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/location/LocationManagerService$UpdateRecord;>;>;"
    goto :goto_1

    .line 2903
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2905
    const-string v2, "Historical Records by Provider:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2906
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2907
    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    iget-object v3, v3, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2910
    .local v2, "sorted":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2911
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2912
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    goto :goto_3

    .line 2913
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2915
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    iget-object v3, v3, Lcom/android/server/location/LocationRequestStatistics;->history:Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;

    invoke-virtual {v3, v0}, Lcom/android/server/location/LocationRequestStatistics$RequestSummaryLimitedHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2917
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    if-eqz v3, :cond_6

    .line 2918
    const-string v3, "Geofences:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2920
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v3, v0}, Lcom/android/server/location/GeofenceManager;->dump(Ljava/io/PrintWriter;)V

    .line 2921
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2924
    :cond_6
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 2925
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Location Controller Extra Package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2926
    iget-boolean v4, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v4, :cond_7

    const-string v4, " [enabled]"

    goto :goto_4

    :cond_7
    const-string v4, "[disabled]"

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2925
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2928
    .end local v2    # "sorted":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    :cond_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2930
    const-string v1, "Location Providers:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2931
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2932
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 2933
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 2934
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_5

    .line 2935
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2937
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2938
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v1, :cond_a

    .line 2939
    const-string v1, "GNSS:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2940
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2941
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/location/gnss/GnssManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2942
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2944
    :cond_a
    monitor-exit v2

    .line 2945
    return-void

    .line 2944
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2928
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public flushGnssBatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1507
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->flushGnssBatch(Ljava/lang/String;)V

    .line 1508
    :cond_0
    return-void
.end method

.method public geocoderIsPresent()Z
    .locals 1

    .line 2726
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1528
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1529
    .local v0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 1530
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fused"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1531
    goto :goto_0

    .line 1533
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1534
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    goto :goto_0

    .line 1535
    :cond_1
    return-object v0
.end method

.method public getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .locals 2

    .line 1768
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 4
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z

    .line 1567
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1568
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v1

    .line 1569
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1570
    invoke-virtual {p0, v3, p2}, Lcom/android/server/location/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    .line 1572
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1574
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1575
    const-string v0, "gps"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1576
    const-string v0, "gps"

    return-object v0

    .line 1577
    :cond_1
    const-string/jumbo v0, "network"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1578
    const-string/jumbo v0, "network"

    return-object v0

    .line 1580
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1584
    :cond_3
    return-object v3

    .line 1572
    .end local v1    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurrentLocation(Landroid/location/LocationRequest;Landroid/os/ICancellationSignal;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p1, "locationRequest"    # Landroid/location/LocationRequest;
    .param p2, "remoteCancellationSignal"    # Landroid/os/ICancellationSignal;
    .param p3, "listener"    # Landroid/location/ILocationListener;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "listenerId"    # Ljava/lang/String;

    .line 2244
    move-object v8, p0

    move-object/from16 v9, p3

    move-object v10, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual {p0, p1, v11, v12}, Lcom/android/server/location/LocationManagerService;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v13

    .line 2245
    .local v13, "lastLocation":Landroid/location/Location;
    const/4 v0, 0x1

    if-eqz v13, :cond_1

    .line 2246
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v13}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 2246
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 2249
    .local v1, "locationAgeMs":J
    const-wide/16 v3, 0x2710

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-gez v3, :cond_0

    .line 2251
    :try_start_0
    invoke-interface {v9, v13}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2252
    return v0

    .line 2253
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 2254
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationManagerService"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2255
    return v4

    .line 2259
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, v8, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/location/AppForegroundHelper;->isAppForeground(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2260
    iget-object v3, v8, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/server/location/SettingsHelper;->getBackgroundThrottleIntervalMs()J

    move-result-wide v5

    cmp-long v3, v1, v5

    if-gez v3, :cond_1

    .line 2262
    return v4

    .line 2267
    .end local v1    # "locationAgeMs":J
    :cond_1
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/location/LocationManagerService;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    invoke-static/range {p2 .. p2}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    .line 2270
    .local v1, "cancellationSignal":Landroid/os/CancellationSignal;
    if-eqz v1, :cond_2

    .line 2271
    new-instance v2, Lcom/android/server/location/-$$Lambda$LocationManagerService$9pdv9aW0E5m2TQuRDMJXW1ZgLBE;

    invoke-direct {v2, p0, v9}, Lcom/android/server/location/-$$Lambda$LocationManagerService$9pdv9aW0E5m2TQuRDMJXW1ZgLBE;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/location/ILocationListener;)V

    invoke-virtual {v1, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 2274
    :cond_2
    return v0
.end method

.method public getCurrentProviderPackageList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2981
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result v0

    .line 2982
    .local v0, "enabledlocation":Z
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2983
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1, v0, v2}, Lcom/android/server/location/OpGpsNotificationInjector;->getCurrentProviderPackageList(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 2984
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCurrentProviderPackageListsForInteger(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2988
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result v0

    .line 2989
    .local v0, "enabledlocation":Z
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2990
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1, v0, v2}, Lcom/android/server/location/OpGpsNotificationInjector;->getCurrentProviderPackageListsForInteger(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 2991
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getExtraLocationControllerPackage()Ljava/lang/String;
    .locals 2

    .line 2513
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2514
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2515
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2732
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    .line 2733
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2736
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2745
    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v1, :cond_0

    .line 2746
    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2750
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getGnssBatchSize(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1483
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssBatchSize(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getGnssCapabilities()J
    .locals 2

    .line 2420
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2421
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssCapabilities()J

    move-result-wide v0

    .line 2420
    :goto_0
    return-wide v0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .locals 1

    .line 1478
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGnssTimeMillis()Landroid/location/LocationTime;
    .locals 10

    .line 2279
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2280
    :try_start_0
    const-string v1, "gps"

    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v1

    .line 2281
    .local v1, "gpsManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2282
    monitor-exit v0

    return-object v2

    .line 2285
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getLastLocation(II)Landroid/location/Location;

    move-result-object v3

    .line 2287
    .local v3, "location":Landroid/location/Location;
    if-nez v3, :cond_1

    .line 2288
    monitor-exit v0

    return-object v2

    .line 2291
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 2292
    .local v4, "currentNanos":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->getElapsedRealtimeAgeNanos(J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 2293
    .local v6, "deltaMs":J
    new-instance v2, Landroid/location/LocationTime;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-direct {v2, v8, v9, v4, v5}, Landroid/location/LocationTime;-><init>(JJ)V

    monitor-exit v0

    return-object v2

    .line 2294
    .end local v1    # "gpsManager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local v3    # "location":Landroid/location/Location;
    .end local v4    # "currentNanos":J
    .end local v6    # "deltaMs":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGnssYearOfHardware()I
    .locals 1

    .line 1472
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssYearOfHardware()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIgnoreSettingsWhitelist()[Ljava/lang/String;
    .locals 2

    .line 1773
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/SettingsHelper;->getIgnoreSettingsPackageWhitelist()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;
    .locals 6
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 2203
    if-nez p1, :cond_0

    .line 2204
    sget-object p1, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2208
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    .line 2209
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    invoke-virtual {v0}, Lcom/android/server/location/CallerIdentity;->enforceLocationPermission()V

    .line 2211
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    iget v2, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    iget-object v3, v0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/location/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2212
    return-object v2

    .line 2214
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mUserInfoHelper:Lcom/android/server/location/UserInfoHelper;

    iget v3, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v1, v3}, Lcom/android/server/location/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2215
    return-object v2

    .line 2218
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2219
    :try_start_0
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v3

    .line 2220
    .local v3, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v3, :cond_3

    .line 2221
    monitor-exit v1

    return-object v2

    .line 2223
    :cond_3
    iget v4, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2224
    monitor-exit v1

    return-object v2

    .line 2228
    :cond_4
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v4, v0}, Lcom/android/server/location/AppOpsHelper;->noteLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2229
    monitor-exit v1

    return-object v2

    .line 2232
    :cond_5
    iget v4, v0, Lcom/android/server/location/CallerIdentity;->userId:I

    iget v5, v0, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getLastLocation(II)Landroid/location/Location;

    move-result-object v4

    .line 2235
    .local v4, "location":Landroid/location/Location;
    if-eqz v4, :cond_6

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    :cond_6
    monitor-exit v1

    return-object v2

    .line 2236
    .end local v3    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local v4    # "location":Landroid/location/Location;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getProviderPackages(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2497
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    .line 2499
    .local v0, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getPackages()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v1
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;

    .line 2482
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    .line 2483
    .local v0, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v0, :cond_0

    .line 2484
    const/4 v1, 0x0

    return-object v1

    .line 2486
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    return-object v1
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 6
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1540
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/CallerIdentity;->checkCallingOrSelfLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1541
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1544
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1545
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1546
    .local v1, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    .line 1547
    .local v3, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    invoke-virtual {v3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1548
    .local v4, "name":Ljava/lang/String;
    const-string v5, "fused"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1549
    goto :goto_0

    .line 1551
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1552
    goto :goto_0

    .line 1554
    :cond_2
    if-eqz p1, :cond_3

    .line 1555
    invoke-virtual {v3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v5

    .line 1554
    invoke-static {v4, v5, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1556
    goto :goto_0

    .line 1558
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1559
    nop

    .end local v3    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_0

    .line 1560
    :cond_4
    monitor-exit v0

    return-object v1

    .line 1561
    .end local v1    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTestProviderCurrentRequests(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation

    .line 2836
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    .line 2837
    .local v0, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-eqz v0, :cond_0

    .line 2841
    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->getMockProviderRequests()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2838
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider doesn\'t exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6
    .param p1, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "err"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;

    .line 2847
    new-instance v0, Lcom/android/server/location/LocationShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationShellCommand;-><init>(Lcom/android/server/location/LocationManagerService;)V

    .line 2848
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 2847
    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/LocationShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;Ljava/lang/String;)V
    .locals 1
    .param p1, "measurementCorrections"    # Landroid/location/GnssMeasurementCorrections;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2412
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 2413
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;Ljava/lang/String;)V

    .line 2416
    :cond_0
    return-void
.end method

.method public injectLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .line 2299
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2304
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2305
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2306
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v2

    .line 2307
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2308
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroid/location/Location;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->injectLastLocation(Landroid/location/Location;I)V

    .line 2310
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_0
    monitor-exit v1

    .line 2311
    return-void

    .line 2310
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isExtraLocationControllerPackageEnabled()Z
    .locals 2

    .line 2529
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2530
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 2532
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLocationEnabledForUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    .line 2548
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "isLocationEnabledForUser"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2550
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/location/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2555
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "isProviderEnabledForUser"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2560
    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2562
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isProviderPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2491
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getCurrentLocation$6$LocationManagerService(Landroid/location/ILocationListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/ILocationListener;

    .line 2272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/LocationManagerService;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public synthetic lambda$new$0$LocationManagerService(I)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 325
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$1$LocationManagerService(I)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 328
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onSystemReady$2$LocationManagerService()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/LocationManagerService;->onPermissionsChangedLocked()V

    .line 357
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onSystemReady$3$LocationManagerService(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 354
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$HF50oc8JIzIfijGBFKSCGnMQ53g;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$HF50oc8JIzIfijGBFKSCGnMQ53g;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method

.method public synthetic lambda$onSystemReady$4$LocationManagerService(Landroid/os/PowerSaveState;)V
    .locals 2
    .param p1, "state"    # Landroid/os/PowerSaveState;

    .line 367
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iget v1, p1, Landroid/os/PowerSaveState;->locationMode:I

    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->onBatterySaverModeChangedLocked(I)V

    .line 369
    monitor-exit v0

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onSystemReady$5$LocationManagerService(Landroid/os/PowerSaveState;)V
    .locals 2
    .param p1, "state"    # Landroid/os/PowerSaveState;

    .line 366
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationManagerService$6S6V_wdmdYj0ww0_eUe-fkY-Tp4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$LocationManagerService$6S6V_wdmdYj0ww0_eUe-fkY-Tp4;-><init>(Lcom/android/server/location/LocationManagerService;Landroid/os/PowerSaveState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 371
    return-void
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/ILocationListener;

    .line 1462
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationManagerService$Receiver;

    .line 1464
    .local v1, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    if-eqz v1, :cond_0

    .line 1465
    invoke-static {v1}, Lcom/android/server/location/LocationManagerService$Receiver;->access$2300(Lcom/android/server/location/LocationManagerService$Receiver;)V

    .line 1467
    .end local v1    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :cond_0
    monitor-exit v0

    .line 1468
    return-void

    .line 1467
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mdmCheckIfLossSv(J)V
    .locals 0
    .param p1, "time"    # J

    .line 2998
    invoke-static {p1, p2}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mdmSetLossLevel(J)V

    .line 2999
    return-void
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 2385
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssManagerService;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 11
    .param p1, "geofence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2357
    if-eqz p2, :cond_1

    .line 2361
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeGeofence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    .line 2371
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v10

    .line 2363
    move-object v5, p3

    move-object v9, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 2374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2376
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2378
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2379
    nop

    .line 2380
    return-void

    .line 2378
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2379
    throw v2

    .line 2358
    .end local v0    # "identity":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid pending intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGnssAntennaInfoListener;

    .line 2434
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V

    .line 2437
    :cond_0
    return-void
.end method

.method public removeGnssBatchingCallback()V
    .locals 1

    .line 1495
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssBatchingCallback()V

    .line 1496
    :cond_0
    return-void
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;

    .line 2403
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 2404
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    .line 2407
    :cond_0
    return-void
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;

    .line 2448
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 2449
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    .line 2452
    :cond_0
    return-void
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;

    .line 2778
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    .line 2779
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->noteMockLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2780
    return-void

    .line 2783
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2784
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v2

    .line 2785
    .local v2, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-nez v2, :cond_1

    .line 2786
    monitor-exit v1

    return-void

    .line 2789
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProvider(Lcom/android/server/location/MockProvider;)V

    .line 2790
    invoke-virtual {v2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->hasProvider()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2791
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2793
    .end local v2    # "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    :cond_2
    monitor-exit v1

    .line 2794
    return-void

    .line 2793
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 2129
    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "need either listener or intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2131
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 2132
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot register both listener and intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2136
    :cond_3
    :goto_1
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->getLogLevelStatusUpdates()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    .line 2139
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2141
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 2142
    :try_start_0
    invoke-direct {p0, p2, v2, v2, v1}, Lcom/android/server/location/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v1

    .local v1, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    goto :goto_2

    .line 2144
    .end local v1    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :cond_4
    invoke-direct {p0, p1, v2, v2, v1}, Lcom/android/server/location/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v1

    .line 2147
    .restart local v1    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :goto_2
    if-eqz v1, :cond_5

    .line 2148
    invoke-direct {p0, v1}, Lcom/android/server/location/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/location/LocationManagerService$Receiver;)V

    .line 2150
    .end local v1    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :cond_5
    monitor-exit v0

    .line 2151
    return-void

    .line 2150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "geofence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;

    .line 2316
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    if-nez p1, :cond_0

    .line 2317
    sget-object v1, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    move-object v12, v1

    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v1, "request":Landroid/location/LocationRequest;
    goto :goto_0

    .line 2316
    .end local v1    # "request":Landroid/location/LocationRequest;
    .restart local p1    # "request":Landroid/location/LocationRequest;
    :cond_0
    move-object/from16 v12, p1

    .line 2320
    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v12, "request":Landroid/location/LocationRequest;
    :goto_0
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2321
    invoke-static/range {p3 .. p3}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    .line 2320
    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-static {v1, v13, v14, v2}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v15

    .line 2322
    .local v15, "identity":Lcom/android/server/location/CallerIdentity;
    invoke-virtual {v15}, Lcom/android/server/location/CallerIdentity;->enforceLocationPermission()V

    .line 2324
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2326
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2327
    const-string v2, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v9, v1

    .line 2329
    .local v9, "callerHasLocationHardwarePermission":Z
    invoke-direct {v0, v12, v15, v9}, Lcom/android/server/location/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;Lcom/android/server/location/CallerIdentity;Z)Landroid/location/LocationRequest;

    move-result-object v8

    .line 2332
    .local v8, "sanitizedRequest":Landroid/location/LocationRequest;
    sget-boolean v1, Lcom/android/server/location/LocationManagerService;->D:Z

    const-string v2, "LocationManagerService"

    if-eqz v1, :cond_2

    .line 2333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestGeofence: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    :cond_2
    iget v1, v15, Lcom/android/server/location/CallerIdentity;->userId:I

    if-eqz v1, :cond_3

    .line 2338
    const-string/jumbo v1, "proximity alerts are currently available only to the primary user"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    return-void

    .line 2342
    :cond_3
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v4, v0, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget v5, v15, Lcom/android/server/location/CallerIdentity;->uid:I

    .line 2350
    invoke-virtual {v4, v5}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v16

    .line 2342
    move-object/from16 v4, p4

    move-object v5, v12

    move-object/from16 v17, v8

    .end local v8    # "sanitizedRequest":Landroid/location/LocationRequest;
    .local v17, "sanitizedRequest":Landroid/location/LocationRequest;
    move-object/from16 v8, p2

    move/from16 v18, v9

    .end local v9    # "callerHasLocationHardwarePermission":Z
    .local v18, "callerHasLocationHardwarePermission":Z
    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 2352
    iget-object v1, v0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    move-object/from16 v2, v17

    .end local v17    # "sanitizedRequest":Landroid/location/LocationRequest;
    .local v2, "sanitizedRequest":Landroid/location/LocationRequest;
    invoke-virtual {v1, v2, v10, v11, v15}, Lcom/android/server/location/GeofenceManager;->addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;)V

    .line 2353
    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 26
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "listenerId"    # Ljava/lang/String;

    .line 2002
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->getLogLevelStatusUpdates()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    .line 2006
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationManagerServiceInjector;->isDisableMOLR()Z

    move-result v4

    .line 2007
    .local v4, "disableMOLR":Z
    if-eqz v4, :cond_0

    .line 2008
    const-string v0, "LocationManagerService"

    const-string v5, "disable MOLR"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    return-void

    .line 2012
    :cond_0
    if-nez p1, :cond_1

    .line 2013
    sget-object v0, Lcom/android/server/location/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    move-object v14, v0

    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v0, "request":Landroid/location/LocationRequest;
    goto :goto_0

    .line 2012
    .end local v0    # "request":Landroid/location/LocationRequest;
    .restart local p1    # "request":Landroid/location/LocationRequest;
    :cond_1
    move-object/from16 v14, p1

    .line 2015
    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v14, "request":Landroid/location/LocationRequest;
    :goto_0
    if-nez p6, :cond_2

    if-eqz v3, :cond_2

    .line 2016
    invoke-static/range {p3 .. p3}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .end local p6    # "listenerId":Ljava/lang/String;
    .local v0, "listenerId":Ljava/lang/String;
    goto :goto_1

    .line 2019
    .end local v0    # "listenerId":Ljava/lang/String;
    .restart local p6    # "listenerId":Ljava/lang/String;
    :cond_2
    move-object/from16 v15, p6

    .end local p6    # "listenerId":Ljava/lang/String;
    .local v15, "listenerId":Ljava/lang/String;
    :goto_1
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    invoke-static {v0, v13, v12, v15}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v11

    .line 2021
    .local v11, "identity":Lcom/android/server/location/CallerIdentity;
    invoke-virtual {v11}, Lcom/android/server/location/CallerIdentity;->enforceLocationPermission()V

    .line 2023
    invoke-virtual {v14}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v10

    .line 2024
    .local v10, "workSource":Landroid/os/WorkSource;
    const/4 v0, 0x0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2025
    iget-object v5, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    :cond_3
    invoke-virtual {v14}, Landroid/location/LocationRequest;->getHideFromAppOps()Z

    move-result v9

    .line 2029
    .local v9, "hideFromAppOps":Z
    if-eqz v9, :cond_4

    .line 2030
    iget-object v5, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    :cond_4
    invoke-virtual {v14}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2034
    iget-object v5, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    :cond_5
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2038
    const-string v5, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_6

    move v0, v5

    goto :goto_2

    :cond_6
    move v0, v6

    :goto_2
    move v8, v0

    .line 2040
    .local v8, "callerHasLocationHardwarePermission":Z
    invoke-direct {v1, v14, v11, v8}, Lcom/android/server/location/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;Lcom/android/server/location/CallerIdentity;Z)Landroid/location/LocationRequest;

    move-result-object v7

    .line 2044
    .local v7, "sanitizedRequest":Landroid/location/LocationRequest;
    if-nez v3, :cond_8

    if-eqz v2, :cond_7

    goto :goto_3

    .line 2045
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "need either listener or intent"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2046
    :cond_8
    :goto_3
    if-eqz v3, :cond_a

    if-nez v2, :cond_9

    goto :goto_4

    .line 2047
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "cannot register both listener and intent"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2051
    :cond_a
    :goto_4
    iget-object v0, v1, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v2, :cond_b

    move/from16 v18, v5

    goto :goto_5

    :cond_b
    move/from16 v18, v6

    :goto_5
    if-eqz v3, :cond_c

    move/from16 v19, v5

    goto :goto_6

    :cond_c
    move/from16 v19, v6

    :goto_6
    const/16 v20, 0x0

    iget-object v5, v1, Lcom/android/server/location/LocationManagerService;->mAppForegroundHelper:Lcom/android/server/location/AppForegroundHelper;

    iget v6, v11, Lcom/android/server/location/CallerIdentity;->uid:I

    .line 2056
    invoke-virtual {v5, v6}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v21

    .line 2051
    move-object v5, v0

    move/from16 v6, v16

    move-object/from16 v22, v7

    .end local v7    # "sanitizedRequest":Landroid/location/LocationRequest;
    .local v22, "sanitizedRequest":Landroid/location/LocationRequest;
    move/from16 v7, v17

    move/from16 v16, v8

    .end local v8    # "callerHasLocationHardwarePermission":Z
    .local v16, "callerHasLocationHardwarePermission":Z
    move-object/from16 v8, p4

    move/from16 v23, v9

    .end local v9    # "hideFromAppOps":Z
    .local v23, "hideFromAppOps":Z
    move-object v9, v14

    move-object/from16 v24, v10

    .end local v10    # "workSource":Landroid/os/WorkSource;
    .local v24, "workSource":Landroid/os/WorkSource;
    move/from16 v10, v18

    move-object/from16 v25, v11

    .end local v11    # "identity":Lcom/android/server/location/CallerIdentity;
    .local v25, "identity":Lcom/android/server/location/CallerIdentity;
    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v13, v21

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 2058
    iget-object v5, v1, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2060
    if-eqz v3, :cond_d

    .line 2061
    move/from16 v8, v23

    move-object/from16 v7, v24

    move-object/from16 v6, v25

    .end local v23    # "hideFromAppOps":Z
    .end local v24    # "workSource":Landroid/os/WorkSource;
    .end local v25    # "identity":Lcom/android/server/location/CallerIdentity;
    .local v6, "identity":Lcom/android/server/location/CallerIdentity;
    .local v7, "workSource":Landroid/os/WorkSource;
    .local v8, "hideFromAppOps":Z
    :try_start_0
    invoke-direct {v1, v3, v6, v7, v8}, Lcom/android/server/location/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    goto :goto_7

    .line 2068
    .end local v0    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :catchall_0
    move-exception v0

    move-object/from16 v9, v22

    goto :goto_9

    .line 2063
    .end local v6    # "identity":Lcom/android/server/location/CallerIdentity;
    .end local v7    # "workSource":Landroid/os/WorkSource;
    .end local v8    # "hideFromAppOps":Z
    .restart local v23    # "hideFromAppOps":Z
    .restart local v24    # "workSource":Landroid/os/WorkSource;
    .restart local v25    # "identity":Lcom/android/server/location/CallerIdentity;
    :cond_d
    move/from16 v8, v23

    move-object/from16 v7, v24

    move-object/from16 v6, v25

    .end local v23    # "hideFromAppOps":Z
    .end local v24    # "workSource":Landroid/os/WorkSource;
    .end local v25    # "identity":Lcom/android/server/location/CallerIdentity;
    .restart local v6    # "identity":Lcom/android/server/location/CallerIdentity;
    .restart local v7    # "workSource":Landroid/os/WorkSource;
    .restart local v8    # "hideFromAppOps":Z
    :try_start_1
    invoke-direct {v1, v2, v6, v7, v8}, Lcom/android/server/location/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;Lcom/android/server/location/CallerIdentity;Landroid/os/WorkSource;Z)Lcom/android/server/location/LocationManagerService$Receiver;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2065
    .restart local v0    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    :goto_7
    if-eqz v0, :cond_e

    .line 2066
    move-object/from16 v9, v22

    .end local v22    # "sanitizedRequest":Landroid/location/LocationRequest;
    .local v9, "sanitizedRequest":Landroid/location/LocationRequest;
    :try_start_2
    invoke-direct {v1, v9, v0}, Lcom/android/server/location/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/location/LocationManagerService$Receiver;)V

    goto :goto_8

    .line 2065
    .end local v9    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v22    # "sanitizedRequest":Landroid/location/LocationRequest;
    :cond_e
    move-object/from16 v9, v22

    .line 2068
    .end local v0    # "receiver":Lcom/android/server/location/LocationManagerService$Receiver;
    .end local v22    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v9    # "sanitizedRequest":Landroid/location/LocationRequest;
    :goto_8
    monitor-exit v5

    .line 2069
    return-void

    .line 2068
    .end local v9    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v22    # "sanitizedRequest":Landroid/location/LocationRequest;
    :catchall_1
    move-exception v0

    move-object/from16 v9, v22

    .end local v22    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v9    # "sanitizedRequest":Landroid/location/LocationRequest;
    :goto_9
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_9
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2456
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/CallerIdentity;->enforceCallingOrSelfLocationPermission(Landroid/content/Context;)V

    .line 2457
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    nop

    .line 2461
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 2460
    invoke-direct {p0, v0}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v0

    .line 2462
    .local v0, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-eqz v0, :cond_0

    .line 2463
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2464
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    .line 2463
    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 2467
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    .line 2472
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/location/LocationUsageLogger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/location/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    .line 2477
    return v2
.end method

.method public setExtraLocationControllerPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2504
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2507
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    .line 2508
    monitor-exit v0

    .line 2509
    return-void

    .line 2508
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setExtraLocationControllerPackageEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 2520
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2523
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    .line 2524
    monitor-exit v0

    .line 2525
    return-void

    .line 2524
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationEnabledForUser(ZI)V
    .locals 7
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 2537
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "setLocationEnabledForUser"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2540
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    .line 2543
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mSettingsHelper:Lcom/android/server/location/SettingsHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/SettingsHelper;->setLocationEnabled(ZI)V

    .line 2544
    return-void
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;

    .line 2820
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    .line 2821
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->noteMockLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2822
    return-void

    .line 2825
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v1

    .line 2826
    .local v1, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-eqz v1, :cond_1

    .line 2830
    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProviderAllowed(Z)V

    .line 2831
    return-void

    .line 2827
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provider doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;

    .line 2800
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    .line 2801
    .local v0, "identity":Lcom/android/server/location/CallerIdentity;
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mAppOpsHelper:Lcom/android/server/location/AppOpsHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/AppOpsHelper;->noteMockLocationAccess(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2802
    return-void

    .line 2805
    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    move-result v1

    const-string v2, "incomplete location object, missing timestamp or accuracy?"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2808
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/LocationManagerService$LocationProviderManager;

    move-result-object v1

    .line 2809
    .local v1, "manager":Lcom/android/server/location/LocationManagerService$LocationProviderManager;
    if-eqz v1, :cond_1

    .line 2813
    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationManagerService$LocationProviderManager;->setMockProviderLocation(Landroid/location/Location;)V

    .line 2814
    return-void

    .line 2810
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provider doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startGnssBatch(JZLjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;

    .line 1501
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssManagerService;->startGnssBatch(JZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public stopGnssBatch()Z
    .locals 1

    .line 1512
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->stopGnssBatch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;

    .line 2391
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    .line 2392
    :cond_0
    return-void
.end method
