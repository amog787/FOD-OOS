.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$LinkedListener;,
        Lcom/android/server/LocationManagerService$LinkedListenerBase;,
        Lcom/android/server/LocationManagerService$UpdateRecord;,
        Lcom/android/server/LocationManagerService$Receiver;,
        Lcom/android/server/LocationManagerService$Identity;,
        Lcom/android/server/LocationManagerService$MockLocationProvider;,
        Lcom/android/server/LocationManagerService$LocationProvider;,
        Lcom/android/server/LocationManagerService$LocationManagerServiceInner;
    }
.end annotation


# static fields
.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field public static D:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field private static final DEFAULT_BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_LAST_LOCATION_MAX_AGE_MS:J = 0x124f80L

.field private static final DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

.field private static final FOREGROUND_IMPORTANCE_CUTOFF:I = 0x7d

.field private static final FUSED_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final LOG_SHIELD:Ljava/lang/String; = "XXXXXXXXXXXXXXXXXXXXXXX"

.field private static final MAX_PROVIDER_SCHEDULING_JITTER_MS:I = 0x64

.field private static final NANOS_PER_MILLI:J = 0xf4240L

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"

.field private static final RESOLUTION_LEVEL_COARSE:I = 0x1

.field private static final RESOLUTION_LEVEL_FINE:I = 0x2

.field private static final RESOLUTION_LEVEL_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "*location*"

.field public static mdmProviderRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private final mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBatterySaverMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private mComboNlpPackageName:Ljava/lang/String;

.field private mComboNlpReadyMarker:Ljava/lang/String;

.field private mComboNlpScreenMarker:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentUserProfiles:[I

.field private mExtraLocationControllerPackage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mExtraLocationControllerPackageEnabled:Z

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeofenceManager:Lcom/android/server/location/GeofenceManager;

.field private mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "Landroid/location/IBatchedLocationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGnssBatchingInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

.field private mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

.field private mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

.field private final mGnssMeasurementsListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "Landroid/location/IGnssMeasurementsListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

.field private final mGnssNavigationMessageListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "Landroid/location/IGnssNavigationMessageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private final mGnssStatusListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "Landroid/location/IGnssStatusListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

.field private mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

.field private mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

.field private final mHandler:Landroid/os/Handler;

.field private final mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocation:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocationCoarseInterval:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationFudger:Lcom/android/server/location/LocationFudger;

.field private final mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPassiveProvider:Lcom/android/server/location/PassiveProvider;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$LocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealProviders:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$LocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
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
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

.field private mUserManager:Landroid/os/UserManager;

.field private mdmLmsInjector:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 165
    const-string v0, "LocationManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    .line 171
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

    .line 215
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerService;->mdmProviderRequest:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 368
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 269
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics;

    invoke-direct {v0}, Lcom/android/server/location/LocationRequestStatistics;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    .line 281
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    .line 283
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    .line 285
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    .line 288
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    .line 291
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 297
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v0

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    .line 308
    iput-boolean v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 369
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 370
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 371
    new-instance v0, Lcom/android/server/LocationUsageLogger;

    invoke-direct {v0}, Lcom/android/server/LocationUsageLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    .line 375
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 377
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$bojY6dMaI07zh6_sF7ERxgmk6U0;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$bojY6dMaI07zh6_sF7ERxgmk6U0;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 380
    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$pUnNobtfzLC9eAlVqCMKySwbo3U;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$pUnNobtfzLC9eAlVqCMKySwbo3U;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setLocationExtraPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 388
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->getLogLevelStatusUpdates()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    .line 393
    new-instance v1, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mdmLmsInjector:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    .line 395
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onIgnoreSettingsWhitelistChangedLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->onPackageDisappearedLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/LocationManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # I

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->onUserChangedLocked(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onUserProfilesChangedLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onScreenStateChangedLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/LocationManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/PassiveProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/LocationManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # I

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/LocationManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/LocationManagerService$LocationProvider;

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->updateProviderUseableLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/LocationManagerService;)Landroid/location/IBatchedLocationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/LocationManagerService;Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Landroid/location/Location;
    .param p2, "x2"    # Lcom/android/server/LocationManagerService$LocationProvider;

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/LocationManagerService$LocationProvider;

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/LocationManagerService;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # I

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/LocationManagerService$Receiver;

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/LocationManagerService;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$4200(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 161
    invoke-static {p0}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationUsageLogger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onAppOpChangedLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LocationManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Z

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->onLocationModeChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onProviderAllowedChangedLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onBackgroundThrottleIntervalChangedLocked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 161
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onBackgroundThrottleWhitelistChangedLocked()V

    return-void
.end method

.method private addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z
    .locals 20
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "listenerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener::Landroid/os/IInterface;",
            ">(TT",
            "Listener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TT",
            "Listener;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "TT",
            "Listener;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;)Z"
        }
    .end annotation

    .line 3262
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p4, "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p5, "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;>;"
    .local p6, "binderDeathCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TTListener;>;"
    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    invoke-direct {v1, v11}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-nez v12, :cond_0

    move-object/from16 v3, p1

    goto/16 :goto_7

    .line 3266
    :cond_0
    new-instance v0, Lcom/android/server/location/CallerIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3267
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-direct {v0, v3, v4, v11}, Lcom/android/server/location/CallerIdentity;-><init>(IILjava/lang/String;)V

    move-object v13, v0

    .line 3268
    .local v13, "callerIdentity":Lcom/android/server/location/CallerIdentity;
    new-instance v0, Lcom/android/server/LocationManagerService$LinkedListener;

    const/4 v10, 0x0

    move-object v5, v0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object v8, v13

    move-object/from16 v9, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/server/LocationManagerService$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;Lcom/android/server/LocationManagerService$1;)V

    move-object v14, v0

    .line 3270
    .local v14, "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 3271
    .local v15, "binder":Landroid/os/IBinder;
    iget-object v10, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3272
    :try_start_0
    invoke-direct {v1, v15, v14}, Lcom/android/server/LocationManagerService;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3273
    monitor-exit v10

    return v2

    .line 3276
    :cond_1
    move-object/from16 v9, p5

    invoke-virtual {v9, v15, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3277
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-wide/from16 v16, v2

    .line 3279
    .local v16, "identity":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-eq v12, v0, :cond_3

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    if-ne v12, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v19, v10

    goto :goto_2

    .line 3281
    :cond_3
    :goto_0
    iget-object v2, v1, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v3, 0x0

    .line 3283
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-ne v12, v0, :cond_4

    .line 3284
    const/4 v0, 0x2

    move v4, v0

    goto :goto_1

    .line 3285
    :cond_4
    const/4 v0, 0x3

    move v4, v0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v5, v1, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 3291
    invoke-virtual {v5, v11}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3281
    move-object/from16 v5, p2

    move-object v9, v0

    move-object/from16 v19, v10

    move/from16 v10, v18

    :try_start_2
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 3293
    :goto_2
    invoke-direct {v1, v13}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 3295
    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    .line 3294
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    goto :goto_4

    .line 3296
    :cond_6
    :goto_3
    move-object/from16 v3, p1

    :try_start_3
    invoke-virtual {v12, v3, v13}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3298
    :goto_4
    const/4 v0, 0x1

    .line 3300
    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19

    .line 3298
    return v0

    .line 3300
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v19, v10

    :goto_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v13    # "callerIdentity":Lcom/android/server/location/CallerIdentity;
    .end local v14    # "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    .end local v15    # "binder":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "listener":Landroid/os/IInterface;, "TTListener;"
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "listenerName":Ljava/lang/String;
    .end local p4    # "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .end local p5    # "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;>;"
    .end local p6    # "binderDeathCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TTListener;>;"
    throw v0

    .line 3302
    .end local v16    # "identity":J
    .restart local v13    # "callerIdentity":Lcom/android/server/location/CallerIdentity;
    .restart local v14    # "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    .restart local v15    # "binder":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "listener":Landroid/os/IInterface;, "TTListener;"
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "listenerName":Ljava/lang/String;
    .restart local p4    # "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .restart local p5    # "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;>;"
    .restart local p6    # "binderDeathCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TTListener;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v19, v10

    :goto_6
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_6

    .line 3262
    .end local v13    # "callerIdentity":Lcom/android/server/location/CallerIdentity;
    .end local v14    # "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    .end local v15    # "binder":Landroid/os/IBinder;
    :cond_7
    move-object/from16 v3, p1

    .line 3263
    :goto_7
    return v2
.end method

.method private addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/LocationManagerService$LocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2017
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2019
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2021
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->onAllowedChangedLocked()V

    .line 2022
    invoke-virtual {p1, v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 2023
    return-void
.end method

.method private applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 22
    .param p1, "provider"    # Lcom/android/server/LocationManagerService$LocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2317
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    .line 2318
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    move-object v4, v0

    .line 2319
    .local v4, "worksource":Landroid/os/WorkSource;
    new-instance v0, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v0}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    move-object v5, v0

    .line 2323
    .local v5, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2328
    .local v6, "identity":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2329
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "location_background_throttle_interval_ms"

    const-wide/32 v9, 0x1b7740

    .line 2328
    invoke-static {v0, v8, v9, v10}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2333
    .local v8, "backgroundThrottleInterval":J
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2334
    nop

    .line 2336
    iget v0, v1, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    const/4 v10, 0x3

    const/4 v12, 0x1

    if-ne v0, v10, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2338
    .local v0, "isForegroundOnlyMode":Z
    :goto_0
    iget v10, v1, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    const/4 v13, 0x4

    if-ne v10, v13, :cond_1

    iget-object v10, v1, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 2341
    invoke-virtual {v10}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v10

    if-nez v10, :cond_1

    move v10, v12

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 2343
    .local v10, "shouldThrottleRequests":Z
    :goto_1
    iput-boolean v12, v5, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    .line 2344
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2345
    .local v14, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v15, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->mUid:I

    .line 2346
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 2345
    invoke-direct {v1, v15}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v15

    if-nez v15, :cond_2

    .line 2347
    goto :goto_2

    .line 2352
    :cond_2
    iget-object v15, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v15}, Lcom/android/server/am/OpBGFrozenInjector;->isBlockedGpsUid(I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2353
    goto :goto_2

    .line 2357
    :cond_3
    iget-object v15, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->mPid:I

    iget-object v11, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v11, v11, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v11, v11, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object v12, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v12, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v12, v12, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v13

    iget-object v13, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v13, v13, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-virtual {v1, v15, v11, v12, v13}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 2362
    move-object/from16 v13, v18

    const/4 v12, 0x1

    goto :goto_2

    .line 2364
    :cond_4
    if-nez v10, :cond_6

    if-eqz v0, :cond_5

    .line 2365
    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v11, 0x1

    .line 2366
    .local v11, "isBatterySaverDisablingLocation":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v12

    if-eqz v12, :cond_7

    if-eqz v11, :cond_8

    .line 2367
    :cond_7
    invoke-direct {v1, v14}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 2368
    const/4 v12, 0x1

    iput-boolean v12, v5, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    .line 2369
    const/4 v12, 0x0

    iput-boolean v12, v5, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    .line 2375
    :cond_8
    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v12

    .line 2376
    .local v12, "locationRequest":Landroid/location/LocationRequest;
    move v13, v10

    move v15, v11

    .end local v10    # "shouldThrottleRequests":Z
    .end local v11    # "isBatterySaverDisablingLocation":Z
    .local v13, "shouldThrottleRequests":Z
    .local v15, "isBatterySaverDisablingLocation":Z
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    .line 2380
    .local v10, "interval":J
    move/from16 v19, v0

    .end local v0    # "isForegroundOnlyMode":Z
    .local v19, "isForegroundOnlyMode":Z
    iget-boolean v0, v5, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    if-nez v0, :cond_a

    iget-object v0, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {v1, v0}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2382
    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2383
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2385
    :cond_9
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v20

    cmp-long v0, v10, v20

    if-eqz v0, :cond_a

    .line 2386
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, v12}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    move-object v12, v0

    .line 2387
    invoke-virtual {v12, v10, v11}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 2391
    :cond_a
    iput-object v12, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 2392
    iget-object v0, v5, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2393
    invoke-virtual {v12}, Landroid/location/LocationRequest;->isLowPowerMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2394
    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    goto :goto_5

    .line 2393
    :cond_b
    const/4 v0, 0x0

    .line 2396
    :goto_5
    iget-wide v0, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v10, v0

    if-gez v0, :cond_c

    .line 2397
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 2398
    iput-wide v10, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto :goto_6

    .line 2396
    :cond_c
    const/4 v0, 0x1

    .line 2400
    .end local v10    # "interval":J
    .end local v12    # "locationRequest":Landroid/location/LocationRequest;
    .end local v14    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v15    # "isBatterySaverDisablingLocation":Z
    :goto_6
    move-object/from16 v1, p0

    move v12, v0

    move v10, v13

    move-object/from16 v13, v18

    move/from16 v0, v19

    goto/16 :goto_2

    .line 2367
    .end local v13    # "shouldThrottleRequests":Z
    .end local v19    # "isForegroundOnlyMode":Z
    .restart local v0    # "isForegroundOnlyMode":Z
    .local v10, "shouldThrottleRequests":Z
    .restart local v11    # "isBatterySaverDisablingLocation":Z
    .restart local v14    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_d
    move/from16 v19, v0

    move v13, v10

    move v15, v11

    const/4 v0, 0x1

    .end local v0    # "isForegroundOnlyMode":Z
    .end local v10    # "shouldThrottleRequests":Z
    .end local v11    # "isBatterySaverDisablingLocation":Z
    .restart local v13    # "shouldThrottleRequests":Z
    .restart local v15    # "isBatterySaverDisablingLocation":Z
    .restart local v19    # "isForegroundOnlyMode":Z
    move-object/from16 v1, p0

    move v12, v0

    move-object/from16 v13, v18

    move/from16 v0, v19

    goto/16 :goto_2

    .line 2402
    .end local v13    # "shouldThrottleRequests":Z
    .end local v14    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v15    # "isBatterySaverDisablingLocation":Z
    .end local v19    # "isForegroundOnlyMode":Z
    .restart local v0    # "isForegroundOnlyMode":Z
    .restart local v10    # "shouldThrottleRequests":Z
    :cond_e
    move/from16 v19, v0

    move v13, v10

    .end local v0    # "isForegroundOnlyMode":Z
    .end local v10    # "shouldThrottleRequests":Z
    .restart local v13    # "shouldThrottleRequests":Z
    .restart local v19    # "isForegroundOnlyMode":Z
    iget-boolean v0, v5, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_14

    .line 2408
    iget-wide v0, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    const-wide/16 v10, 0x3e8

    add-long/2addr v0, v10

    const-wide/16 v10, 0x3

    mul-long/2addr v0, v10

    const-wide/16 v10, 0x2

    div-long/2addr v0, v10

    .line 2409
    .local v0, "thresholdInterval":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2410
    .local v11, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v12, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v12, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v12, v12, Lcom/android/server/location/CallerIdentity;->mUid:I

    .line 2411
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 2410
    move-object/from16 v14, p0

    invoke-direct {v14, v12}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 2412
    iget-object v12, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 2416
    .restart local v12    # "locationRequest":Landroid/location/LocationRequest;
    iget-object v15, v5, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 2417
    goto :goto_7

    .line 2420
    :cond_f
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v15

    cmp-long v15, v15, v0

    if-gtz v15, :cond_11

    .line 2421
    iget-object v15, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v15, :cond_10

    iget-object v15, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    .line 2422
    invoke-static {v15}, Lcom/android/server/LocationManagerService;->isValidWorkSource(Landroid/os/WorkSource;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 2423
    iget-object v15, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v15}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    move-wide/from16 v16, v0

    goto :goto_8

    .line 2427
    :cond_10
    iget-object v15, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->mUid:I

    move-wide/from16 v16, v0

    .end local v0    # "thresholdInterval":J
    .local v16, "thresholdInterval":J
    iget-object v0, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v15, v0}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    goto :goto_8

    .line 2420
    .end local v16    # "thresholdInterval":J
    .restart local v0    # "thresholdInterval":J
    :cond_11
    move-wide/from16 v16, v0

    .end local v0    # "thresholdInterval":J
    .restart local v16    # "thresholdInterval":J
    goto :goto_8

    .line 2410
    .end local v12    # "locationRequest":Landroid/location/LocationRequest;
    .end local v16    # "thresholdInterval":J
    .restart local v0    # "thresholdInterval":J
    :cond_12
    move-wide/from16 v16, v0

    .line 2433
    .end local v0    # "thresholdInterval":J
    .end local v11    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v16    # "thresholdInterval":J
    :goto_8
    move-wide/from16 v0, v16

    goto :goto_7

    .line 2409
    .end local v16    # "thresholdInterval":J
    .restart local v0    # "thresholdInterval":J
    :cond_13
    move-object/from16 v14, p0

    move-wide/from16 v16, v0

    .end local v0    # "thresholdInterval":J
    .restart local v16    # "thresholdInterval":J
    goto :goto_9

    .line 2402
    .end local v16    # "thresholdInterval":J
    :cond_14
    move-object/from16 v14, p0

    goto :goto_9

    .line 2333
    .end local v8    # "backgroundThrottleInterval":J
    .end local v13    # "shouldThrottleRequests":Z
    .end local v19    # "isForegroundOnlyMode":Z
    :catchall_0
    move-exception v0

    move-object v14, v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2323
    .end local v6    # "identity":J
    :cond_15
    move-object v14, v1

    .line 2437
    :goto_9
    invoke-virtual {v2, v5, v4}, Lcom/android/server/LocationManagerService$LocationProvider;->setRequestLocked(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 2440
    iget-object v0, v5, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    sput-object v0, Lcom/android/server/LocationManagerService;->mdmProviderRequest:Ljava/util/List;

    .line 2442
    return-void
.end method

.method private applyRequirementsLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2309
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v0

    .line 2310
    .local v0, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v0, :cond_0

    .line 2311
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 2313
    :cond_0
    return-void
.end method

.method private canCallerAccessMockLocation(Ljava/lang/String;)Z
    .locals 3
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 3854
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkPackageName(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2744
    const-string v0, "invalid package name: "

    if-eqz p1, :cond_3

    .line 2747
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2748
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2749
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2752
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 2753
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 2752
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2755
    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2750
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2745
    .end local v1    # "uid":I
    .end local v2    # "packages":[Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkResolutionLevelIsSufficientForGeofenceUse(I)V
    .locals 2
    .param p1, "allowedResolutionLevel"    # I

    .line 2072
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 2075
    return-void

    .line 2073
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Geofence usage requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "allowedResolutionLevel"    # I
    .param p2, "providerName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2110
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUseLocked(Ljava/lang/String;)I

    move-result v0

    .line 2111
    .local v0, "requiredResolutionLevel":I
    if-ge p1, v0, :cond_2

    .line 2112
    const/4 v1, 0x1

    const-string v2, "\""

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2120
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insufficient permission for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" location provider."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2114
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" location provider requires ACCESS_FINE_LOCATION permission."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2117
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" location provider requires ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2124
    :cond_2
    return-void
.end method

.method private createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;
    .locals 5
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "resolutionLevel"    # I
    .param p3, "callerHasLocationHardwarePermission"    # Z

    .line 2714
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    .line 2715
    .local v0, "sanitizedRequest":Landroid/location/LocationRequest;
    if-nez p3, :cond_0

    .line 2717
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setLowPowerMode(Z)Landroid/location/LocationRequest;

    .line 2719
    :cond_0
    const/4 v1, 0x2

    if-ge p2, v1, :cond_4

    .line 2720
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2725
    :cond_1
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_0

    .line 2722
    :cond_2
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 2723
    nop

    .line 2729
    :goto_0
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 2730
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 2732
    :cond_3
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 2733
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 2737
    :cond_4
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 2738
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 2740
    :cond_5
    return-object v0
.end method

.method private dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "+",
            "Lcom/android/server/LocationManagerService$LinkedListenerBase;",
            ">;)V"
        }
    .end annotation

    .line 4124
    .local p2, "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;+Lcom/android/server/LocationManagerService$LinkedListenerBase;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LinkedListenerBase;

    .line 4125
    .local v1, "listener":Lcom/android/server/LocationManagerService$LinkedListenerBase;
    iget-object v2, v1, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 4126
    .local v2, "callerIdentity":Lcom/android/server/location/CallerIdentity;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/location/CallerIdentity;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4128
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4126
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4129
    .end local v1    # "listener":Lcom/android/server/LocationManagerService$LinkedListenerBase;
    .end local v2    # "callerIdentity":Lcom/android/server/location/CallerIdentity;
    goto :goto_0

    .line 4130
    :cond_0
    return-void
.end method

.method private ensureFallbackFusedProviderPresentLocked([Ljava/lang/String;)V
    .locals 12
    .param p1, "pkgs"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 817
    const-string v0, "LocationManagerService"

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 818
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "systemPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 821
    .local v3, "sigSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    const/16 v7, 0x80

    invoke-virtual {v1, v4, v7, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 824
    .local v4, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 825
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 831
    .local v8, "packageName":Ljava/lang/String;
    const/16 v9, 0x40

    :try_start_0
    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 832
    .local v9, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v10, v3}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 833
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " resolves service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", but has wrong signature, ignoring"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    goto :goto_0

    .line 840
    .end local v9    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    nop

    .line 843
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v9, :cond_2

    .line 844
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found fused provider without metadata: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    goto :goto_0

    .line 848
    :cond_2
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const/4 v10, -0x1

    const-string/jumbo v11, "serviceVersion"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 850
    .local v9, "version":I
    if-nez v9, :cond_6

    .line 854
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_3

    .line 855
    sget-boolean v10, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fallback candidate not in /system: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 861
    :cond_3
    invoke-virtual {v1, v2, v8}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_4

    .line 863
    sget-boolean v10, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v10, :cond_0

    .line 864
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fallback candidate not signed the same as system: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 871
    :cond_4
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found fallback provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_5
    return-void

    .line 874
    :cond_6
    sget-boolean v10, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fallback candidate not version 0: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "version":I
    :cond_7
    goto/16 :goto_0

    .line 837
    .restart local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 838
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "missing package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    goto/16 :goto_0

    .line 878
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Unable to find a fused location provider that is in the system partition with version 0 and signed with the platform certificate. Such a package is needed to provide a default fused location provider in the event that no other fused location provider has been installed or is currently available. For example, coreOnly boot mode when decrypting the data partition. The fallback must also be marked coreApp=\"true\" in the manifest"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static foregroundAsString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "foreground"    # Z

    .line 755
    if-eqz p0, :cond_0

    const-string v0, "foreground"

    goto :goto_0

    :cond_0
    const-string v0, "background"

    :goto_0
    return-object v0
.end method

.method private getAllowedResolutionLevel(II)I
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 2056
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 2058
    const/4 v0, 0x2

    return v0

    .line 2059
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 2061
    const/4 v0, 0x1

    return v0

    .line 2063
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getCallerAllowedResolutionLevel()I
    .locals 2

    .line 2068
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method private getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;
    .locals 3
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2035
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 2036
    .local v1, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2037
    return-object v1

    .line 2039
    .end local v1    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_0
    goto :goto_0

    .line 2041
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMinimumResolutionLevelForProviderUseLocked(Ljava/lang/String;)I
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2079
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_8

    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2082
    :cond_0
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2086
    :cond_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 2087
    .local v3, "lp":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2088
    goto :goto_0

    .line 2091
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;

    move-result-object v4

    .line 2092
    .local v4, "properties":Lcom/android/internal/location/ProviderProperties;
    if-eqz v4, :cond_5

    .line 2093
    iget-boolean v5, v4, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    if-eqz v5, :cond_3

    .line 2095
    return v1

    .line 2096
    :cond_3
    iget-boolean v5, v4, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    if-nez v5, :cond_4

    iget-boolean v5, v4, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    if-eqz v5, :cond_5

    .line 2098
    :cond_4
    return v2

    .line 2101
    .end local v3    # "lp":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v4    # "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_5
    goto :goto_0

    .line 2104
    :cond_6
    return v1

    .line 2084
    :cond_7
    :goto_1
    return v2

    .line 2081
    :cond_8
    :goto_2
    return v1
.end method

.method private getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .locals 14
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "hideFromAppOps"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2695
    move-object v10, p0

    move-object v11, p1

    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/LocationManagerService$Receiver;

    .line 2696
    .local v12, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v12, :cond_0

    .line 2697
    new-instance v13, Lcom/android/server/LocationManagerService$Receiver;

    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;ZLcom/android/server/LocationManagerService$1;)V

    move-object v12, v13

    .line 2699
    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2701
    :cond_0
    return-object v12
.end method

.method private getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .locals 14
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "hideFromAppOps"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2655
    move-object v10, p0

    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 2656
    .local v11, "binder":Landroid/os/IBinder;
    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/LocationManagerService$Receiver;

    .line 2657
    .local v12, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v12, :cond_1

    .line 2658
    new-instance v13, Lcom/android/server/LocationManagerService$Receiver;

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;ZLcom/android/server/LocationManagerService$1;)V

    move-object v12, v13

    .line 2660
    invoke-virtual {v12}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0, v12}, Lcom/android/server/LocationManagerService;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2662
    const/4 v0, 0x0

    return-object v0

    .line 2664
    :cond_0
    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2666
    :cond_1
    return-object v12
.end method

.method private getReceiverLocked(Landroid/location/LocationRequest;Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .locals 18
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "hideFromAppOps"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2674
    move-object/from16 v10, p0

    invoke-interface/range {p2 .. p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 2675
    .local v11, "binder":Landroid/os/IBinder;
    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 2676
    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_2

    .line 2677
    iget-object v1, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    move-object/from16 v12, p1

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    invoke-static {v1, v12, v13, v14, v15}, Lcom/android/server/LocationManagerServiceInjector;->getReceiverLocked(Ljava/util/HashMap;Landroid/location/LocationRequest;IILjava/lang/String;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v16

    .line 2678
    .end local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .local v16, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v16, :cond_1

    .line 2679
    new-instance v17, Lcom/android/server/LocationManagerService$Receiver;

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;ZLcom/android/server/LocationManagerService$1;)V

    .line 2680
    .end local v16    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .restart local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v10, v1, v0}, Lcom/android/server/LocationManagerService;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2681
    const/4 v1, 0x0

    return-object v1

    .line 2683
    :cond_0
    iget-object v1, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2685
    .end local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .restart local v16    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_1
    return-object v16

    .line 2676
    .end local v16    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .restart local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_2
    move-object/from16 v12, p1

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    .line 2688
    :goto_0
    return-object v0
.end method

.method private getResolutionPermission(I)Ljava/lang/String;
    .locals 1
    .param p1, "resolutionLevel"    # I

    .line 2045
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2051
    const/4 v0, 0x0

    return-object v0

    .line 2047
    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    return-object v0

    .line 2049
    :cond_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object v0
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 30
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "provider"    # Lcom/android/server/LocationManagerService$LocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3601
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3602
    return-void

    .line 3604
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->isComplete()Z

    move-result v3

    const-string v4, "LocationManagerService"

    if-nez v3, :cond_1

    .line 3605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping incomplete location: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    return-void

    .line 3611
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3612
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isPassiveLocked()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3613
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    invoke-virtual {v3, v1}, Lcom/android/server/location/PassiveProvider;->updateLocation(Landroid/location/Location;)V

    .line 3619
    :cond_2
    sget-boolean v3, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v3, :cond_3

    const-string v3, "incoming location: XXXXXXXXXXXXXXXXXXXXXXX"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3624
    .local v5, "now":J
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "gps"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3625
    invoke-virtual {v0, v5, v6}, Lcom/android/server/LocationManagerService;->mdmCheckIfLossSv(J)V

    .line 3631
    :cond_4
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mdmLmsInjector:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmSaveOnLocationChanged(Ljava/lang/String;J)Z

    .line 3634
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3635
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/android/server/LocationManagerService;->updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V

    .line 3639
    :cond_5
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    .line 3640
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3639
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 3641
    .local v3, "lastLocationCoarseInterval":Landroid/location/Location;
    if-nez v3, :cond_6

    .line 3642
    new-instance v7, Landroid/location/Location;

    invoke-direct {v7, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v3, v7

    .line 3644
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3645
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3648
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    .line 3649
    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 3650
    .local v7, "timeDiffNanos":J
    const-wide v9, 0x8bb2c97000L

    cmp-long v9, v7, v9

    if-lez v9, :cond_7

    .line 3651
    invoke-virtual {v3, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 3656
    :cond_7
    nop

    .line 3657
    const-string/jumbo v9, "noGPSLocation"

    invoke-virtual {v3, v9}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 3660
    .local v9, "noGPSLocation":Landroid/location/Location;
    iget-object v10, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 3661
    .local v10, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v10, :cond_27

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_8

    move-object/from16 v18, v3

    move-wide/from16 v19, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_a

    .line 3664
    :cond_8
    const/4 v11, 0x0

    .line 3665
    .local v11, "coarseLocation":Landroid/location/Location;
    if-eqz v9, :cond_9

    .line 3666
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v12, v9}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v11

    .line 3669
    :cond_9
    const/4 v12, 0x0

    .line 3670
    .local v12, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    const/4 v13, 0x0

    .line 3673
    .local v13, "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_23

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3674
    .local v15, "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v1, v15, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 3675
    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/16 v17, 0x0

    .line 3677
    .local v17, "receiverDead":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v18

    if-nez v18, :cond_a

    invoke-direct {v0, v15}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 3678
    move-object/from16 v18, v3

    move-wide/from16 v19, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_4

    .line 3681
    :cond_a
    move-object/from16 v18, v3

    .end local v3    # "lastLocationCoarseInterval":Landroid/location/Location;
    .local v18, "lastLocationCoarseInterval":Landroid/location/Location;
    iget-object v3, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v3, v3, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3682
    .local v3, "receiverUserId":I
    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v19

    if-nez v19, :cond_c

    move-wide/from16 v19, v7

    .end local v7    # "timeDiffNanos":J
    .local v19, "timeDiffNanos":J
    iget-object v7, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v7, v7, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 3683
    invoke-virtual {v0, v7}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 3684
    sget-boolean v7, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v7, :cond_b

    .line 3685
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skipping loc update for background user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " (current user: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v8, v8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_4

    .line 3684
    :cond_b
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_4

    .line 3682
    .end local v19    # "timeDiffNanos":J
    .restart local v7    # "timeDiffNanos":J
    :cond_c
    move-wide/from16 v19, v7

    .line 3692
    .end local v7    # "timeDiffNanos":J
    .restart local v19    # "timeDiffNanos":J
    :cond_d
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v8, v8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 3693
    sget-boolean v7, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v7, :cond_e

    .line 3694
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skipping loc update for blacklisted app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v8, v8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_4

    .line 3693
    :cond_e
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_4

    .line 3702
    :cond_f
    iget-object v7, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v7, v7, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v7}, Lcom/android/server/am/OpBGFrozenInjector;->isBlockedGpsUid(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 3703
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uid block  uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v8, v8, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " package ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v8, v8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_4

    .line 3710
    :cond_10
    iget v7, v1, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    const/4 v8, 0x2

    if-ge v7, v8, :cond_11

    .line 3711
    move-object v7, v11

    .local v7, "notifyLocation":Landroid/location/Location;
    goto :goto_1

    .line 3713
    .end local v7    # "notifyLocation":Landroid/location/Location;
    :cond_11
    move-object/from16 v7, p1

    .line 3715
    .restart local v7    # "notifyLocation":Landroid/location/Location;
    :goto_1
    if-eqz v7, :cond_18

    .line 3716
    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/Location;

    move-result-object v8

    .line 3717
    .local v8, "lastLoc":Landroid/location/Location;
    if-eqz v8, :cond_13

    .line 3718
    invoke-static {v7, v8, v15, v5, v6}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafeLocked(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z

    move-result v22

    if-eqz v22, :cond_12

    goto :goto_2

    :cond_12
    move/from16 v22, v3

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_5

    .line 3719
    :cond_13
    :goto_2
    if-nez v8, :cond_14

    .line 3720
    move/from16 v22, v3

    .end local v3    # "receiverUserId":I
    .local v22, "receiverUserId":I
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v7}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v8, v3

    .line 3721
    invoke-static {v15, v8}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5002(Lcom/android/server/LocationManagerService$UpdateRecord;Landroid/location/Location;)Landroid/location/Location;

    goto :goto_3

    .line 3723
    .end local v22    # "receiverUserId":I
    .restart local v3    # "receiverUserId":I
    :cond_14
    move/from16 v22, v3

    .end local v3    # "receiverUserId":I
    .restart local v22    # "receiverUserId":I
    invoke-virtual {v8, v7}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 3728
    :goto_3
    iget-object v3, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v3, v3, Lcom/android/server/location/CallerIdentity;->mPid:I

    move-object/from16 v23, v8

    .end local v8    # "lastLoc":Landroid/location/Location;
    .local v23, "lastLoc":Landroid/location/Location;
    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v8, v8, Lcom/android/server/location/CallerIdentity;->mUid:I

    move-object/from16 v24, v9

    .end local v9    # "noGPSLocation":Landroid/location/Location;
    .local v24, "noGPSLocation":Landroid/location/Location;
    iget-object v9, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v9, v9, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    move-object/from16 v25, v10

    .end local v10    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v25, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    iget v10, v1, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-direct {v0, v3, v8, v9, v10}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 3733
    sget-boolean v3, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v3, :cond_15

    .line 3734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skipping loc update for no op app: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v8, v8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    .end local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v15    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v17    # "receiverDead":Z
    .end local v18    # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v19    # "timeDiffNanos":J
    .end local v22    # "receiverUserId":I
    .end local v23    # "lastLoc":Landroid/location/Location;
    .end local v24    # "noGPSLocation":Landroid/location/Location;
    .end local v25    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v3, "lastLocationCoarseInterval":Landroid/location/Location;
    .local v7, "timeDiffNanos":J
    .restart local v9    # "noGPSLocation":Landroid/location/Location;
    .restart local v10    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_15
    :goto_4
    move-object/from16 v1, p1

    move-object/from16 v3, v18

    move-wide/from16 v7, v19

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    .end local v3    # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v7    # "timeDiffNanos":J
    .end local v9    # "noGPSLocation":Landroid/location/Location;
    .end local v10    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v18    # "lastLocationCoarseInterval":Landroid/location/Location;
    .restart local v19    # "timeDiffNanos":J
    .restart local v24    # "noGPSLocation":Landroid/location/Location;
    .restart local v25    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    goto/16 :goto_0

    .line 3739
    .restart local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .local v7, "notifyLocation":Landroid/location/Location;
    .restart local v15    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v17    # "receiverDead":Z
    .restart local v22    # "receiverUserId":I
    .restart local v23    # "lastLoc":Landroid/location/Location;
    :cond_16
    invoke-virtual {v1, v7}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 3740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException calling onLocationChanged on "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    const/4 v3, 0x1

    move/from16 v17, v3

    .line 3744
    :cond_17
    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationRequest;->decrementNumUpdates()V

    goto :goto_5

    .line 3715
    .end local v22    # "receiverUserId":I
    .end local v23    # "lastLoc":Landroid/location/Location;
    .end local v24    # "noGPSLocation":Landroid/location/Location;
    .end local v25    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v3, "receiverUserId":I
    .restart local v9    # "noGPSLocation":Landroid/location/Location;
    .restart local v10    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_18
    move/from16 v22, v3

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    .line 3750
    .end local v3    # "receiverUserId":I
    .end local v9    # "noGPSLocation":Landroid/location/Location;
    .end local v10    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v22    # "receiverUserId":I
    .restart local v24    # "noGPSLocation":Landroid/location/Location;
    .restart local v25    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :goto_5
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "location_disable_status_callbacks"

    const/4 v9, 0x1

    invoke-static {v3, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1c

    .line 3752
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getStatusUpdateTimeLocked()J

    move-result-wide v8

    .line 3753
    .local v8, "newStatusUpdateTime":J
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3754
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {v2, v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getStatusLocked(Landroid/os/Bundle;)I

    move-result v10

    .line 3756
    .local v10, "status":I
    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5100(Lcom/android/server/LocationManagerService$UpdateRecord;)J

    move-result-wide v26

    .line 3757
    .local v26, "prevStatusUpdateTime":J
    cmp-long v16, v8, v26

    if-lez v16, :cond_1b

    const-wide/16 v28, 0x0

    cmp-long v16, v26, v28

    if-nez v16, :cond_19

    move-object/from16 v16, v7

    const/4 v7, 0x2

    .end local v7    # "notifyLocation":Landroid/location/Location;
    .local v16, "notifyLocation":Landroid/location/Location;
    if-eq v10, v7, :cond_1d

    goto :goto_6

    .end local v16    # "notifyLocation":Landroid/location/Location;
    .restart local v7    # "notifyLocation":Landroid/location/Location;
    :cond_19
    move-object/from16 v16, v7

    .line 3760
    .end local v7    # "notifyLocation":Landroid/location/Location;
    .restart local v16    # "notifyLocation":Landroid/location/Location;
    :goto_6
    invoke-static {v15, v8, v9}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5102(Lcom/android/server/LocationManagerService$UpdateRecord;J)J

    .line 3761
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v10, v3}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 3762
    const/16 v17, 0x1

    .line 3763
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    .end local v3    # "extras":Landroid/os/Bundle;
    .local v21, "extras":Landroid/os/Bundle;
    const-string v3, "RemoteException calling onStatusChanged on "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3761
    .end local v21    # "extras":Landroid/os/Bundle;
    .restart local v3    # "extras":Landroid/os/Bundle;
    :cond_1a
    move-object/from16 v21, v3

    .end local v3    # "extras":Landroid/os/Bundle;
    .restart local v21    # "extras":Landroid/os/Bundle;
    goto :goto_7

    .line 3757
    .end local v16    # "notifyLocation":Landroid/location/Location;
    .end local v21    # "extras":Landroid/os/Bundle;
    .restart local v3    # "extras":Landroid/os/Bundle;
    .restart local v7    # "notifyLocation":Landroid/location/Location;
    :cond_1b
    move-object/from16 v21, v3

    move-object/from16 v16, v7

    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v7    # "notifyLocation":Landroid/location/Location;
    .restart local v16    # "notifyLocation":Landroid/location/Location;
    .restart local v21    # "extras":Landroid/os/Bundle;
    goto :goto_7

    .line 3750
    .end local v8    # "newStatusUpdateTime":J
    .end local v10    # "status":I
    .end local v16    # "notifyLocation":Landroid/location/Location;
    .end local v21    # "extras":Landroid/os/Bundle;
    .end local v26    # "prevStatusUpdateTime":J
    .restart local v7    # "notifyLocation":Landroid/location/Location;
    :cond_1c
    move-object/from16 v16, v7

    .line 3769
    .end local v7    # "notifyLocation":Landroid/location/Location;
    .restart local v16    # "notifyLocation":Landroid/location/Location;
    :cond_1d
    :goto_7
    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v3

    if-lez v3, :cond_1e

    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-gez v3, :cond_20

    .line 3770
    :cond_1e
    if-nez v13, :cond_1f

    .line 3771
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    .line 3773
    :cond_1f
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3776
    :cond_20
    if-eqz v17, :cond_22

    .line 3777
    if-nez v12, :cond_21

    .line 3778
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    .line 3780
    :cond_21
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 3781
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3784
    .end local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v15    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v16    # "notifyLocation":Landroid/location/Location;
    .end local v17    # "receiverDead":Z
    .end local v22    # "receiverUserId":I
    :cond_22
    move-object/from16 v1, p1

    move-object/from16 v3, v18

    move-wide/from16 v7, v19

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    goto/16 :goto_0

    .line 3787
    .end local v18    # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v19    # "timeDiffNanos":J
    .end local v24    # "noGPSLocation":Landroid/location/Location;
    .end local v25    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v3, "lastLocationCoarseInterval":Landroid/location/Location;
    .local v7, "timeDiffNanos":J
    .restart local v9    # "noGPSLocation":Landroid/location/Location;
    .local v10, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_23
    move-object/from16 v18, v3

    move-wide/from16 v19, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    .end local v3    # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v7    # "timeDiffNanos":J
    .end local v9    # "noGPSLocation":Landroid/location/Location;
    .end local v10    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v18    # "lastLocationCoarseInterval":Landroid/location/Location;
    .restart local v19    # "timeDiffNanos":J
    .restart local v24    # "noGPSLocation":Landroid/location/Location;
    .restart local v25    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v12, :cond_24

    .line 3788
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 3789
    .local v3, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 3790
    .end local v3    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_8

    .line 3792
    :cond_24
    if-eqz v13, :cond_26

    .line 3793
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3794
    .local v3, "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4800(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    .line 3795
    .end local v3    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    goto :goto_9

    .line 3796
    :cond_25
    invoke-direct {v0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 3798
    :cond_26
    return-void

    .line 3661
    .end local v11    # "coarseLocation":Landroid/location/Location;
    .end local v12    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v13    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v18    # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v19    # "timeDiffNanos":J
    .end local v24    # "noGPSLocation":Landroid/location/Location;
    .end local v25    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v3, "lastLocationCoarseInterval":Landroid/location/Location;
    .restart local v7    # "timeDiffNanos":J
    .restart local v9    # "noGPSLocation":Landroid/location/Location;
    .restart local v10    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_27
    move-object/from16 v18, v3

    move-wide/from16 v19, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    .end local v3    # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v7    # "timeDiffNanos":J
    .end local v9    # "noGPSLocation":Landroid/location/Location;
    .end local v10    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v18    # "lastLocationCoarseInterval":Landroid/location/Location;
    .restart local v19    # "timeDiffNanos":J
    .restart local v24    # "noGPSLocation":Landroid/location/Location;
    .restart local v25    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :goto_a
    return-void
.end method

.method private hasGnssPermissions(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1891
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1892
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    .line 1893
    .local v1, "allowedResolutionLevel":I
    const-string v2, "gps"

    invoke-direct {p0, v1, v2}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 1897
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1898
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1899
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1901
    .local v4, "identity":J
    :try_start_1
    invoke-virtual {p0, v2, v3, p1, v1}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1903
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 1901
    return v6

    .line 1903
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    throw v6

    .line 1905
    .end local v1    # "allowedResolutionLevel":I
    .end local v2    # "pid":I
    .end local v3    # "uid":I
    .end local v4    # "identity":J
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private initializeLocked()V
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 406
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 407
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 408
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 409
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    .line 411
    new-instance v0, Lcom/android/server/location/LocationFudger;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/LocationFudger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    .line 412
    new-instance v0, Lcom/android/server/location/LocationBlacklist;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/LocationBlacklist;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    .line 413
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0}, Lcom/android/server/location/LocationBlacklist;->init()V

    .line 414
    new-instance v0, Lcom/android/server/location/GeofenceManager;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    .line 417
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->initializeProvidersLocked()V

    .line 420
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v1, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$2PZQdsle7L3JDh5TZyL5YAyDqTk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$2PZQdsle7L3JDh5TZyL5YAyDqTk;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 446
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$tHPgS5c0niUhGntiX8gOnWrZpg8;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$tHPgS5c0niUhGntiX8gOnWrZpg8;-><init>(Lcom/android/server/LocationManagerService;)V

    const/16 v4, 0x7d

    invoke-virtual {v0, v1, v4}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 457
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 458
    const-string/jumbo v1, "location_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$2;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 457
    const/4 v5, -0x1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 467
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 468
    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$3;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/android/server/LocationManagerService$3;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 467
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 477
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 478
    const-string/jumbo v1, "location_background_throttle_interval_ms"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$4;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/android/server/LocationManagerService$4;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 477
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 488
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 489
    const-string/jumbo v1, "location_background_throttle_package_whitelist"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$5;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/android/server/LocationManagerService$5;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 488
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 500
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 501
    const-string/jumbo v1, "location_ignore_settings_package_whitelist"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$6;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/android/server/LocationManagerService$6;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 500
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 512
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 513
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 514
    .local v0, "localPowerManager":Landroid/os/PowerManagerInternal;
    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$g2YvHnuXGNr_JWSge7Toq3BS9cY;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$g2YvHnuXGNr_JWSge7Toq3BS9cY;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 525
    new-instance v1, Lcom/android/server/LocationManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$7;-><init>(Lcom/android/server/LocationManagerService;)V

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 532
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/LocationManagerService$7;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 534
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 535
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/LocationManagerService$8;

    invoke-direct {v4, p0}, Lcom/android/server/LocationManagerService$8;-><init>(Lcom/android/server/LocationManagerService;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 568
    new-instance v3, Lcom/android/server/LocationManagerServiceInjector;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/LocationManagerServiceInjector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/server/LocationManagerServiceInjector;->listenStatusOfEmergency()V

    .line 574
    const/16 v3, -0x2710

    iput v3, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 575
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->onUserChangedLocked(I)V

    .line 578
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onBackgroundThrottleWhitelistChangedLocked()V

    .line 579
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onIgnoreSettingsWhitelistChangedLocked()V

    .line 580
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getLocationPowerSaveMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->onBatterySaverModeChangedLocked(I)V

    .line 584
    new-instance v2, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p0}, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;-><init>(Lcom/android/server/LocationManagerService;Landroid/content/Context;Lcom/android/server/LocationManagerService;)V

    .line 585
    .local v2, "mInner":Lcom/android/server/LocationManagerService$LocationManagerServiceInner;
    invoke-static {v2}, Lcom/android/server/LocationManagerServiceInjector;->prepare(Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V

    .line 587
    invoke-static {p0, v2}, Lcom/android/server/am/OpBGFrozenInjector;->initFromLMS(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V

    .line 589
    return-void
.end method

.method private initializeProvidersLocked()V
    .locals 32
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 889
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/LocationManagerService$LocationProvider;

    const/4 v2, 0x0

    const-string/jumbo v3, "passive"

    invoke-direct {v1, v0, v3, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 890
    .local v1, "passiveProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 891
    new-instance v3, Lcom/android/server/location/PassiveProvider;

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    .line 892
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    invoke-virtual {v1, v3}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 894
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->isSupported()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 896
    new-instance v3, Lcom/android/server/LocationManagerService$LocationProvider;

    const-string v5, "gps"

    invoke-direct {v3, v0, v5, v4, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;ZLcom/android/server/LocationManagerService$1;)V

    .line 897
    .local v3, "gnssProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 900
    new-instance v5, Lcom/android/server/location/GnssLocationProvider;

    iget-object v6, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 902
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Lcom/android/server/location/GnssLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Landroid/os/Looper;)V

    .line 903
    .local v5, "gnssProvider":Lcom/android/server/location/GnssLocationProvider;
    invoke-virtual {v3, v5}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 905
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    .line 906
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssBatchingProvider()Lcom/android/server/location/GnssBatchingProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    .line 907
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssMetricsProvider()Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    .line 908
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssCapabilitiesProvider()Lcom/android/server/location/GnssCapabilitiesProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    .line 909
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssStatusProvider()Lcom/android/server/location/GnssStatusListenerHelper;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 910
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 911
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 912
    nop

    .line 913
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssMeasurementCorrectionsProvider()Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    .line 914
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 915
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    .line 920
    .end local v3    # "gnssProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v5    # "gnssProvider":Lcom/android/server/location/GnssLocationProvider;
    :cond_0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->isSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 921
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mdmLmsInjector:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    invoke-virtual {v3}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->setGnssProvider()V

    .line 936
    :cond_1
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 937
    .local v3, "resources":Landroid/content/res/Resources;
    const v5, 0x107005c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 939
    .local v6, "pkgs":[Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/LocationManagerService;->D:Z

    const-string v8, "LocationManagerService"

    if-eqz v7, :cond_2

    .line 940
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "certificates for location providers pulled from: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 940
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_2
    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;->ensureFallbackFusedProviderPresentLocked([Ljava/lang/String;)V

    .line 947
    new-instance v7, Lcom/android/server/LocationManagerService$LocationProvider;

    const-string/jumbo v9, "network"

    invoke-direct {v7, v0, v9, v4, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;ZLcom/android/server/LocationManagerService$1;)V

    .line 948
    .local v7, "networkProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    iget-object v10, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v13, 0x1110077

    const v14, 0x104019a

    const v15, 0x107005c

    const-string v12, "com.android.location.service.v3.NetworkLocationProvider"

    move-object v11, v7

    invoke-static/range {v10 .. v15}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v9

    .line 955
    .local v9, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v9, :cond_3

    .line 956
    iget-object v10, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    invoke-direct {v0, v7}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 958
    invoke-virtual {v7, v9}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    goto :goto_0

    .line 960
    :cond_3
    const-string/jumbo v10, "no network location provider found"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v10, v0, Lcom/android/server/LocationManagerService;->mdmLmsInjector:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    invoke-virtual {v10}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->setNetworkProvider()V

    .line 968
    :goto_0
    new-instance v10, Lcom/android/server/LocationManagerService$LocationProvider;

    const-string v11, "fused"

    invoke-direct {v10, v0, v11, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 969
    .local v10, "fusedProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v15, 0x111006f

    const v16, 0x1040180

    const v17, 0x107005c

    const-string v14, "com.android.location.service.FusedLocationProvider"

    move-object v13, v10

    invoke-static/range {v12 .. v17}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v11

    .line 976
    .local v11, "fusedProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v11, :cond_4

    .line 977
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    invoke-direct {v0, v10}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 979
    invoke-virtual {v10, v11}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    goto :goto_1

    .line 981
    :cond_4
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Location service needs a fused location provider"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "no fused location provider found"

    invoke-static {v8, v13, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 985
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mdmLmsInjector:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    invoke-virtual {v12}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->setFusedProvider()V

    .line 990
    :goto_1
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v13, 0x1110070

    const v14, 0x1040181

    invoke-static {v12, v13, v14, v5}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;III)Lcom/android/server/location/GeocoderProxy;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 994
    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v5, :cond_5

    .line 995
    const-string/jumbo v5, "no geocoder provider found"

    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_5
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v13, 0x1110071

    const v14, 0x1040182

    const v15, 0x107005c

    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    const/16 v17, 0x0

    move-object/from16 v16, v5

    invoke-static/range {v12 .. v17}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;IIILandroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    move-result-object v5

    .line 1005
    .local v5, "provider":Lcom/android/server/location/GeofenceProxy;
    if-nez v5, :cond_6

    .line 1006
    const-string v12, "Unable to bind FLP Geofence proxy."

    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_6
    const v12, 0x1040151

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    .line 1011
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    if-eqz v12, :cond_7

    .line 1012
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".nlp:ready"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/LocationManagerService;->mComboNlpReadyMarker:Ljava/lang/String;

    .line 1013
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".nlp:screen"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/LocationManagerService;->mComboNlpScreenMarker:Ljava/lang/String;

    .line 1017
    :cond_7
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->isSupported()Z

    move-result v12

    .line 1018
    .local v12, "activityRecognitionHardwareIsSupported":Z
    const/4 v13, 0x0

    .line 1019
    .local v13, "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    if-eqz v12, :cond_8

    .line 1020
    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/hardware/location/ActivityRecognitionHardware;->getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v13

    move-object/from16 v19, v13

    goto :goto_2

    .line 1022
    :cond_8
    const-string v14, "Hardware Activity-Recognition not supported."

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v13

    .line 1024
    .end local v13    # "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    .local v19, "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    :goto_2
    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v16, 0x1110068

    const v17, 0x1040136

    const v18, 0x107005c

    move v14, v12

    move-object/from16 v15, v19

    invoke-static/range {v13 .. v18}, Lcom/android/server/location/ActivityRecognitionProxy;->createAndBind(Landroid/content/Context;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;

    move-result-object v13

    .line 1031
    .local v13, "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    if-nez v13, :cond_9

    .line 1032
    const-string v14, "Unable to bind ActivityRecognitionProxy."

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_9
    const v8, 0x1070094

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 1037
    .local v8, "testProviderStrings":[Ljava/lang/String;
    array-length v14, v8

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v14, :cond_a

    aget-object v4, v8, v2

    .line 1038
    .local v4, "testProviderString":Ljava/lang/String;
    const-string v15, ","

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1039
    .local v15, "fragments":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v20, v15, v18

    move-object/from16 v21, v1

    .end local v1    # "passiveProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    .local v21, "passiveProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "name":Ljava/lang/String;
    new-instance v20, Lcom/android/internal/location/ProviderProperties;

    const/16 v17, 0x1

    aget-object v22, v15, v17

    .line 1041
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v23

    const/16 v22, 0x2

    aget-object v22, v15, v22

    .line 1042
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    const/16 v22, 0x3

    aget-object v22, v15, v22

    .line 1043
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    const/16 v22, 0x4

    aget-object v22, v15, v22

    .line 1044
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v26

    const/16 v22, 0x5

    aget-object v22, v15, v22

    .line 1045
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v27

    const/16 v22, 0x6

    aget-object v22, v15, v22

    .line 1046
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v28

    const/16 v22, 0x7

    aget-object v22, v15, v22

    .line 1047
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v29

    const/16 v22, 0x8

    aget-object v22, v15, v22

    .line 1048
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/16 v22, 0x9

    aget-object v22, v15, v22

    .line 1049
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v22, v20

    invoke-direct/range {v22 .. v31}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 1050
    .local v22, "properties":Lcom/android/internal/location/ProviderProperties;
    move-object/from16 v20, v3

    .end local v3    # "resources":Landroid/content/res/Resources;
    .local v20, "resources":Landroid/content/res/Resources;
    new-instance v3, Lcom/android/server/LocationManagerService$LocationProvider;

    move-object/from16 v23, v4

    const/4 v4, 0x0

    .end local v4    # "testProviderString":Ljava/lang/String;
    .local v23, "testProviderString":Ljava/lang/String;
    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 1051
    .local v3, "testProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 1052
    new-instance v4, Lcom/android/server/location/MockProvider;

    move-object/from16 v24, v1

    .end local v1    # "name":Ljava/lang/String;
    .local v24, "name":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    .end local v22    # "properties":Lcom/android/internal/location/ProviderProperties;
    .local v0, "properties":Lcom/android/internal/location/ProviderProperties;
    invoke-direct {v4, v1, v3, v0}, Lcom/android/server/location/MockProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Lcom/android/internal/location/ProviderProperties;)V

    .line 1037
    .end local v0    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v3    # "testProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v15    # "fragments":[Ljava/lang/String;
    .end local v23    # "testProviderString":Ljava/lang/String;
    .end local v24    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v17

    move-object/from16 v3, v20

    move-object/from16 v1, v21

    goto/16 :goto_3

    .line 1054
    .end local v20    # "resources":Landroid/content/res/Resources;
    .end local v21    # "passiveProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    .local v1, "passiveProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    .local v3, "resources":Landroid/content/res/Resources;
    :cond_a
    return-void
.end method

.method private isCurrentProfileLocked(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method private static isImportanceForeground(I)Z
    .locals 1
    .param p0, "importance"    # I

    .line 759
    const/16 v0, 0x7d

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLocationEnabled()Z
    .locals 1

    .line 3523
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result v0

    return v0
.end method

.method private isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/LocationManagerService$UpdateRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2499
    invoke-static {p1}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2500
    const/4 v0, 0x0

    return v0

    .line 2503
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2505
    const/4 v0, 0x1

    return v0

    .line 2508
    :cond_1
    iget-object v0, p1, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z
    .locals 3
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2477
    iget v0, p1, Lcom/android/server/location/CallerIdentity;->mUid:I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 2478
    return v1

    .line 2488
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    iget-object v2, p1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    const-string v2, "cttl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2493
    :cond_1
    iget-object v0, p1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2490
    :cond_2
    :goto_0
    return v1
.end method

.method private static isValidWorkSource(Landroid/os/WorkSource;)Z
    .locals 4
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .line 2448
    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 2451
    invoke-virtual {p0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 2455
    :cond_1
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object v0

    .line 2456
    .local v0, "workChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2457
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 2456
    :goto_1
    return v1
.end method

.method private linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "linkedListener"    # Lcom/android/server/LocationManagerService$LinkedListenerBase;

    .line 3346
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3347
    const/4 v0, 0x1

    return v0

    .line 3348
    :catch_0
    move-exception v1

    .line 3351
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not link "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mListenerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " death callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3352
    return v0
.end method

.method public static mdmCacheClear()V
    .locals 1

    .line 4159
    sget-object v0, Lcom/android/server/LocationManagerService;->mdmProviderRequest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4160
    return-void
.end method

.method public static mdmGetProviderRequestList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation

    .line 4151
    sget-object v0, Lcom/android/server/LocationManagerService;->mdmProviderRequest:Ljava/util/List;

    return-object v0
.end method

.method private onAppOpChangedLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    .line 594
    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 595
    .end local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_0

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 597
    .local v1, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 598
    .end local v1    # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_1

    .line 599
    :cond_1
    return-void
.end method

.method private onBackgroundThrottleIntervalChangedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 764
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 765
    .local v1, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 766
    .end local v1    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_0

    .line 767
    :cond_0
    return-void
.end method

.method private onBackgroundThrottleWhitelistChangedLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 772
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    .line 773
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowUnthrottledLocation()Landroid/util/ArraySet;

    move-result-object v1

    .line 772
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 775
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 776
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 775
    const-string/jumbo v1, "location_background_throttle_package_whitelist"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 782
    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 783
    .local v2, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 784
    .end local v2    # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_0

    .line 785
    :cond_1
    return-void
.end method

.method private onBatterySaverModeChangedLocked(I)V
    .locals 2
    .param p1, "newLocationMode"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 610
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery Saver location mode changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    .line 613
    invoke-static {v1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-static {p1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    iget v0, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    if-ne v0, p1, :cond_1

    .line 618
    return-void

    .line 621
    :cond_1
    iput p1, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    .line 622
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 623
    .local v1, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 624
    .end local v1    # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_0

    .line 625
    :cond_2
    return-void
.end method

.method private onIgnoreSettingsWhitelistChangedLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "lock"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 790
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    .line 791
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowIgnoreLocationSettings()Landroid/util/ArraySet;

    move-result-object v1

    .line 790
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 793
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 794
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 793
    const-string/jumbo v1, "location_ignore_settings_package_whitelist"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 800
    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 801
    .local v2, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 802
    .end local v2    # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_0

    .line 803
    :cond_1
    return-void
.end method

.method private onLocationModeChangedLocked(Z)V
    .locals 3
    .param p1, "broadcast"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 638
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "location enabled is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 643
    .local v1, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onLocationModeChangedLocked()V

    .line 644
    .end local v1    # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_0

    .line 646
    :cond_1
    if-eqz p1, :cond_2

    .line 649
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mdmLmsInjector:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmReportLocSwitchData()V

    .line 657
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mdmLmsInjector:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->getProviderFlag()I

    move-result v0

    if-eqz v0, :cond_3

    .line 658
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mdmLmsInjector:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    invoke-virtual {v0}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmPrReport()V

    .line 661
    :cond_3
    return-void
.end method

.method private onPackageDisappearedLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 672
    const/4 v0, 0x0

    .line 674
    .local v0, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 675
    .local v2, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, v3, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 676
    if-nez v0, :cond_0

    .line 677
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 679
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    .end local v2    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_1
    goto :goto_0

    .line 684
    :cond_2
    if-eqz v0, :cond_3

    .line 685
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 686
    .restart local v2    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 687
    .end local v2    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_1

    .line 689
    :cond_3
    return-void
.end method

.method private onPermissionsChangedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 604
    .local v1, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 605
    .end local v1    # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_0

    .line 606
    :cond_0
    return-void
.end method

.method private onProviderAllowedChangedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 666
    .local v1, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onAllowedChangedLocked()V

    .line 667
    .end local v1    # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_0

    .line 668
    :cond_0
    return-void
.end method

.method private onScreenStateChangedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 629
    iget v0, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 631
    .local v1, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 632
    .end local v1    # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_0

    .line 634
    :cond_0
    return-void
.end method

.method private onUidImportanceChangedLocked(II)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "importance"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 693
    invoke-static {p2}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v6

    .line 694
    .local v6, "foreground":Z
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    move-object v7, v0

    .line 695
    .local v7, "affectedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 696
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 697
    .local v2, "provider":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 698
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v5, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->mUid:I

    if-ne v5, p1, :cond_1

    .line 699
    invoke-static {v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-eq v5, v6, :cond_1

    .line 700
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_0

    .line 701
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "request from uid "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is now "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->foregroundAsString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 701
    const-string v8, "LocationManagerService"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    invoke-static {v4, v6}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1600(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    .line 706
    iget-object v5, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 707
    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 710
    .end local v4    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1
    goto :goto_1

    .line 711
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    .end local v2    # "provider":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 712
    :cond_3
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 713
    .local v1, "provider":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 714
    .end local v1    # "provider":Ljava/lang/String;
    goto :goto_2

    .line 716
    :cond_4
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    sget-object v3, Lcom/android/server/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;->INSTANCE:Lcom/android/server/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;

    move-object v0, p0

    move v4, p1

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 720
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    sget-object v3, Lcom/android/server/-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY;->INSTANCE:Lcom/android/server/-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 724
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    sget-object v3, Lcom/android/server/-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs;->INSTANCE:Lcom/android/server/-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 726
    return-void
.end method

.method private onUserChangedLocked(I)V
    .locals 3
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1058
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    if-ne v0, p1, :cond_0

    .line 1059
    return-void

    .line 1062
    :cond_0
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_1

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foreground user is changing to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 1068
    .local v1, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUserChangingLocked()V

    .line 1069
    .end local v1    # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_0

    .line 1071
    :cond_2
    iput p1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 1072
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onUserProfilesChangedLocked()V

    .line 1074
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationBlacklist;->switchUser(I)V

    .line 1077
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->onLocationModeChangedLocked(Z)V

    .line 1078
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onProviderAllowedChangedLocked()V

    .line 1081
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 1082
    .local v2, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v2, v0}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1083
    .end local v2    # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_1

    .line 1084
    :cond_3
    return-void
.end method

.method private onUserProfilesChangedLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    .line 808
    return-void
.end method

.method private removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener::Landroid/os/IInterface;",
            ">(TT",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TT",
            "Listener;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "TT",
            "Listener;",
            ">;>;)V"
        }
    .end annotation

    .line 3308
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p2, "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p3, "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    .line 3309
    return-void

    .line 3312
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3313
    .local v3, "binder":Landroid/os/IBinder;
    iget-object v4, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3314
    move-object/from16 v5, p3

    :try_start_0
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$LinkedListener;

    move-object v6, v0

    .line 3315
    .local v6, "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    if-nez v6, :cond_1

    .line 3316
    monitor-exit v4

    return-void

    .line 3318
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3320
    .local v7, "identity":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-eq v2, v0, :cond_2

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    if-ne v2, v0, :cond_4

    .line 3322
    :cond_2
    iget-object v9, v1, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v10, 0x1

    .line 3324
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-ne v2, v0, :cond_3

    .line 3325
    const/4 v0, 0x2

    move v11, v0

    goto :goto_0

    .line 3326
    :cond_3
    const/4 v0, 0x3

    move v11, v0

    :goto_0
    iget-object v0, v6, Lcom/android/server/LocationManagerService$LinkedListener;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v12, v0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v15, v6, Lcom/android/server/LocationManagerService$LinkedListener;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v15, v15, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 3332
    invoke-virtual {v0, v15}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    .line 3322
    const/4 v15, 0x0

    move/from16 v17, v0

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3336
    :cond_4
    :try_start_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3337
    nop

    .line 3338
    invoke-direct {v1, v3, v6}, Lcom/android/server/LocationManagerService;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3339
    move-object/from16 v9, p1

    :try_start_3
    invoke-virtual {v2, v9}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    .line 3340
    .end local v6    # "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    .end local v7    # "identity":J
    monitor-exit v4

    .line 3341
    return-void

    .line 3336
    .restart local v6    # "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    .restart local v7    # "identity":J
    :catchall_0
    move-exception v0

    move-object/from16 v9, p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3    # "binder":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "listener":Landroid/os/IInterface;, "TTListener;"
    .end local p2    # "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .end local p3    # "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;>;"
    throw v0

    .line 3340
    .end local v6    # "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    .end local v7    # "identity":J
    .restart local v3    # "binder":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "listener":Landroid/os/IInterface;, "TTListener;"
    .restart local p2    # "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .restart local p3    # "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v9, p1

    :goto_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method private removeProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/server/LocationManagerService$LocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2027
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2028
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 2030
    :cond_0
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2946
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

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

    .line 2951
    :cond_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mdmLmsInjector:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmRequestTimeCount(Ljava/lang/String;J)V

    .line 2954
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/LocationManagerService$Receiver;->access$4900(Lcom/android/server/LocationManagerService$Receiver;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2955
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LocationManagerService;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    .line 2957
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 2960
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2963
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2964
    .local v1, "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 2965
    .local v2, "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v2, :cond_4

    .line 2967
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

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2969
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    invoke-static {v4, v0}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4800(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    .line 2970
    .end local v4    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    goto :goto_0

    .line 2972
    :cond_3
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2976
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

    .line 2977
    .local v3, "provider":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2978
    .end local v3    # "provider":Ljava/lang/String;
    goto :goto_1

    .line 2979
    :cond_5
    return-void
.end method

.method private reportLocationAccessNoThrow(IILjava/lang/String;I)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "allowedResolutionLevel"    # I

    .line 2155
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v0

    .line 2156
    .local v0, "op":I
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 2157
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2158
    return v1

    .line 2162
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v2

    if-lt v2, p4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;ILjava/lang/String;)V
    .locals 10
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2845
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2846
    :cond_0
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v6

    .line 2847
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 2851
    invoke-direct {p0, v6}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v7

    .line 2852
    .local v7, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v7, :cond_7

    .line 2856
    new-instance v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;Lcom/android/server/LocationManagerService$1;)V

    .line 2864
    .local v8, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    .line 2865
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2868
    invoke-static {v8}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "foreground"

    goto :goto_0

    :cond_2
    const-string v1, "background"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2869
    iget-object v1, p2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2870
    const-string v1, " [whitelisted]"

    goto :goto_1

    :cond_3
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2865
    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    :cond_4
    iget-object v0, p2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2873
    .local v9, "oldRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    const/4 v0, 0x0

    if-eqz v9, :cond_5

    .line 2874
    invoke-static {v9, v0}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4800(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    .line 2877
    :cond_5
    invoke-virtual {v7}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, v8}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2880
    invoke-static {p2, v6, v0}, Lcom/android/server/LocationManagerService$Receiver;->access$3900(Lcom/android/server/LocationManagerService$Receiver;Ljava/lang/String;Z)Z

    .line 2883
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2887
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2891
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mdmLmsInjector:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p4

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmSaveRequestInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2893
    return-void

    .line 2853
    .end local v8    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v9    # "oldRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_7
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

    .line 2848
    .end local v7    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolutionLevelToOp(I)I
    .locals 1
    .param p0, "allowedResolutionLevel"    # I

    .line 2127
    if-eqz p0, :cond_1

    .line 2128
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 2129
    const/4 v0, 0x0

    return v0

    .line 2131
    :cond_0
    return v0

    .line 2134
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static resolutionLevelToOpStr(I)Ljava/lang/String;
    .locals 2
    .param p0, "allowedResolutionLevel"    # I

    .line 2138
    const-string v0, "android:fine_location"

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 2149
    return-object v0

    .line 2142
    :cond_0
    return-object v0

    .line 2140
    :cond_1
    const-string v0, "android:coarse_location"

    return-object v0

    .line 2146
    :cond_2
    return-object v0
.end method

.method private static shouldBroadcastSafeLocked(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z
    .locals 11
    .param p0, "loc"    # Landroid/location/Location;
    .param p1, "lastLoc"    # Landroid/location/Location;
    .param p2, "record"    # Lcom/android/server/LocationManagerService$UpdateRecord;
    .param p3, "now"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3570
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 3571
    return v0

    .line 3575
    :cond_0
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    .line 3576
    .local v1, "minTime":J
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    .line 3578
    .local v3, "delta":J
    const-wide/16 v5, 0x64

    sub-long v5, v1, v5

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-gez v5, :cond_1

    .line 3579
    return v6

    .line 3583
    :cond_1
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v5

    float-to-double v7, v5

    .line 3584
    .local v7, "minDistance":D
    const-wide/16 v9, 0x0

    cmpl-double v5, v7, v9

    if-lez v5, :cond_2

    .line 3585
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    float-to-double v9, v5

    cmpg-double v5, v9, v7

    if-gtz v5, :cond_2

    .line 3586
    return v6

    .line 3591
    :cond_2
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v5

    if-gtz v5, :cond_3

    .line 3592
    return v6

    .line 3596
    :cond_3
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v9

    cmp-long v5, v9, p3

    if-ltz v5, :cond_4

    goto :goto_0

    :cond_4
    move v0, v6

    :goto_0
    return v0
.end method

.method private unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "linkedListener"    # Lcom/android/server/LocationManagerService$LinkedListenerBase;

    .line 3359
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3360
    const/4 v0, 0x1

    return v0

    .line 3361
    :catch_0
    move-exception v1

    .line 3364
    .local v1, "e":Ljava/util/NoSuchElementException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not unlink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mListenerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " death callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3365
    return v0
.end method

.method private updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V
    .locals 6
    .param p4, "uid"    # I
    .param p5, "foreground"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener::Landroid/os/IInterface;",
            ">(",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "+",
            "Lcom/android/server/LocationManagerService$LinkedListenerBase;",
            ">;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TT",
            "Listener;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT",
            "Listener;",
            ">;IZ)V"
        }
    .end annotation

    .line 733
    .local p1, "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;+Lcom/android/server/LocationManagerService$LinkedListenerBase;>;"
    .local p2, "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p3, "mapBinderToListener":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TTListener;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 734
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;+Lcom/android/server/LocationManagerService$LinkedListenerBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LinkedListenerBase;

    .line 735
    .local v2, "linkedListener":Lcom/android/server/LocationManagerService$LinkedListenerBase;
    iget-object v3, v2, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 736
    .local v3, "callerIdentity":Lcom/android/server/location/CallerIdentity;
    iget v4, v3, Lcom/android/server/location/CallerIdentity;->mUid:I

    if-eq v4, p4, :cond_0

    .line 737
    goto :goto_0

    .line 740
    :cond_0
    sget-boolean v4, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v4, :cond_1

    .line 741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mListenerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-static {p5}, Lcom/android/server/LocationManagerService;->foregroundAsString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 741
    const-string v5, "LocationManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-interface {p3, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IInterface;

    .line 746
    .local v4, "listener":Landroid/os/IInterface;, "TTListener;"
    if-nez p5, :cond_3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 749
    :cond_2
    invoke-virtual {p2, v4}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    goto :goto_2

    .line 747
    :cond_3
    :goto_1
    invoke-virtual {p2, v4, v3}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V

    .line 751
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;+Lcom/android/server/LocationManagerService$LinkedListenerBase;>;"
    .end local v2    # "linkedListener":Lcom/android/server/LocationManagerService$LinkedListenerBase;
    .end local v3    # "callerIdentity":Lcom/android/server/location/CallerIdentity;
    .end local v4    # "listener":Landroid/os/IInterface;, "TTListener;"
    :goto_2
    goto :goto_0

    .line 752
    :cond_4
    return-void
.end method

.method private updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3802
    const-string/jumbo v0, "noGPSLocation"

    invoke-virtual {p1, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 3804
    .local v1, "noGPSLocation":Landroid/location/Location;
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 3805
    .local v2, "lastLocation":Landroid/location/Location;
    if-nez v2, :cond_0

    .line 3806
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 3807
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3809
    :cond_0
    invoke-virtual {v2, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 3810
    .local v3, "lastNoGPSLocation":Landroid/location/Location;
    if-nez v1, :cond_1

    if-eqz v3, :cond_1

    .line 3813
    invoke-virtual {p1, v0, v3}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 3816
    .end local v3    # "lastNoGPSLocation":Landroid/location/Location;
    :cond_1
    :goto_0
    invoke-virtual {v2, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 3817
    return-void
.end method

.method private updateProviderUseableLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 7
    .param p1, "provider"    # Lcom/android/server/LocationManagerService$LocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2262
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v0

    .line 2264
    .local v0, "useable":Z
    const/4 v1, 0x0

    .line 2266
    .local v1, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2267
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v2, :cond_5

    .line 2268
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2269
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v5, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->mUid:I

    .line 2270
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2269
    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2271
    goto :goto_0

    .line 2275
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2276
    goto :goto_0

    .line 2281
    :cond_1
    iget-object v5, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v5}, Lcom/android/server/am/OpBGFrozenInjector;->isBlockedGpsUid(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateProviderUseableLocked uid block  uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v6, v6, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " package ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v6, v6, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LocationManagerService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    goto :goto_0

    .line 2289
    :cond_2
    iget-object v5, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/server/LocationManagerService$Receiver;->access$3900(Lcom/android/server/LocationManagerService$Receiver;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2290
    if-nez v1, :cond_3

    .line 2291
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 2293
    :cond_3
    iget-object v5, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2295
    .end local v4    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_4
    goto :goto_0

    .line 2298
    :cond_5
    if-eqz v1, :cond_6

    .line 2299
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    .line 2300
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2299
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2304
    .end local v3    # "i":I
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 2305
    return-void
.end method


# virtual methods
.method public addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;)Z
    .locals 9
    .param p1, "callback"    # Landroid/location/IBatchedLocationCallback;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1922
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1929
    :cond_0
    new-instance v5, Lcom/android/server/location/CallerIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1930
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {v5, v0, v2, p2}, Lcom/android/server/location/CallerIdentity;-><init>(IILjava/lang/String;)V

    .line 1931
    .local v5, "callerIdentity":Lcom/android/server/location/CallerIdentity;
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1932
    :try_start_0
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 1933
    new-instance v8, Lcom/android/server/LocationManagerService$LinkedListener;

    const-string v4, "BatchedLocationCallback"

    new-instance v6, Lcom/android/server/-$$Lambda$LocationManagerService$ma_5PjwiFAbM39eIaW8jFG89f1w;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$ma_5PjwiFAbM39eIaW8jFG89f1w;-><init>(Lcom/android/server/LocationManagerService;)V

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/LocationManagerService$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;Lcom/android/server/LocationManagerService$1;)V

    iput-object v8, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    .line 1939
    invoke-interface {p1}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    invoke-direct {p0, v2, v3}, Lcom/android/server/LocationManagerService;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1941
    monitor-exit v0

    return v1

    .line 1943
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1944
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1926
    .end local v5    # "callerIdentity":Lcom/android/server/location/CallerIdentity;
    :cond_2
    :goto_0
    return v1
.end method

.method public addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z
    .locals 7
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3217
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/-$$Lambda$XnEj1qgrS2tLlw6uNlntfcuKl88;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$XnEj1qgrS2tLlw6uNlntfcuKl88;-><init>(Lcom/android/server/LocationManagerService;)V

    const-string v3, "GnssMeasurementsListener"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;)Z
    .locals 7
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3402
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/-$$Lambda$wg7j1ZorSDGIu2L17I_NmjcwgzQ;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$wg7j1ZorSDGIu2L17I_NmjcwgzQ;-><init>(Lcom/android/server/LocationManagerService;)V

    const-string v3, "GnssNavigationMessageListener"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 3860
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3861
    return-void

    .line 3864
    :cond_0
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3868
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3869
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3871
    .local v1, "identity":J
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v3

    .line 3872
    .local v3, "oldProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v3, :cond_2

    .line 3873
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3878
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    goto :goto_0

    .line 3874
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local p3    # "opPackageName":Ljava/lang/String;
    throw v4

    .line 3881
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "properties":Lcom/android/internal/location/ProviderProperties;
    .restart local p3    # "opPackageName":Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v4, Lcom/android/server/LocationManagerService$MockLocationProvider;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lcom/android/server/LocationManagerService$MockLocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 3882
    .local v4, "mockProviderManager":Lcom/android/server/LocationManagerService$MockLocationProvider;
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 3883
    new-instance v5, Lcom/android/server/location/MockProvider;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4, p2}, Lcom/android/server/location/MockProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Lcom/android/internal/location/ProviderProperties;)V

    invoke-virtual {v4, v5}, Lcom/android/server/LocationManagerService$MockLocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3886
    .end local v3    # "oldProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v4    # "mockProviderManager":Lcom/android/server/LocationManagerService$MockLocationProvider;
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3887
    nop

    .line 3888
    .end local v1    # "identity":J
    monitor-exit v0

    .line 3889
    return-void

    .line 3886
    .restart local v1    # "identity":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local p3    # "opPackageName":Ljava/lang/String;
    throw v3

    .line 3888
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "properties":Lcom/android/internal/location/ProviderProperties;
    .restart local p3    # "opPackageName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 3865
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot mock the passive location provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkLocationAccess(IILjava/lang/String;I)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "allowedResolutionLevel"    # I

    .line 2172
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v0

    .line 2173
    .local v0, "op":I
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 2174
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2175
    return v1

    .line 2179
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v2

    if-lt v2, p4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4011
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "LocationManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4013
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4014
    :try_start_0
    array-length v1, p3

    const/4 v2, 0x0

    if-lez v1, :cond_2

    aget-object v1, p3, v2

    const-string v3, "--gnssmetrics"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4015
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    if-eqz v1, :cond_1

    .line 4016
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    invoke-interface {v1}, Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;->getGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4018
    :cond_1
    monitor-exit v0

    return-void

    .line 4020
    :cond_2
    const-string v1, "Current Location Manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current System Time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4021
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Current Elapsed Time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4024
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4023
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current user: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Location mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Battery Saver Location Mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    .line 4029
    invoke-static {v3}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4028
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4030
    const-string v1, "  Location Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4031
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 4032
    .local v3, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4033
    .end local v3    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_0

    .line 4034
    :cond_3
    const-string v1, "  Active Records by Provider:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4035
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4036
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4037
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 4038
    .local v5, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4039
    .end local v5    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    goto :goto_2

    .line 4040
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    :cond_4
    goto :goto_1

    .line 4042
    :cond_5
    const-string v1, "  Active GnssMeasurement Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4043
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, v1}, Lcom/android/server/LocationManagerService;->dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V

    .line 4044
    const-string v1, "  Active GnssNavigationMessage Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4045
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, v1}, Lcom/android/server/LocationManagerService;->dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V

    .line 4046
    const-string v1, "  Active GnssStatus Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4047
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, v1}, Lcom/android/server/LocationManagerService;->dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V

    .line 4049
    const-string v1, "  Historical Records by Provider:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4051
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    iget-object v1, v1, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4052
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    .line 4053
    .local v4, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 4054
    .local v5, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->providerName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4055
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    .end local v4    # "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    .end local v5    # "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    goto :goto_3

    .line 4056
    :cond_6
    const-string v1, "  Last Known Locations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4057
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4058
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4059
    .local v4, "provider":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    .line 4060
    .local v5, "location":Landroid/location/Location;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4061
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v4    # "provider":Ljava/lang/String;
    .end local v5    # "location":Landroid/location/Location;
    goto :goto_4

    .line 4063
    :cond_7
    const-string v1, "  Last Known Locations Coarse Intervals:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4064
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4065
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4066
    .restart local v4    # "provider":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    .line 4067
    .restart local v5    # "location":Landroid/location/Location;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4068
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v4    # "provider":Ljava/lang/String;
    .end local v5    # "location":Landroid/location/Location;
    goto :goto_5

    .line 4070
    :cond_8
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    if-eqz v1, :cond_9

    .line 4071
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v1, p2}, Lcom/android/server/location/GeofenceManager;->dump(Ljava/io/PrintWriter;)V

    goto :goto_6

    .line 4073
    :cond_9
    const-string v1, "  Geofences: null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4076
    :goto_6
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    if-eqz v1, :cond_a

    .line 4077
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4078
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationBlacklist;->dump(Ljava/io/PrintWriter;)V

    goto :goto_7

    .line 4080
    :cond_a
    const-string v1, "  mBlacklist=null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4083
    :goto_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 4084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Location controller extra package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4088
    :cond_b
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 4089
    const-string v1, "  Throttling Whitelisted Packages:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4090
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4091
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4092
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_8

    .line 4095
    :cond_c
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 4096
    const-string v1, "  Bypass Whitelisted Packages:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4097
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4098
    .restart local v3    # "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4099
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_9

    .line 4102
    :cond_d
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    if-eqz v1, :cond_e

    .line 4103
    const-string v1, "  fudger: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4104
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/LocationFudger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_a

    .line 4106
    :cond_e
    const-string v1, "  fudger: null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4109
    :goto_a
    array-length v1, p3

    if-lez v1, :cond_f

    const-string/jumbo v1, "short"

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4110
    monitor-exit v0

    return-void

    .line 4112
    :cond_f
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 4113
    .local v2, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LocationManagerService$LocationProvider;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4114
    .end local v2    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_b

    .line 4115
    :cond_10
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-eqz v1, :cond_11

    .line 4116
    const-string v1, "  GNSS batching in progress"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4118
    :cond_11
    monitor-exit v0

    .line 4119
    return-void

    .line 4118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flushGnssBatch(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1981
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1985
    const-string v0, "LocationManagerService"

    const-string v1, "flushGnssBatch called without GNSS permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    return-void

    .line 1989
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1990
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-nez v1, :cond_1

    .line 1991
    const-string v1, "LocationManagerService"

    const-string v2, "flushGnssBatch called with no batch in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-eqz v1, :cond_2

    .line 1995
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssBatchingProvider;->flush()V

    .line 1997
    :cond_2
    monitor-exit v0

    .line 1998
    return-void

    .line 1997
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public geocoderIsPresent()Z
    .locals 1

    .line 3823
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2188
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2189
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2190
    .local v1, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 2191
    .local v3, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2192
    .local v4, "name":Ljava/lang/String;
    const-string v5, "fused"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2193
    goto :goto_0

    .line 2195
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    nop

    .end local v3    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_0

    .line 2197
    :cond_1
    monitor-exit v0

    return-object v1

    .line 2198
    .end local v1    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .locals 3

    .line 2463
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2464
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2465
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 3
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z

    .line 2242
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 2243
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2244
    invoke-virtual {p0, v2, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 2247
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2248
    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2249
    return-object v1

    .line 2250
    :cond_1
    const-string/jumbo v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2251
    return-object v1

    .line 2253
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2257
    :cond_3
    return-object v2
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

    .line 4134
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result v0

    .line 4135
    .local v0, "enabledlocation":Z
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4136
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1, v0, v2}, Lcom/android/server/OpGpsNotificationInjector;->getCurrentProviderPackageList(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 4137
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

    .line 4141
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result v0

    .line 4142
    .local v0, "enabledlocation":Z
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4143
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1, v0, v2}, Lcom/android/server/OpGpsNotificationInjector;->getCurrentProviderPackageListsForInteger(Ljava/lang/String;ZLjava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 4144
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getExtraLocationControllerPackage()Ljava/lang/String;
    .locals 2

    .line 3500
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3501
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3502
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

    .line 3829
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    .line 3830
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3833
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

    .line 3843
    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v1, :cond_0

    .line 3844
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

    .line 3848
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getGnssBatchSize(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1910
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-eqz v0, :cond_0

    .line 1914
    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->getBatchSize()I

    move-result v0

    return v0

    .line 1916
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGnssCapabilities(Ljava/lang/String;)J
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3390
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to obtain GNSS chipset capabilities."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3393
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3396
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/location/GnssCapabilitiesProvider;->getGnssCapabilities()J

    move-result-wide v0

    return-wide v0

    .line 3394
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .locals 1

    .line 1883
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    if-eqz v0, :cond_0

    .line 1884
    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1886
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGnssTimeMillis()Landroid/location/LocationTime;
    .locals 9

    .line 3075
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3076
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 3077
    .local v1, "location":Landroid/location/Location;
    if-nez v1, :cond_0

    .line 3078
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 3080
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 3081
    .local v2, "currentNanos":J
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 3082
    .local v4, "deltaMs":J
    new-instance v6, Landroid/location/LocationTime;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    add-long/2addr v7, v4

    invoke-direct {v6, v7, v8, v2, v3}, Landroid/location/LocationTime;-><init>(JJ)V

    monitor-exit v0

    return-object v6

    .line 3083
    .end local v1    # "location":Landroid/location/Location;
    .end local v2    # "currentNanos":J
    .end local v4    # "deltaMs":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGnssYearOfHardware()I
    .locals 1

    .line 1873
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    if-eqz v0, :cond_0

    .line 1874
    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;->getGnssYearOfHardware()I

    move-result v0

    return v0

    .line 1876
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIgnoreSettingsWhitelist()[Ljava/lang/String;
    .locals 3

    .line 2470
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2471
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    .locals 21
    .param p1, "r"    # Landroid/location/LocationRequest;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2983
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2984
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    :goto_0
    move-object v4, v0

    .line 2985
    .local v4, "request":Landroid/location/LocationRequest;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    move v5, v0

    .line 2986
    .local v5, "allowedResolutionLevel":I
    invoke-direct {v1, v2}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2987
    nop

    .line 2988
    invoke-virtual {v4}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 2987
    invoke-direct {v1, v5, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 2991
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v6, v0

    .line 2992
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v7, v0

    .line 2993
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2995
    .local v8, "identity":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0, v2}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    .line 2996
    :try_start_2
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_1

    .line 2997
    const-string v0, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "not returning last loc for blacklisted app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3000
    :cond_1
    nop

    .line 3068
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 3000
    return-object v10

    .line 3068
    :catchall_0
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_4

    .line 3006
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 3007
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_3

    :try_start_5
    const-string v11, "fused"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v11

    .line 3008
    :cond_3
    :try_start_6
    invoke-direct {v1, v0}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 3009
    .local v11, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-nez v11, :cond_4

    .line 3068
    :try_start_7
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 3009
    return-object v10

    .line 3012
    :cond_4
    :try_start_8
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-direct {v1, v12}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-nez v12, :cond_5

    :try_start_9
    invoke-virtual {v1, v2}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v12, :cond_5

    .line 3014
    nop

    .line 3068
    :try_start_a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 3014
    return-object v10

    .line 3017
    :cond_5
    :try_start_b
    invoke-virtual {v11}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-nez v12, :cond_6

    .line 3018
    nop

    .line 3068
    :try_start_c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 3018
    return-object v10

    .line 3022
    :cond_6
    const/4 v12, 0x2

    if-ge v5, v12, :cond_7

    .line 3025
    :try_start_d
    iget-object v13, v1, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/Location;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .local v13, "location":Landroid/location/Location;
    goto :goto_1

    .line 3027
    .end local v13    # "location":Landroid/location/Location;
    :cond_7
    :try_start_e
    iget-object v13, v1, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/Location;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 3029
    .restart local v13    # "location":Landroid/location/Location;
    :goto_1
    if-nez v13, :cond_8

    .line 3030
    nop

    .line 3068
    :try_start_f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 3030
    return-object v10

    .line 3034
    :cond_8
    :try_start_10
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->resolutionLevelToOpStr(I)Ljava/lang/String;

    move-result-object v14

    .line 3035
    .local v14, "op":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 3036
    invoke-virtual {v13}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v17

    const-wide/32 v19, 0xf4240

    div-long v17, v17, v19

    sub-long v15, v15, v17

    .line 3037
    .local v15, "locationAgeMs":J
    iget-object v12, v1, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 3038
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v10, "location_last_location_max_age_millis"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v4    # "request":Landroid/location/LocationRequest;
    .end local v5    # "allowedResolutionLevel":I
    .local v19, "request":Landroid/location/LocationRequest;
    .local v20, "allowedResolutionLevel":I
    const-wide/32 v4, 0x124f80

    .line 3037
    :try_start_11
    invoke-static {v12, v10, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    cmp-long v4, v15, v4

    if-lez v4, :cond_9

    :try_start_12
    iget-object v4, v1, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 3041
    invoke-virtual {v4, v14, v7, v2}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    .line 3043
    nop

    .line 3068
    :try_start_13
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 3043
    const/4 v3, 0x0

    return-object v3

    .line 3068
    .end local v0    # "name":Ljava/lang/String;
    .end local v11    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v13    # "location":Landroid/location/Location;
    .end local v14    # "op":Ljava/lang/String;
    .end local v15    # "locationAgeMs":J
    :catchall_1
    move-exception v0

    move/from16 v5, v20

    goto :goto_4

    .line 3046
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v11    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    .restart local v13    # "location":Landroid/location/Location;
    .restart local v14    # "op":Ljava/lang/String;
    .restart local v15    # "locationAgeMs":J
    :cond_9
    const/4 v4, 0x0

    .line 3047
    .local v4, "lastLocation":Landroid/location/Location;
    move/from16 v5, v20

    const/4 v10, 0x2

    .end local v20    # "allowedResolutionLevel":I
    .restart local v5    # "allowedResolutionLevel":I
    if-ge v5, v10, :cond_b

    .line 3048
    :try_start_14
    const-string/jumbo v10, "noGPSLocation"

    invoke-virtual {v13, v10}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10

    .line 3050
    .local v10, "noGPSLocation":Landroid/location/Location;
    if-eqz v10, :cond_a

    .line 3051
    new-instance v12, Landroid/location/Location;

    move-object/from16 v17, v0

    .end local v0    # "name":Ljava/lang/String;
    .local v17, "name":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v0, v10}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v4, v12

    goto :goto_2

    .line 3050
    .end local v17    # "name":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v0

    .line 3053
    .end local v0    # "name":Ljava/lang/String;
    .end local v10    # "noGPSLocation":Landroid/location/Location;
    .restart local v17    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 3054
    .end local v17    # "name":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    :cond_b
    move-object/from16 v17, v0

    .end local v0    # "name":Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v13}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v4, v0

    .line 3057
    :goto_3
    if-eqz v4, :cond_d

    .line 3058
    invoke-direct {v1, v6, v7, v2, v5}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3060
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_c

    .line 3061
    const-string v0, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "not returning last loc for no op app: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 3063
    :cond_c
    const/4 v4, 0x0

    .line 3066
    :cond_d
    nop

    .line 3068
    :try_start_15
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    .line 3066
    return-object v4

    .line 3068
    .end local v4    # "lastLocation":Landroid/location/Location;
    .end local v11    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v13    # "location":Landroid/location/Location;
    .end local v14    # "op":Ljava/lang/String;
    .end local v15    # "locationAgeMs":J
    .end local v17    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_4

    .end local v5    # "allowedResolutionLevel":I
    .restart local v20    # "allowedResolutionLevel":I
    :catchall_3
    move-exception v0

    move/from16 v5, v20

    .end local v20    # "allowedResolutionLevel":I
    .restart local v5    # "allowedResolutionLevel":I
    goto :goto_4

    .end local v19    # "request":Landroid/location/LocationRequest;
    .local v4, "request":Landroid/location/LocationRequest;
    :catchall_4
    move-exception v0

    move-object/from16 v19, v4

    .end local v4    # "request":Landroid/location/LocationRequest;
    .restart local v19    # "request":Landroid/location/LocationRequest;
    :goto_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "r":Landroid/location/LocationRequest;
    .end local p2    # "packageName":Ljava/lang/String;
    throw v0

    .line 3070
    .end local v5    # "allowedResolutionLevel":I
    .end local v6    # "pid":I
    .end local v7    # "uid":I
    .end local v8    # "identity":J
    .end local v19    # "request":Landroid/location/LocationRequest;
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "r":Landroid/location/LocationRequest;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_5
    move-exception v0

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    throw v0
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .locals 3
    .param p1, "providerName"    # Ljava/lang/String;

    .line 3464
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3465
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 3468
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 3469
    .local v1, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-nez v1, :cond_0

    .line 3470
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 3472
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 3473
    .end local v1    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 7
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

    .line 2208
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 2209
    .local v0, "allowedResolutionLevel":I
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2210
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2211
    .local v2, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 2212
    .local v4, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2213
    .local v5, "name":Ljava/lang/String;
    const-string v6, "fused"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2214
    goto :goto_0

    .line 2216
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUseLocked(Ljava/lang/String;)I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 2217
    goto :goto_0

    .line 2219
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2220
    goto :goto_0

    .line 2222
    :cond_2
    if-eqz p1, :cond_3

    .line 2224
    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;

    move-result-object v6

    .line 2223
    invoke-static {v5, v6, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2225
    goto :goto_0

    .line 2227
    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2228
    nop

    .end local v4    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v5    # "name":Ljava/lang/String;
    goto :goto_0

    .line 2229
    :cond_4
    monitor-exit v1

    return-object v2

    .line 2230
    .end local v2    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTestProviderCurrentRequests(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation

    .line 3987
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3988
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3991
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3992
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 3993
    .local v1, "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3997
    move-object v2, v1

    check-cast v2, Lcom/android/server/LocationManagerService$MockLocationProvider;

    .line 3998
    .local v2, "provider":Lcom/android/server/LocationManagerService$MockLocationProvider;
    invoke-static {v2}, Lcom/android/server/LocationManagerService$MockLocationProvider;->access$5300(Lcom/android/server/LocationManagerService$MockLocationProvider;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v3

    if-nez v3, :cond_1

    .line 3999
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 4001
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4002
    .local v3, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/location/LocationRequest;>;"
    invoke-static {v2}, Lcom/android/server/LocationManagerService$MockLocationProvider;->access$5300(Lcom/android/server/LocationManagerService$MockLocationProvider;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationRequest;

    .line 4003
    .local v5, "request":Landroid/location/LocationRequest;
    new-instance v6, Landroid/location/LocationRequest;

    invoke-direct {v6, v5}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4004
    nop

    .end local v5    # "request":Landroid/location/LocationRequest;
    goto :goto_0

    .line 4005
    :cond_2
    monitor-exit v0

    return-object v3

    .line 3994
    .end local v2    # "provider":Lcom/android/server/LocationManagerService$MockLocationProvider;
    .end local v3    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/location/LocationRequest;>;"
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "providerName":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    throw v2

    .line 4006
    .end local v1    # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "providerName":Ljava/lang/String;
    .restart local p2    # "opPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;Ljava/lang/String;)V
    .locals 3
    .param p1, "measurementCorrections"    # Landroid/location/GnssMeasurementCorrections;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3372
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to inject GNSS measurement corrections."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3375
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "LocationManagerService"

    if-nez v0, :cond_0

    .line 3376
    const-string v0, "Can not inject GNSS corrections due to no permission."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    return-void

    .line 3379
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    if-nez v0, :cond_1

    .line 3380
    const-string v0, "Can not inject GNSS corrections. GNSS measurement corrections provider not available."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    return-void

    .line 3384
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    .line 3386
    return-void
.end method

.method public injectLocation(Landroid/location/Location;)Z
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .line 3088
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to inject location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3090
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "Access Fine Location permission not granted to inject Location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3093
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 3094
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_0

    .line 3095
    const-string v1, "LocationManagerService"

    const-string v2, "injectLocation(): called with null location"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    :cond_0
    return v0

    .line 3100
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3101
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v2

    .line 3102
    .local v2, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 3109
    :cond_2
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3110
    monitor-exit v1

    return v0

    .line 3113
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/LocationManagerService;->updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V

    .line 3114
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 3103
    :cond_4
    :goto_0
    monitor-exit v1

    return v0

    .line 3115
    .end local v2    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isExtraLocationControllerPackageEnabled()Z
    .locals 2

    .line 3516
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3517
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 3519
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLocationEnabledForUser(I)Z
    .locals 5
    .param p1, "userId"    # I

    .line 3529
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3530
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Requires INTERACT_ACROSS_USERS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3535
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3537
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 3538
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    .line 3537
    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 3543
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3537
    return v4

    .line 3543
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3550
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 3551
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Requires INTERACT_ACROSS_USERS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    :cond_0
    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 3560
    :cond_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3561
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v2

    .line 3562
    .local v2, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableForUserLocked(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v0

    return v1

    .line 3563
    .end local v2    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isProviderPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3478
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3479
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 3480
    .local v2, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->getPackagesLocked()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3481
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3483
    .end local v2    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_0
    goto :goto_0

    .line 3485
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3486
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$addGnssBatchingCallback$8$LocationManagerService(Landroid/location/IBatchedLocationCallback;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/IBatchedLocationCallback;

    .line 1936
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->stopGnssBatch()Z

    .line 1937
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->removeGnssBatchingCallback()V

    .line 1938
    return-void
.end method

.method public synthetic lambda$initializeLocked$2$LocationManagerService()V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onPermissionsChangedLocked()V

    .line 442
    monitor-exit v0

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$initializeLocked$3$LocationManagerService(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 439
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$G-JjItJofmJkJhbftqezuIe8Sio;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$G-JjItJofmJkJhbftqezuIe8Sio;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 444
    return-void
.end method

.method public synthetic lambda$initializeLocked$4$LocationManagerService(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "importance"    # I

    .line 451
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->onUidImportanceChangedLocked(II)V

    .line 453
    monitor-exit v0

    .line 454
    return-void

    .line 453
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$initializeLocked$5$LocationManagerService(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "importance"    # I

    .line 450
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$GVLGDgL1Vk3AKo-zMjRmo3-OLpQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/-$$Lambda$LocationManagerService$GVLGDgL1Vk3AKo-zMjRmo3-OLpQ;-><init>(Lcom/android/server/LocationManagerService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 455
    return-void
.end method

.method public synthetic lambda$initializeLocked$6$LocationManagerService(Landroid/os/PowerSaveState;)V
    .locals 2
    .param p1, "state"    # Landroid/os/PowerSaveState;

    .line 519
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_0
    iget v1, p1, Landroid/os/PowerSaveState;->locationMode:I

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->onBatterySaverModeChangedLocked(I)V

    .line 521
    monitor-exit v0

    .line 522
    return-void

    .line 521
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$initializeLocked$7$LocationManagerService(Landroid/os/PowerSaveState;)V
    .locals 2
    .param p1, "state"    # Landroid/os/PowerSaveState;

    .line 518
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$wT7D5HWSJcE1hXhYNGDPH6IVDx0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$LocationManagerService$wT7D5HWSJcE1hXhYNGDPH6IVDx0;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/PowerSaveState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 523
    return-void
.end method

.method public synthetic lambda$new$0$LocationManagerService(I)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 378
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$1$LocationManagerService(I)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 381
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/ILocationListener;

    .line 1863
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1864
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    .line 1865
    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v1, :cond_0

    .line 1866
    invoke-static {v1}, Lcom/android/server/LocationManagerService$Receiver;->access$3700(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1868
    .end local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_0
    monitor-exit v0

    .line 1869
    return-void

    .line 1868
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mdmCheckIfLossSv(J)V
    .locals 1
    .param p1, "time"    # J

    .line 4155
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mdmLmsInjector:Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LocationManagerServiceInjector$MdmGnssInjector;->mdmSetLossLevel(J)V

    .line 4156
    return-void
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z
    .locals 7
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3204
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/-$$Lambda$1kw1pGRY14l4iRI8vioJeswbbZ0;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$1kw1pGRY14l4iRI8vioJeswbbZ0;-><init>(Lcom/android/server/LocationManagerService;)V

    const-string v3, "GnssStatusListener"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 12
    .param p1, "geofence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3175
    if-eqz p2, :cond_1

    .line 3178
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 3180
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

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

    .line 3183
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3185
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3186
    :try_start_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 3194
    invoke-virtual {v6, p3}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v11

    .line 3186
    move-object v6, p3

    move-object v10, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 3195
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3196
    :try_start_2
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3198
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3199
    nop

    .line 3200
    return-void

    .line 3195
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "geofence":Landroid/location/Geofence;
    .end local p2    # "intent":Landroid/app/PendingIntent;
    .end local p3    # "packageName":Ljava/lang/String;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3198
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "geofence":Landroid/location/Geofence;
    .restart local p2    # "intent":Landroid/app/PendingIntent;
    .restart local p3    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3176
    .end local v0    # "identity":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid pending intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeGnssBatchingCallback()V
    .locals 3

    .line 1949
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1950
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    invoke-interface {v1}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    invoke-direct {p0, v1, v2}, Lcom/android/server/LocationManagerService;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    .line 1952
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 1953
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    .line 1954
    monitor-exit v0

    .line 1955
    return-void

    .line 1954
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;

    .line 3224
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LocationManagerService;->removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 3225
    return-void
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;

    .line 3409
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LocationManagerService;->removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 3411
    return-void
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 3893
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3894
    return-void

    .line 3897
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3898
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3900
    .local v1, "identity":J
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v3

    .line 3901
    .local v3, "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3905
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 3908
    const/4 v4, 0x0

    .line 3909
    .local v4, "realProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 3910
    .local v6, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v6}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3911
    move-object v4, v6

    .line 3912
    goto :goto_1

    .line 3914
    .end local v6    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_1
    goto :goto_0

    .line 3916
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 3917
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3920
    .end local v3    # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v4    # "realProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_3
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3921
    nop

    .line 3922
    .end local v1    # "identity":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3923
    return-void

    .line 3902
    .restart local v1    # "identity":J
    .restart local v3    # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_4
    :try_start_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "identity":J
    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3920
    .end local v3    # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .restart local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "opPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    throw v3

    .line 3922
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "opPackageName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 11
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2900
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->getLogLevelStatusUpdates()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    .line 2903
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2905
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2906
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2908
    .local v9, "uid":I
    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2909
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "need either listener or intent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2910
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 2911
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot register both listener and intent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2914
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2916
    if-eqz p2, :cond_4

    .line 2917
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move v3, v0

    move v4, v9

    move-object v5, p3

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v1

    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_2

    .line 2925
    .end local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_4
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, v0

    move v5, v9

    move-object v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/LocationRequest;Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v1

    .line 2929
    .restart local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2931
    .local v2, "identity":J
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2933
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2934
    nop

    .line 2935
    .end local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v2    # "identity":J
    monitor-exit v10

    .line 2936
    return-void

    .line 2933
    .restart local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .restart local v2    # "identity":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "pid":I
    .end local v9    # "uid":I
    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "listener":Landroid/location/ILocationListener;
    .end local p2    # "intent":Landroid/app/PendingIntent;
    .end local p3    # "packageName":Ljava/lang/String;
    throw v4

    .line 2935
    .end local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v2    # "identity":J
    .restart local v0    # "pid":I
    .restart local v9    # "uid":I
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "listener":Landroid/location/ILocationListener;
    .restart local p2    # "intent":Landroid/app/PendingIntent;
    .restart local p3    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 22
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "geofence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 3121
    move-object/from16 v1, p0

    move-object/from16 v9, p3

    move-object/from16 v8, p4

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    move-object v7, v0

    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v0, "request":Landroid/location/LocationRequest;
    goto :goto_0

    .end local v0    # "request":Landroid/location/LocationRequest;
    .restart local p1    # "request":Landroid/location/LocationRequest;
    :cond_0
    move-object/from16 v7, p1

    .line 3122
    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v7, "request":Landroid/location/LocationRequest;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v6

    .line 3123
    .local v6, "allowedResolutionLevel":I
    invoke-direct {v1, v6}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForGeofenceUse(I)V

    .line 3124
    if-eqz v9, :cond_4

    .line 3127
    invoke-direct {v1, v8}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 3128
    iget-object v2, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3129
    nop

    .line 3130
    :try_start_0
    invoke-virtual {v7}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 3129
    invoke-direct {v1, v6, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 3131
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3133
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 3134
    const-string v2, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v5, v0

    .line 3136
    .local v5, "callerHasLocationHardwarePermission":Z
    invoke-direct {v1, v7, v6, v5}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;

    move-result-object v4

    .line 3140
    .local v4, "sanitizedRequest":Landroid/location/LocationRequest;
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_2

    .line 3141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestGeofence: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocationManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3140
    :cond_2
    move-object/from16 v3, p2

    .line 3145
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 3146
    .local v19, "uid":I
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 3148
    const-string v0, "LocationManagerService"

    const-string/jumbo v2, "proximity alerts are currently available only to the primary user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    return-void

    .line 3151
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 3153
    .local v20, "identity":J
    :try_start_1
    iget-object v2, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 3154
    :try_start_2
    iget-object v10, v1, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x1

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 3162
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v18

    .line 3154
    move-object/from16 v13, p4

    move-object v14, v7

    move-object/from16 v17, p2

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 3163
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3165
    :try_start_3
    iget-object v2, v1, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v3, v4

    move-object v10, v4

    .end local v4    # "sanitizedRequest":Landroid/location/LocationRequest;
    .local v10, "sanitizedRequest":Landroid/location/LocationRequest;
    move-object/from16 v4, p2

    move v11, v5

    .end local v5    # "callerHasLocationHardwarePermission":Z
    .local v11, "callerHasLocationHardwarePermission":Z
    move-object/from16 v5, p3

    move v12, v6

    .end local v6    # "allowedResolutionLevel":I
    .local v12, "allowedResolutionLevel":I
    move-object v13, v7

    .end local v7    # "request":Landroid/location/LocationRequest;
    .local v13, "request":Landroid/location/LocationRequest;
    move/from16 v7, v19

    move-object/from16 v8, p4

    :try_start_4
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/GeofenceManager;->addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3169
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3170
    nop

    .line 3171
    return-void

    .line 3163
    .end local v10    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v11    # "callerHasLocationHardwarePermission":Z
    .end local v12    # "allowedResolutionLevel":I
    .end local v13    # "request":Landroid/location/LocationRequest;
    .restart local v4    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v5    # "callerHasLocationHardwarePermission":Z
    .restart local v6    # "allowedResolutionLevel":I
    .restart local v7    # "request":Landroid/location/LocationRequest;
    :catchall_0
    move-exception v0

    move-object v10, v4

    move v11, v5

    move v12, v6

    move-object v13, v7

    .end local v4    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v5    # "callerHasLocationHardwarePermission":Z
    .end local v6    # "allowedResolutionLevel":I
    .end local v7    # "request":Landroid/location/LocationRequest;
    .restart local v10    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v11    # "callerHasLocationHardwarePermission":Z
    .restart local v12    # "allowedResolutionLevel":I
    .restart local v13    # "request":Landroid/location/LocationRequest;
    :goto_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v10    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v11    # "callerHasLocationHardwarePermission":Z
    .end local v12    # "allowedResolutionLevel":I
    .end local v13    # "request":Landroid/location/LocationRequest;
    .end local v19    # "uid":I
    .end local v20    # "identity":J
    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p2    # "geofence":Landroid/location/Geofence;
    .end local p3    # "intent":Landroid/app/PendingIntent;
    .end local p4    # "packageName":Ljava/lang/String;
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3169
    .restart local v10    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v11    # "callerHasLocationHardwarePermission":Z
    .restart local v12    # "allowedResolutionLevel":I
    .restart local v13    # "request":Landroid/location/LocationRequest;
    .restart local v19    # "uid":I
    .restart local v20    # "identity":J
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p2    # "geofence":Landroid/location/Geofence;
    .restart local p3    # "intent":Landroid/app/PendingIntent;
    .restart local p4    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 3163
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 3169
    .end local v10    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v11    # "callerHasLocationHardwarePermission":Z
    .end local v12    # "allowedResolutionLevel":I
    .end local v13    # "request":Landroid/location/LocationRequest;
    .restart local v4    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v5    # "callerHasLocationHardwarePermission":Z
    .restart local v6    # "allowedResolutionLevel":I
    .restart local v7    # "request":Landroid/location/LocationRequest;
    :catchall_3
    move-exception v0

    move-object v10, v4

    move v11, v5

    move v12, v6

    move-object v13, v7

    .end local v4    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v5    # "callerHasLocationHardwarePermission":Z
    .end local v6    # "allowedResolutionLevel":I
    .end local v7    # "request":Landroid/location/LocationRequest;
    .restart local v10    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v11    # "callerHasLocationHardwarePermission":Z
    .restart local v12    # "allowedResolutionLevel":I
    .restart local v13    # "request":Landroid/location/LocationRequest;
    :goto_4
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3131
    .end local v10    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v11    # "callerHasLocationHardwarePermission":Z
    .end local v12    # "allowedResolutionLevel":I
    .end local v13    # "request":Landroid/location/LocationRequest;
    .end local v19    # "uid":I
    .end local v20    # "identity":J
    .restart local v6    # "allowedResolutionLevel":I
    .restart local v7    # "request":Landroid/location/LocationRequest;
    :catchall_4
    move-exception v0

    move v12, v6

    move-object v13, v7

    .end local v6    # "allowedResolutionLevel":I
    .end local v7    # "request":Landroid/location/LocationRequest;
    .restart local v12    # "allowedResolutionLevel":I
    .restart local v13    # "request":Landroid/location/LocationRequest;
    :goto_5
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_5

    .line 3125
    .end local v12    # "allowedResolutionLevel":I
    .end local v13    # "request":Landroid/location/LocationRequest;
    .restart local v6    # "allowedResolutionLevel":I
    .restart local v7    # "request":Landroid/location/LocationRequest;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid pending intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 24
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 2763
    move-object/from16 v9, p0

    move-object/from16 v8, p4

    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->getLogLevelStatusUpdates()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    .line 2766
    iget-object v7, v9, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2767
    if-nez p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v0, "request":Landroid/location/LocationRequest;
    goto :goto_0

    .line 2837
    .end local v0    # "request":Landroid/location/LocationRequest;
    .restart local p1    # "request":Landroid/location/LocationRequest;
    :catchall_0
    move-exception v0

    move-object/from16 v14, p1

    move-object v15, v7

    move-object v12, v8

    goto/16 :goto_9

    .line 2767
    :cond_0
    move-object/from16 v6, p1

    .line 2768
    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v6, "request":Landroid/location/LocationRequest;
    :goto_0
    :try_start_1
    invoke-direct {v9, v8}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2769
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    move v5, v0

    .line 2770
    .local v5, "allowedResolutionLevel":I
    nop

    .line 2771
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 2770
    invoke-direct {v9, v5, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 2772
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object/from16 v19, v0

    .line 2773
    .local v19, "workSource":Landroid/os/WorkSource;
    const/4 v0, 0x0

    if-eqz v19, :cond_1

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2774
    iget-object v1, v9, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 2837
    .end local v5    # "allowedResolutionLevel":I
    .end local v19    # "workSource":Landroid/os/WorkSource;
    :catchall_1
    move-exception v0

    move-object v14, v6

    move-object v15, v7

    move-object v12, v8

    goto/16 :goto_9

    .line 2777
    .restart local v5    # "allowedResolutionLevel":I
    .restart local v19    # "workSource":Landroid/os/WorkSource;
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Landroid/location/LocationRequest;->getHideFromAppOps()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move/from16 v20, v1

    .line 2778
    .local v20, "hideFromAppOps":Z
    if-eqz v20, :cond_2

    .line 2779
    :try_start_4
    iget-object v1, v9, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2782
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v1, :cond_3

    .line 2783
    :try_start_6
    iget-object v1, v9, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2786
    :cond_3
    :try_start_7
    iget-object v0, v9, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    .line 2787
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    move v4, v0

    .line 2789
    .local v4, "callerHasLocationHardwarePermission":Z
    invoke-direct {v9, v6, v5, v4}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;

    move-result-object v0

    move-object v3, v0

    .line 2793
    .local v3, "sanitizedRequest":Landroid/location/LocationRequest;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v15, v0

    .line 2794
    .local v15, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v14, v0

    .line 2796
    .local v14, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-wide/from16 v21, v10

    .line 2801
    .local v21, "identity":J
    :try_start_8
    invoke-virtual {v9, v15, v14, v8, v5}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 2803
    if-nez p3, :cond_6

    if-eqz p2, :cond_5

    goto :goto_3

    .line 2804
    :cond_5
    :try_start_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "need either listener or intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v4    # "callerHasLocationHardwarePermission":Z
    .end local v5    # "allowedResolutionLevel":I
    .end local v6    # "request":Landroid/location/LocationRequest;
    .end local v14    # "uid":I
    .end local v15    # "pid":I
    .end local v19    # "workSource":Landroid/os/WorkSource;
    .end local v20    # "hideFromAppOps":Z
    .end local v21    # "identity":J
    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p2    # "listener":Landroid/location/ILocationListener;
    .end local p3    # "intent":Landroid/app/PendingIntent;
    .end local p4    # "packageName":Ljava/lang/String;
    throw v0

    .line 2835
    .restart local v3    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v4    # "callerHasLocationHardwarePermission":Z
    .restart local v5    # "allowedResolutionLevel":I
    .restart local v6    # "request":Landroid/location/LocationRequest;
    .restart local v14    # "uid":I
    .restart local v15    # "pid":I
    .restart local v19    # "workSource":Landroid/os/WorkSource;
    .restart local v20    # "hideFromAppOps":Z
    .restart local v21    # "identity":J
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p2    # "listener":Landroid/location/ILocationListener;
    .restart local p3    # "intent":Landroid/app/PendingIntent;
    .restart local p4    # "packageName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v11, v3

    move/from16 p1, v4

    move v13, v5

    move-object v12, v8

    move v10, v14

    move/from16 v23, v15

    move-object v14, v6

    move-object v15, v7

    goto/16 :goto_8

    .line 2805
    :cond_6
    :goto_3
    if-eqz p3, :cond_8

    if-nez p2, :cond_7

    goto :goto_4

    .line 2806
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot register both listener and intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v4    # "callerHasLocationHardwarePermission":Z
    .end local v5    # "allowedResolutionLevel":I
    .end local v6    # "request":Landroid/location/LocationRequest;
    .end local v14    # "uid":I
    .end local v15    # "pid":I
    .end local v19    # "workSource":Landroid/os/WorkSource;
    .end local v20    # "hideFromAppOps":Z
    .end local v21    # "identity":J
    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p2    # "listener":Landroid/location/ILocationListener;
    .end local p3    # "intent":Landroid/app/PendingIntent;
    .end local p4    # "packageName":Ljava/lang/String;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2810
    .restart local v3    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v4    # "callerHasLocationHardwarePermission":Z
    .restart local v5    # "allowedResolutionLevel":I
    .restart local v6    # "request":Landroid/location/LocationRequest;
    .restart local v14    # "uid":I
    .restart local v15    # "pid":I
    .restart local v19    # "workSource":Landroid/os/WorkSource;
    .restart local v20    # "hideFromAppOps":Z
    .restart local v21    # "identity":J
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p2    # "listener":Landroid/location/ILocationListener;
    .restart local p3    # "intent":Landroid/app/PendingIntent;
    .restart local p4    # "packageName":Ljava/lang/String;
    :cond_8
    :goto_4
    :try_start_a
    iget-object v10, v9, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz p2, :cond_9

    move v0, v1

    goto :goto_5

    :cond_9
    move v0, v2

    :goto_5
    if-eqz p3, :cond_a

    move/from16 v16, v1

    goto :goto_6

    :cond_a
    move/from16 v16, v2

    :goto_6
    const/16 v17, 0x0

    iget-object v1, v9, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2815
    invoke-virtual {v1, v8}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 2810
    move-object/from16 v13, p4

    move v2, v14

    .end local v14    # "uid":I
    .local v2, "uid":I
    move-object v14, v6

    move/from16 v23, v15

    .end local v15    # "pid":I
    .local v23, "pid":I
    move v15, v0

    :try_start_b
    invoke-virtual/range {v10 .. v18}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 2818
    if-eqz p3, :cond_b

    .line 2819
    move-object/from16 v1, p0

    move v10, v2

    .end local v2    # "uid":I
    .local v10, "uid":I
    move-object/from16 v2, p3

    move-object v11, v3

    .end local v3    # "sanitizedRequest":Landroid/location/LocationRequest;
    .local v11, "sanitizedRequest":Landroid/location/LocationRequest;
    move/from16 v3, v23

    move v12, v4

    .end local v4    # "callerHasLocationHardwarePermission":Z
    .local v12, "callerHasLocationHardwarePermission":Z
    move v4, v10

    move v13, v5

    .end local v5    # "allowedResolutionLevel":I
    .local v13, "allowedResolutionLevel":I
    move-object/from16 v5, p4

    move-object v14, v6

    .end local v6    # "request":Landroid/location/LocationRequest;
    .local v14, "request":Landroid/location/LocationRequest;
    move-object/from16 v6, v19

    move-object v15, v7

    move/from16 v7, v20

    :try_start_c
    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move/from16 p1, v12

    move-object v12, v8

    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_7

    .line 2835
    .end local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_3
    move-exception v0

    move/from16 p1, v12

    move-object v12, v8

    goto :goto_8

    .line 2829
    .end local v10    # "uid":I
    .end local v11    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v12    # "callerHasLocationHardwarePermission":Z
    .end local v13    # "allowedResolutionLevel":I
    .end local v14    # "request":Landroid/location/LocationRequest;
    .restart local v2    # "uid":I
    .restart local v3    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v4    # "callerHasLocationHardwarePermission":Z
    .restart local v5    # "allowedResolutionLevel":I
    .restart local v6    # "request":Landroid/location/LocationRequest;
    :cond_b
    move v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v6

    move-object v15, v7

    .end local v2    # "uid":I
    .end local v3    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v4    # "callerHasLocationHardwarePermission":Z
    .end local v5    # "allowedResolutionLevel":I
    .end local v6    # "request":Landroid/location/LocationRequest;
    .restart local v10    # "uid":I
    .restart local v11    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v12    # "callerHasLocationHardwarePermission":Z
    .restart local v13    # "allowedResolutionLevel":I
    .restart local v14    # "request":Landroid/location/LocationRequest;
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move/from16 v4, v23

    move v5, v10

    move-object/from16 v6, p4

    move-object/from16 v7, v19

    move/from16 p1, v12

    move-object v12, v8

    .end local v12    # "callerHasLocationHardwarePermission":Z
    .local p1, "callerHasLocationHardwarePermission":Z
    move/from16 v8, v20

    :try_start_d
    invoke-direct/range {v1 .. v8}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/LocationRequest;Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    .line 2833
    .restart local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :goto_7
    invoke-direct {v9, v11, v0, v10, v12}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;ILjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 2835
    .end local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :try_start_e
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2836
    nop

    .line 2837
    .end local v10    # "uid":I
    .end local v11    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v13    # "allowedResolutionLevel":I
    .end local v19    # "workSource":Landroid/os/WorkSource;
    .end local v20    # "hideFromAppOps":Z
    .end local v21    # "identity":J
    .end local v23    # "pid":I
    .end local p1    # "callerHasLocationHardwarePermission":Z
    monitor-exit v15

    .line 2838
    return-void

    .line 2835
    .restart local v10    # "uid":I
    .restart local v11    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v13    # "allowedResolutionLevel":I
    .restart local v19    # "workSource":Landroid/os/WorkSource;
    .restart local v20    # "hideFromAppOps":Z
    .restart local v21    # "identity":J
    .restart local v23    # "pid":I
    .restart local p1    # "callerHasLocationHardwarePermission":Z
    :catchall_4
    move-exception v0

    goto :goto_8

    .end local v10    # "uid":I
    .end local v11    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v13    # "allowedResolutionLevel":I
    .end local v14    # "request":Landroid/location/LocationRequest;
    .end local p1    # "callerHasLocationHardwarePermission":Z
    .restart local v2    # "uid":I
    .restart local v3    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v4    # "callerHasLocationHardwarePermission":Z
    .restart local v5    # "allowedResolutionLevel":I
    .restart local v6    # "request":Landroid/location/LocationRequest;
    :catchall_5
    move-exception v0

    move v10, v2

    move-object v11, v3

    move/from16 p1, v4

    move v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object v12, v8

    .end local v2    # "uid":I
    .end local v3    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v4    # "callerHasLocationHardwarePermission":Z
    .end local v5    # "allowedResolutionLevel":I
    .end local v6    # "request":Landroid/location/LocationRequest;
    .restart local v10    # "uid":I
    .restart local v11    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v13    # "allowedResolutionLevel":I
    .restart local v14    # "request":Landroid/location/LocationRequest;
    .restart local p1    # "callerHasLocationHardwarePermission":Z
    goto :goto_8

    .end local v10    # "uid":I
    .end local v11    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v13    # "allowedResolutionLevel":I
    .end local v23    # "pid":I
    .end local p1    # "callerHasLocationHardwarePermission":Z
    .restart local v3    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v4    # "callerHasLocationHardwarePermission":Z
    .restart local v5    # "allowedResolutionLevel":I
    .restart local v6    # "request":Landroid/location/LocationRequest;
    .local v14, "uid":I
    .restart local v15    # "pid":I
    :catchall_6
    move-exception v0

    move-object v11, v3

    move/from16 p1, v4

    move v13, v5

    move-object v12, v8

    move v10, v14

    move/from16 v23, v15

    move-object v14, v6

    move-object v15, v7

    .end local v3    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v4    # "callerHasLocationHardwarePermission":Z
    .end local v5    # "allowedResolutionLevel":I
    .end local v6    # "request":Landroid/location/LocationRequest;
    .end local v15    # "pid":I
    .restart local v10    # "uid":I
    .restart local v11    # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v13    # "allowedResolutionLevel":I
    .local v14, "request":Landroid/location/LocationRequest;
    .restart local v23    # "pid":I
    .restart local p1    # "callerHasLocationHardwarePermission":Z
    :goto_8
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v14    # "request":Landroid/location/LocationRequest;
    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p2    # "listener":Landroid/location/ILocationListener;
    .end local p3    # "intent":Landroid/app/PendingIntent;
    .end local p4    # "packageName":Ljava/lang/String;
    throw v0

    .line 2837
    .end local v10    # "uid":I
    .end local v11    # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v13    # "allowedResolutionLevel":I
    .end local v19    # "workSource":Landroid/os/WorkSource;
    .end local v20    # "hideFromAppOps":Z
    .end local v21    # "identity":J
    .end local v23    # "pid":I
    .end local p1    # "callerHasLocationHardwarePermission":Z
    .restart local v6    # "request":Landroid/location/LocationRequest;
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p2    # "listener":Landroid/location/ILocationListener;
    .restart local p3    # "intent":Landroid/app/PendingIntent;
    .restart local p4    # "packageName":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object v14, v6

    move-object v15, v7

    move-object v12, v8

    .end local v6    # "request":Landroid/location/LocationRequest;
    .restart local v14    # "request":Landroid/location/LocationRequest;
    :goto_9
    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_9
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 3415
    if-eqz p1, :cond_2

    .line 3419
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3420
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 3423
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    .line 3429
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 3434
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 3435
    .local v1, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v1, :cond_0

    .line 3436
    invoke-virtual {v1, p2, p3}, Lcom/android/server/LocationManagerService$LocationProvider;->sendExtraCommandLocked(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3439
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3, p1}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    .line 3444
    monitor-exit v0

    return v4

    .line 3431
    .end local v1    # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "providerName":Ljava/lang/String;
    .end local p2    # "command":Ljava/lang/String;
    .end local p3    # "extras":Landroid/os/Bundle;
    throw v1

    .line 3445
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "providerName":Ljava/lang/String;
    .restart local p2    # "command":Ljava/lang/String;
    .restart local p3    # "extras":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3417
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public sendNiResponse(II)Z
    .locals 3
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    .line 3450
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3455
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v0, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3456
    :catch_0
    move-exception v0

    .line 3457
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    const/4 v1, 0x0

    return v1

    .line 3451
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "calling sendNiResponse from outside of the system is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtraLocationControllerPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3491
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3493
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3494
    :try_start_0
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    .line 3495
    monitor-exit v0

    .line 3496
    return-void

    .line 3495
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

    .line 3507
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3509
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3510
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    .line 3511
    monitor-exit v0

    .line 3512
    return-void

    .line 3511
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 3952
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3953
    return-void

    .line 3956
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3957
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 3958
    .local v1, "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3962
    move-object v2, v1

    check-cast v2, Lcom/android/server/LocationManagerService$MockLocationProvider;

    invoke-virtual {v2, p2}, Lcom/android/server/LocationManagerService$MockLocationProvider;->setEnabledLocked(Z)V

    .line 3963
    .end local v1    # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    monitor-exit v0

    .line 3964
    return-void

    .line 3959
    .restart local v1    # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "providerName":Ljava/lang/String;
    .end local p2    # "enabled":Z
    .end local p3    # "opPackageName":Ljava/lang/String;
    throw v2

    .line 3963
    .end local v1    # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "providerName":Ljava/lang/String;
    .restart local p2    # "enabled":Z
    .restart local p3    # "opPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .locals 8
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 3928
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3929
    return-void

    .line 3932
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3933
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 3934
    .local v1, "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3938
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    .line 3939
    .local v2, "locationProvider":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3942
    const v3, 0x534e4554

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "33091107"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "!="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3943
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 3942
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3946
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/android/server/LocationManagerService$MockLocationProvider;

    invoke-virtual {v3, p2}, Lcom/android/server/LocationManagerService$MockLocationProvider;->setLocationLocked(Landroid/location/Location;)V

    .line 3947
    .end local v1    # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v2    # "locationProvider":Ljava/lang/String;
    monitor-exit v0

    .line 3948
    return-void

    .line 3935
    .restart local v1    # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "providerName":Ljava/lang/String;
    .end local p2    # "location":Landroid/location/Location;
    .end local p3    # "opPackageName":Ljava/lang/String;
    throw v2

    .line 3947
    .end local v1    # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "providerName":Ljava/lang/String;
    .restart local p2    # "location":Landroid/location/Location;
    .restart local p3    # "opPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V
    .locals 5
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "updateTime"    # J
    .param p6, "opPackageName"    # Ljava/lang/String;

    .line 3969
    invoke-direct {p0, p6}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3970
    return-void

    .line 3973
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3974
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 3975
    .local v1, "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3979
    move-object v2, v1

    check-cast v2, Lcom/android/server/LocationManagerService$MockLocationProvider;

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/server/LocationManagerService$MockLocationProvider;->setStatusLocked(ILandroid/os/Bundle;J)V

    .line 3980
    .end local v1    # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    monitor-exit v0

    .line 3981
    return-void

    .line 3976
    .restart local v1    # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/LocationManagerService;
    .end local p1    # "providerName":Ljava/lang/String;
    .end local p2    # "status":I
    .end local p3    # "extras":Landroid/os/Bundle;
    .end local p4    # "updateTime":J
    .end local p6    # "opPackageName":Ljava/lang/String;
    throw v2

    .line 3980
    .end local v1    # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .restart local p0    # "this":Lcom/android/server/LocationManagerService;
    .restart local p1    # "providerName":Ljava/lang/String;
    .restart local p2    # "status":I
    .restart local p3    # "extras":Landroid/os/Bundle;
    .restart local p4    # "updateTime":J
    .restart local p6    # "opPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startGnssBatch(JZLjava/lang/String;)Z
    .locals 3
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1959
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    invoke-direct {p0, p4}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1966
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1967
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-eqz v1, :cond_1

    .line 1969
    const-string v1, "LocationManagerService"

    const-string/jumbo v2, "startGnssBatch unexpectedly called w/o stopping prior batch"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->stopGnssBatch()Z

    .line 1974
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 1975
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/GnssBatchingProvider;->start(JZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1976
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1963
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopGnssBatch()Z
    .locals 3

    .line 2002
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2006
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2007
    iput-boolean v2, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 2008
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssBatchingProvider;->stop()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2010
    :cond_0
    monitor-exit v0

    return v2

    .line 2012
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemRunning()V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->initializeLocked()V

    .line 400
    monitor-exit v0

    .line 401
    return-void

    .line 400
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;

    .line 3211
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LocationManagerService;->removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 3212
    return-void
.end method
