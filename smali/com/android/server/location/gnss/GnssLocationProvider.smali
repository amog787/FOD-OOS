.class public Lcom/android/server/location/gnss/GnssLocationProvider;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;
.implements Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssLocationProvider$FusedLocationListener;,
        Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;,
        Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;,
        Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;,
        Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;,
        Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;,
        Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;,
        Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;,
        Lcom/android/server/location/gnss/GnssLocationProvider$NativeEntryPoint;
    }
.end annotation


# static fields
.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static D:Z = false

.field private static final DEBUG:Z

.field private static final DOWNLOAD_EXTRA_WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProviderPsdsDownload"

.field private static final DOWNLOAD_PSDS_DATA:I = 0x6

.field private static final DOWNLOAD_PSDS_DATA_FINISHED:I = 0xb

.field private static final DOWNLOAD_PSDS_DATA_TIMEOUT_MS:J = 0xea60L

.field private static final ELAPSED_REALTIME_HAS_TIMESTAMP_NS:I = 0x1

.field private static final ELAPSED_REALTIME_HAS_TIME_UNCERTAINTY_NS:I = 0x2

.field private static final EMERGENCY_LOCATION_UPDATE_DURATION_MULTIPLIER:I = 0x3

.field public static final GPS_CAPABILITY_ANTENNA_INFO:I = 0x800

.field public static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field public static final GPS_CAPABILITY_LOW_POWER_MODE:I = 0x100

.field public static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field public static final GPS_CAPABILITY_MEASUREMENT_CORRECTIONS:I = 0x400

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field public static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field public static final GPS_CAPABILITY_SATELLITE_BLACKLIST:I = 0x200

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INITIALIZE_HANDLER:I = 0xd

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final ITAR_SPEED_LIMIT_METERS_PER_SECOND:F = 400.0f

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_BEARING_ACCURACY:I = 0x80

.field private static final LOCATION_HAS_HORIZONTAL_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_HAS_SPEED_ACCURACY:I = 0x40

.field private static final LOCATION_HAS_VERTICAL_ACCURACY:I = 0x20

.field private static final LOCATION_INVALID:I = 0x0

.field private static final LOCATION_OFF_DELAY_THRESHOLD_ERROR_MILLIS:J = 0x3a98L

.field private static final LOCATION_OFF_DELAY_THRESHOLD_WARN_MILLIS:J = 0x7d0L

.field private static final LOCATION_UPDATE_DURATION_MILLIS:J = 0x2710L

.field private static final LOCATION_UPDATE_MIN_TIME_INTERVAL_MILLIS:J = 0x3e8L

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final OEM_LOG_UPDATED:Ljava/lang/String; = "com.oneplus.intent.OEM_LOG_UPDATED"

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final REPORT_LOCATION:I = 0x11

.field private static final REPORT_SV_STATUS:I = 0x12

.field private static final REQUEST_LOCATION:I = 0x10

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final SIM_STATUS_CHANGED:I = 0x2711

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOW_POWER_MODE:I = 0x1

.field private static final VERBOSE:Z

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProvider"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0x7530L

.field private static sIsInitialized:Z

.field private static sStaticTestOverride:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceIdleStationaryListener:Lcom/android/server/DeviceIdleInternal$StationaryListener;

.field private mDisableGpsForPowerManager:Z

.field private mDownloadPsdsDataPending:I

.field private final mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mFusedLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private final mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

.field private final mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

.field private final mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

.field private mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

.field private final mGnssGeofenceProvider:Lcom/android/server/location/gnss/GnssGeofenceProvider;

.field private final mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

.field private mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

.field private final mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

.field private mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field private mGpsEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private volatile mHardwareModelName:Ljava/lang/String;

.field private volatile mHardwareYear:I

.field private volatile mIsDeviceStationary:Z

.field private volatile mItarSpeedLimitExceeded:Z

.field private mLastFixTime:J

.field private mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

.field private final mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private mLowPowerMode:Z

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private final mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

.field private final mNetworkLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

.field private mNmeaBuffer:[B

.field private final mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private final mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

.field private mShutdown:Z

.field private mStarted:Z

.field private mStartedChangedElapsedRealtime:J

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsPsds:Z

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private volatile mTopHalCapabilities:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 131
    const-string v0, "GnssLocationProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/location/gnss/GnssLocationProvider;->D:Z

    .line 136
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    .line 138
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 344
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->sIsInitialized:Z

    .line 345
    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->sStaticTestOverride:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 705
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 318
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 341
    new-instance v0, Lcom/android/server/location/gnss/ExponentialBackOff;

    const-wide/32 v1, 0x493e0

    const-wide/32 v3, 0xdbba00

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/location/gnss/ExponentialBackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsDataPending:I

    .line 366
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 369
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLowPowerMode:Z

    .line 388
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    .line 390
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 401
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 403
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    .line 409
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIsDeviceStationary:Z

    .line 418
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    .line 421
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 424
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    .line 430
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;

    invoke-direct {v2, p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$1;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

    .line 431
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$FusedLocationListener;

    invoke-direct {v2, p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$FusedLocationListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$1;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

    .line 472
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 477
    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHardwareYear:I

    .line 485
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 514
    new-instance v2, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$1hXQgNJS0Q8F8bUdWsxa94PM98g;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$1hXQgNJS0Q8F8bUdWsxa94PM98g;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeviceIdleStationaryListener:Lcom/android/server/DeviceIdleInternal$StationaryListener;

    .line 522
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$1;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2015
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$9;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$9;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2485
    const/16 v2, 0x78

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNmeaBuffer:[B

    .line 707
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->ensureInitialized()V

    .line 709
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 710
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    .line 714
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->initInstance(Landroid/content/Context;)V

    .line 719
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->getInstance(Landroid/content/Context;)V

    .line 723
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 724
    const/4 v3, 0x1

    const-string v4, "GnssLocationProvider"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 725
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 728
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "GnssLocationProviderPsdsDownload"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 730
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 732
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 733
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 734
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 737
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 740
    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 744
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v4}, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 751
    new-instance v2, Lcom/android/server/location/gnss/GnssConfiguration;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/location/gnss/GnssConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 752
    new-instance v2, Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    invoke-direct {v2}, Lcom/android/server/location/gnss/GnssCapabilitiesProvider;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    .line 754
    new-instance v2, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget-boolean v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {v2, p1, v4, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 757
    new-instance v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    new-instance v4, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$48m7ukf99eMCKhVUjqljxXFFvWw;

    invoke-direct {v4, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$48m7ukf99eMCKhVUjqljxXFFvWw;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v2, p1, v4, v5, v6}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;-><init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 760
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$2;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider$2;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    .line 772
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$3;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider$3;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 779
    new-instance v2, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v4}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    .line 781
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$4;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider$4;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 788
    new-instance v2, Lcom/android/server/location/gnss/GnssLocationProvider$5;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider$5;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    .line 795
    new-instance v2, Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {v2, v4, v5}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;-><init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    .line 796
    new-instance v2, Lcom/android/server/location/gnss/NtpTimeHelper;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v4, v5, p0}, Lcom/android/server/location/gnss/NtpTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    .line 797
    new-instance v2, Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v4, v5, p0}, Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;)V

    .line 800
    .local v2, "gnssSatelliteBlacklistHelper":Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;
    new-instance v4, Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-direct {v4}, Lcom/android/server/location/gnss/GnssBatchingProvider;-><init>()V

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    .line 801
    new-instance v4, Lcom/android/server/location/gnss/GnssGeofenceProvider;

    invoke-direct {v4}, Lcom/android/server/location/gnss/GnssGeofenceProvider;-><init>()V

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/gnss/GnssGeofenceProvider;

    .line 803
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/location/gnss/GnssLocationProvider$6;

    invoke-direct {v6, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$6;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v8, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 813
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 814
    const-string/jumbo v5, "location_mode"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/android/server/location/gnss/GnssLocationProvider$7;

    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v7}, Lcom/android/server/location/gnss/GnssLocationProvider$7;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Handler;)V

    .line 813
    const/4 v7, -0x1

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 823
    sget-object v4, Lcom/android/server/location/gnss/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {p0, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    .line 824
    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->setAllowed(Z)V

    .line 826
    const/16 v3, 0xd

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 827
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$J1FYzW5KOl5qaNdaO2TLZ9hbi9Y;

    invoke-direct {v1, v2}, Lcom/android/server/location/gnss/-$$Lambda$J1FYzW5KOl5qaNdaO2TLZ9hbi9Y;-><init>(Lcom/android/server/location/gnss/GnssSatelliteBlacklistHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 828
    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/location/gnss/GnssLocationProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Z

    .line 116
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mShutdown:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 116
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/gnss/GnssLocationProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHardwareYear:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/gnss/GnssLocationProvider;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/location/gnss/GnssLocationProvider;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/location/gnss/GnssLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "x2"    # Landroid/os/WorkSource;

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/NtpTimeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleRequestLocation(ZZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDownloadPsdsData()V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/server/location/gnss/GnssLocationProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 116
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsDataPending:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->startNavigating()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/location/gnss/GnssLocationProvider;ZLandroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/location/Location;

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportLocation(ZLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleReportSvStatus(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->subscriptionOrCarrierConfigChanged()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/location/gnss/GnssLocationProvider;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/location/gnss/GnssLocationProvider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Z

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setupNativeGnssService(Z)V

    return-void
.end method

.method static synthetic access$3700()Z
    .locals 1

    .line 116
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_is_gnss_visibility_control_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssVisibilityControl;)Lcom/android/server/location/gnss/GnssVisibilityControl;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 116
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/internal/location/GpsNetInitiatedHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->injectBestLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->injectLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/DeviceIdleInternal$StationaryListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDeviceIdleStationaryListener:Lcom/android/server/DeviceIdleInternal$StationaryListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/location/gnss/GnssLocationProvider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p1, "x1"    # Z

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateGnssDebugLevel(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/gnss/GnssLocationProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 116
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    return v0
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1353
    if-nez p1, :cond_0

    .line 1354
    const v0, 0xffff

    .local v0, "flags":I
    goto/16 :goto_0

    .line 1356
    .end local v0    # "flags":I
    :cond_0
    const/4 v0, 0x0

    .line 1357
    .restart local v0    # "flags":I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    .line 1358
    :cond_1
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1359
    :cond_2
    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x4

    .line 1360
    :cond_3
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x8

    .line 1361
    :cond_4
    const-string/jumbo v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x10

    .line 1362
    :cond_5
    const-string/jumbo v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x20

    .line 1363
    :cond_6
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x40

    .line 1364
    :cond_7
    const-string/jumbo v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x80

    .line 1365
    :cond_8
    const-string/jumbo v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x100

    .line 1366
    :cond_9
    const-string/jumbo v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x200

    .line 1367
    :cond_a
    const-string/jumbo v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x400

    .line 1368
    :cond_b
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1369
    :cond_c
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0xffff

    or-int/2addr v0, v1

    .line 1372
    :cond_d
    :goto_0
    if-eqz v0, :cond_e

    .line 1373
    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_delete_aiding_data(I)V

    .line 1375
    :cond_e
    return-void
.end method

.method private static declared-synchronized ensureInitialized()V
    .locals 2

    const-class v0, Lcom/android/server/location/gnss/GnssLocationProvider;

    monitor-enter v0

    .line 684
    :try_start_0
    sget-boolean v1, Lcom/android/server/location/gnss/GnssLocationProvider;->sIsInitialized:Z

    if-nez v1, :cond_0

    .line 685
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->class_init_native()V

    .line 687
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/location/gnss/GnssLocationProvider;->sIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    monitor-exit v0

    return-void

    .line 683
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getGeofenceStatus(I)I
    .locals 1
    .param p0, "status"    # I

    .line 1918
    const/16 v0, -0x95

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1932
    const/4 v0, -0x1

    return v0

    .line 1924
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1930
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 1926
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 1928
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1920
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1922
    :cond_2
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSuplMode(Z)I
    .locals 3
    .param p1, "agpsEnabled"    # Z

    .line 1063
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->getForceMSA()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 1064
    return v1

    .line 1067
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1068
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v2, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplMode(I)I

    move-result v2

    .line 1069
    .local v2, "suplMode":I
    if-nez v2, :cond_1

    .line 1070
    return v0

    .line 1075
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_2

    .line 1076
    const/4 v0, 0x1

    return v0

    .line 1079
    .end local v2    # "suplMode":I
    :cond_2
    return v0
.end method

.method private handleDisable()V
    .locals 3

    .line 1121
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 1124
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1125
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1126
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1127
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1129
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v1, :cond_1

    .line 1130
    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    .line 1132
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider;->disable()V

    .line 1134
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_cleanup()V

    .line 1136
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->onGpsEnabledChanged()V

    .line 1137
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1138
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1139
    return-void
.end method

.method private handleDownloadPsdsData()V
    .locals 4

    .line 973
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-nez v0, :cond_0

    .line 975
    const-string v0, "GnssLocationProvider"

    const-string v1, "handleDownloadPsdsData() called when PSDS not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    return-void

    .line 978
    :cond_0
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsDataPending:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 980
    return-void

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 984
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsDataPending:I

    .line 985
    return-void

    .line 987
    :cond_2
    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsDataPending:I

    .line 989
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 991
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 992
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    const-string v0, "GnssLocationProvider"

    const-string v1, "WakeLock acquired by handleDownloadPsdsData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Uy9I68Vlml9tFscm83qneB-BCUE;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Uy9I68Vlml9tFscm83qneB-BCUE;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1027
    return-void

    .line 992
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleEnable()V
    .locals 5

    .line 1089
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_0

    const-string v0, "handleEnable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_init()Z

    move-result v0

    .line 1093
    .local v0, "inited":Z
    if-eqz v0, :cond_3

    .line 1094
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 1095
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_supports_psds()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    .line 1098
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1099
    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1102
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1103
    const/4 v3, 0x2

    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1107
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1108
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1109
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->onGpsEnabledChanged()V

    .line 1110
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssBatchingProvider;->enable()V

    .line 1111
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v2, :cond_4

    .line 1112
    invoke-virtual {v2, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    goto :goto_0

    .line 1115
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 1116
    const-string v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_4
    :goto_0
    return-void
.end method

.method private handleReportLocation(ZLandroid/location/Location;)V
    .locals 7
    .param p1, "hasLatLong"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1513
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1514
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const/high16 v3, 0x43c80000    # 400.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 1517
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    const-string v3, "GnssLocationProvider"

    if-eqz v0, :cond_3

    .line 1518
    const-string v0, "Hal reported a speed in excess of ITAR limit.  GPS/GNSS Navigation output blocked."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_2

    .line 1521
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1523
    :cond_2
    return-void

    .line 1526
    :cond_3
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportLocation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 1530
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->reportLocation(Landroid/location/Location;)V

    .line 1532
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_6

    .line 1533
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1534
    if-eqz p1, :cond_8

    .line 1535
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1536
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logPositionAccuracyMeters(F)V

    .line 1538
    :cond_5
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    if-lez v0, :cond_8

    .line 1539
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    .line 1540
    .local v0, "timeBetweenFixes":I
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v4, v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logMissedReports(II)V

    .line 1541
    .end local v0    # "timeBetweenFixes":I
    goto :goto_1

    .line 1547
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v0, v4

    .line 1548
    .local v0, "locationAfterStartedFalseMillis":J
    const-wide/16 v4, 0x7d0

    cmp-long v4, v0, v4

    if-lez v4, :cond_8

    .line 1549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected GNSS Location report "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " after location turned off"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1552
    .local v4, "logMessage":Ljava/lang/String;
    const-wide/16 v5, 0x3a98

    cmp-long v5, v0, v5

    if-lez v5, :cond_7

    .line 1553
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1555
    :cond_7
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    .end local v0    # "locationAfterStartedFalseMillis":J
    .end local v4    # "logMessage":Ljava/lang/String;
    :cond_8
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 1562
    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez v4, :cond_b

    if-eqz p1, :cond_b

    .line 1563
    iget-wide v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1564
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTFF: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_a

    .line 1566
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logTimeToFirstFixMilliSecs(I)V

    .line 1570
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->onFirstFix(I)V

    .line 1573
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_c

    .line 1578
    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-ge v0, v1, :cond_c

    .line 1579
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1583
    :cond_c
    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_e

    .line 1585
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "got fix, hibernating"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_d
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hibernate()V

    .line 1588
    :cond_e
    return-void
.end method

.method private handleReportSvStatus(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    .line 1653
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    .line 1654
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)I

    move-result v1

    .line 1655
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v2

    .line 1656
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v3

    .line 1657
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1700(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v4

    .line 1658
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1800(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v5

    .line 1659
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1900(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v6

    .line 1660
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$2000(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v7

    .line 1653
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F[F[F)V

    .line 1663
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1900(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logCn0([FI[F)V

    .line 1665
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_0

    .line 1666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SV count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_0
    nop

    .line 1670
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)I

    move-result v2

    .line 1671
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v3

    .line 1672
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v4

    .line 1673
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1700(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v5

    .line 1674
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1800(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v6

    .line 1675
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1900(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v7

    .line 1676
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$2000(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    .line 1669
    invoke-static/range {v2 .. v8}, Landroid/location/GnssStatus;->wrap(I[I[F[F[F[F[F)Landroid/location/GnssStatus;

    move-result-object v0

    .line 1677
    .local v0, "gnssStatus":Landroid/location/GnssStatus;
    const/4 v2, 0x0

    .line 1678
    .local v2, "usedInFixCount":I
    const/4 v3, 0x0

    .line 1679
    .local v3, "maxCn0":I
    const/4 v4, 0x0

    .line 1680
    .local v4, "meanCn0":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 1681
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1682
    add-int/lit8 v2, v2, 0x1

    .line 1683
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v6

    int-to-float v7, v3

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 1684
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v6

    float-to-int v3, v6

    .line 1686
    :cond_1
    int-to-float v6, v4

    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v4, v6

    .line 1687
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logConstellationType(I)V

    .line 1689
    :cond_2
    sget-boolean v6, Lcom/android/server/location/gnss/GnssLocationProvider;->VERBOSE:Z

    if-eqz v6, :cond_8

    .line 1690
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "svid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cn0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " basebandCn0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getBasebandCn0DbHz(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " elev: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1693
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " azimuth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1694
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " carrier frequency: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1696
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->hasEphemerisData(I)Z

    move-result v7

    const-string v8, "  "

    if-eqz v7, :cond_3

    const-string v7, " E"

    goto :goto_1

    :cond_3
    move-object v7, v8

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->hasAlmanacData(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v8, " A"

    :cond_4
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_5

    const-string v7, "U"

    goto :goto_2

    :cond_5
    move-object v7, v8

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->hasCarrierFrequencyHz(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "F"

    goto :goto_3

    :cond_6
    move-object v7, v8

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    invoke-virtual {v0, v5}, Landroid/location/GnssStatus;->hasBasebandCn0DbHz(I)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v8, "B"

    :cond_7
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1690
    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1703
    .end local v5    # "i":I
    :cond_9
    if-lez v2, :cond_a

    .line 1704
    div-int/2addr v4, v2

    .line 1707
    :cond_a
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->set(III)V

    .line 1709
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v1, v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logSvStatus(Landroid/location/GnssStatus;)V

    .line 1710
    return-void
.end method

.method private handleRequestLocation(ZZ)V
    .locals 13
    .param p1, "independentFromGnss"    # Z
    .param p2, "isUserEmergency"    # Z

    .line 852
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isRequestLocationRateLimited()Z

    move-result v0

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_1

    .line 853
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 854
    const-string v0, "RequestLocation is denied due to too frequent requests."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_0
    return-void

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 859
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-wide/16 v2, 0x2710

    const-string v4, "gnss_hal_location_request_duration_millis"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 863
    .local v2, "durationMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 864
    const-string v4, "GNSS HAL location request is disabled by Settings."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-void

    .line 868
    :cond_2
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 872
    .local v4, "locationManager":Landroid/location/LocationManager;
    new-instance v5, Landroid/location/LocationRequest;

    invoke-direct {v5}, Landroid/location/LocationRequest;-><init>()V

    .line 873
    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v5

    .line 874
    invoke-virtual {v5, v6, v7}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v5

    .line 876
    .local v5, "locationRequest":Landroid/location/LocationRequest;
    if-eqz p1, :cond_3

    .line 878
    const-string/jumbo v6, "network"

    .line 879
    .local v6, "provider":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

    .line 880
    .local v7, "locationListener":Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;
    const/16 v8, 0xc9

    invoke-virtual {v5, v8}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_0

    .line 883
    .end local v6    # "provider":Ljava/lang/String;
    .end local v7    # "locationListener":Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;
    :cond_3
    const-string v6, "RequestLocation for dbh."

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const-string v6, "fused"

    .line 885
    .restart local v6    # "provider":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;

    .line 886
    .restart local v7    # "locationListener":Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;
    const/16 v8, 0x64

    invoke-virtual {v5, v8}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 889
    :goto_0
    invoke-virtual {v5, v6}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    .line 893
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v8}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eqz v8, :cond_5

    .line 894
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 895
    invoke-virtual {v8}, Lcom/android/server/location/gnss/GnssConfiguration;->getHalInterfaceVersion()Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    move-result-object v8

    .line 896
    .local v8, "halVersion":Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
    if-nez p2, :cond_4

    iget v11, v8, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    if-ge v11, v10, :cond_5

    .line 897
    :cond_4
    invoke-virtual {v5, v9}, Landroid/location/LocationRequest;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;

    .line 898
    const-wide/16 v11, 0x3

    mul-long/2addr v2, v11

    .line 902
    .end local v8    # "halVersion":Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
    :cond_5
    new-array v8, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v8, v10

    .line 905
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 903
    const-string v9, "GNSS HAL Requesting location updates from %s provider for %d millis."

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 902
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :try_start_0
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 909
    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    .line 908
    invoke-virtual {v4, v5, v7, v8}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 910
    invoke-static {v7}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;->access$1208(Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;)I

    .line 911
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$uzIoRUMMyGmVoy7eJ9wh9dfRcfs;

    invoke-direct {v9, v7, v6, v4}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$uzIoRUMMyGmVoy7eJ9wh9dfRcfs;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V

    invoke-virtual {v8, v9, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    goto :goto_1

    .line 918
    :catch_0
    move-exception v8

    .line 919
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "Unable to request location."

    invoke-static {v1, v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 1
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 1181
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->getLogLevelStatusUpdates()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->D:Z

    .line 1183
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1184
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 1185
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 1186
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateRequirements()V

    .line 1187
    return-void
.end method

.method private hasCapability(I)Z
    .locals 1
    .param p1, "capability"    # I

    .line 1504
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTopHalCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hibernate()V
    .locals 7

    .line 1496
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1497
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1498
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1499
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1500
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1501
    return-void
.end method

.method private injectBestLocation(Landroid/location/Location;)V
    .locals 43
    .param p1, "location"    # Landroid/location/Location;

    .line 924
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    return-void

    .line 927
    :cond_0
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_1

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "injectBestLocation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    :cond_1
    move-object/from16 v2, p1

    const-string/jumbo v0, "injectBestLocation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :goto_0
    nop

    .line 933
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    or-int/lit8 v0, v0, 0x1

    .line 934
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    or-int/2addr v0, v4

    .line 935
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x8

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    or-int/2addr v0, v4

    .line 936
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x10

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_4
    or-int/2addr v0, v4

    .line 937
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x20

    goto :goto_5

    :cond_6
    move v4, v3

    :goto_5
    or-int/2addr v0, v4

    .line 938
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x40

    goto :goto_6

    :cond_7
    move v4, v3

    :goto_6
    or-int/2addr v0, v4

    .line 939
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x80

    goto :goto_7

    :cond_8
    move v4, v3

    :goto_7
    or-int/2addr v0, v4

    .line 941
    .local v0, "gnssLocationFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    .line 942
    .local v26, "latitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v28

    .line 943
    .local v28, "longitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v30

    .line 944
    .local v30, "altitudeMeters":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    .line 945
    .local v4, "speedMetersPerSec":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v32

    .line 946
    .local v32, "bearingDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v33

    .line 947
    .local v33, "horizontalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v34

    .line 948
    .local v34, "verticalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v35

    .line 949
    .local v35, "speedAccuracyMetersPerSecond":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v36

    .line 950
    .local v36, "bearingAccuracyDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v37

    .line 952
    .local v37, "timestamp":J
    nop

    .line 953
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 954
    goto :goto_8

    :cond_9
    move v1, v3

    :goto_8
    or-int/lit8 v1, v1, 0x1

    .local v1, "elapsedRealtimeFlags":I
    move/from16 v21, v1

    .line 955
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v39

    .local v39, "elapsedRealtimeNanos":J
    move-wide/from16 v22, v39

    .line 956
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v41

    .local v41, "elapsedRealtimeUncertaintyNanos":D
    move-wide/from16 v24, v41

    .line 958
    move-object/from16 v5, p0

    move v6, v0

    move-wide/from16 v7, v26

    move-wide/from16 v9, v28

    move-wide/from16 v11, v30

    move v13, v4

    move/from16 v14, v32

    move/from16 v15, v33

    move/from16 v16, v34

    move/from16 v17, v35

    move/from16 v18, v36

    move-wide/from16 v19, v37

    invoke-direct/range {v5 .. v25}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_inject_best_location(IDDDFFFFFFJIJD)V

    .line 964
    return-void
.end method

.method private injectLocation(Landroid/location/Location;)V
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    .line 1030
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    return-void

    .line 1033
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1034
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "injectLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 1038
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    .line 1037
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_inject_location(DDF)V

    .line 1040
    :cond_2
    return-void
.end method

.method private isGpsEnabled()Z
    .locals 2

    .line 1168
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1169
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    monitor-exit v0

    return v1

    .line 1170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isRequestLocationRateLimited()Z
    .locals 1

    .line 969
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    .line 676
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->sStaticTestOverride:Z

    if-eqz v0, :cond_0

    .line 677
    const/4 v0, 0x1

    return v0

    .line 679
    :cond_0
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->ensureInitialized()V

    .line 680
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$48m7ukf99eMCKhVUjqljxXFFvWw(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->onNetworkAvailable()V

    return-void
.end method

.method static synthetic lambda$handleRequestLocation$3(Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V
    .locals 2
    .param p0, "locationListener"    # Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationManager"    # Landroid/location/LocationManager;

    .line 912
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;->access$1206(Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;)I

    move-result v0

    if-nez v0, :cond_0

    .line 913
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 914
    const-string v1, "Removing location updates from %s provider."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 913
    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-virtual {p2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 917
    :cond_0
    return-void
.end method

.method private messageIdAsString(I)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # I

    .line 2400
    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 2418
    const-string v0, "<Unknown>"

    return-object v0

    .line 2416
    :pswitch_0
    const-string v0, "REPORT_SV_STATUS"

    return-object v0

    .line 2414
    :pswitch_1
    const-string v0, "REPORT_LOCATION"

    return-object v0

    .line 2406
    :pswitch_2
    const-string v0, "REQUEST_LOCATION"

    return-object v0

    .line 2408
    :cond_0
    const-string v0, "DOWNLOAD_PSDS_DATA"

    return-object v0

    .line 2404
    :cond_1
    const-string v0, "INJECT_NTP_TIME"

    return-object v0

    .line 2412
    :cond_2
    const-string v0, "INITIALIZE_HANDLER"

    return-object v0

    .line 2410
    :cond_3
    const-string v0, "DOWNLOAD_PSDS_DATA_FINISHED"

    return-object v0

    .line 2402
    :cond_4
    const-string v0, "SET_REQUEST"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private static native native_init_once(Z)V
.end method

.method private native native_inject_best_location(IDDDFFFFFFJIJD)V
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_psds_data([BI)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private static native native_is_gnss_visibility_control_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIIIZ)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_psds()Z
.end method

.method private onNetworkAvailable()V
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/NtpTimeHelper;->onNetworkAvailable()V

    .line 843
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsDataPending:I

    if-nez v0, :cond_0

    .line 844
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz v0, :cond_0

    .line 846
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->psdsDownloadRequest()V

    .line 849
    :cond_0
    return-void
.end method

.method private psdsDownloadRequest()V
    .locals 3

    .line 1910
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "psdsDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1912
    return-void
.end method

.method private reloadGpsProperties()V
    .locals 3

    .line 691
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties()V

    .line 692
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setSuplHostPort()V

    .line 694
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 695
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getC2KPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mC2KServerPort:I

    .line 696
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSec()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyExtensionSeconds(I)V

    .line 697
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplEs(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 698
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 699
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-eqz v0, :cond_1

    .line 700
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->onConfigurationUpdated(Lcom/android/server/location/gnss/GnssConfiguration;)V

    .line 702
    :cond_1
    return-void
.end method

.method private reportAGpsStatus(II[B)V
    .locals 1
    .param p1, "agpsType"    # I
    .param p2, "agpsStatus"    # I
    .param p3, "suplIpAddr"    # [B

    .line 1714
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->onReportAGpsStatus(II[B)V

    .line 1715
    return-void
.end method

.method private reportAntennaInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;)V"
        }
    .end annotation

    .line 1736
    .local p1, "antennaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAntennaInfo;>;"
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$xaxwnqf63W8zGr9Kn8-UlidNCnQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$xaxwnqf63W8zGr9Kn8-UlidNCnQ;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1737
    return-void
.end method

.method private reportGeofenceAddStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 1974
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$rgFKb65-G1v1tT1PvG_zM5Cu9ow;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$rgFKb65-G1v1tT1PvG_zM5Cu9ow;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1980
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 1994
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$XtnZg2i6zQ3zAxKz8mbOcfwTynM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$XtnZg2i6zQ3zAxKz8mbOcfwTynM;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2000
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 1984
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Po9DUHK3L1PpbGGCgj1mrp52IrQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Po9DUHK3L1PpbGGCgj1mrp52IrQ;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1990
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2004
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$GzJooLcajwKXjG81lo8NnjxSEiM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$GzJooLcajwKXjG81lo8NnjxSEiM;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2010
    return-void
.end method

.method private reportGeofenceStatus(ILandroid/location/Location;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "location"    # Landroid/location/Location;

    .line 1956
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$zlx4t8vwhG59btefM8ED7yKJkGo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$zlx4t8vwhG59btefM8ED7yKJkGo;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;ILandroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1970
    return-void
.end method

.method private reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .locals 9
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "transitionTimestamp"    # J

    .line 1939
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Fw0uWuvdqI1ibhSoaBP0bXbsdfQ;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Fw0uWuvdqI1ibhSoaBP0bXbsdfQ;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;ILandroid/location/Location;IJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1952
    return-void
.end method

.method private reportGnssServiceDied()V
    .locals 3

    .line 1826
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v1, "reportGnssServiceDied"

    const-string v2, "GnssLocationProvider"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    :cond_0
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->D:Z

    if-eqz v0, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$hLwY6ylHOq44P-KB9lblwwg14fM;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$hLwY6ylHOq44P-KB9lblwwg14fM;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1840
    return-void
.end method

.method private reportLocation(ZLandroid/location/Location;)V
    .locals 1
    .param p1, "hasLatLong"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1509
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1510
    return-void
.end method

.method private reportLocationBatch([Landroid/location/Location;)V
    .locals 3
    .param p1, "locationArray"    # [Landroid/location/Location;

    .line 1901
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1902
    .local v0, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    sget-boolean v1, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location batch of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reportLocation(Ljava/util/List;)V

    .line 1906
    return-void
.end method

.method private reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .line 1728
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$7EbR0bHHCchIxQlijJFeXsc0ARo;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$7EbR0bHHCchIxQlijJFeXsc0ARo;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1732
    :cond_0
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .locals 2
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 1741
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Y64_3A4uwFkzZKGDV9s57Dieiqc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$Y64_3A4uwFkzZKGDV9s57Dieiqc;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1745
    :cond_0
    return-void
.end method

.method private reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 10
    .param p1, "proxyAppPackageName"    # Ljava/lang/String;
    .param p2, "protocolStack"    # B
    .param p3, "otherProtocolStackName"    # Ljava/lang/String;
    .param p4, "requestor"    # B
    .param p5, "requestorId"    # Ljava/lang/String;
    .param p6, "responseType"    # B
    .param p7, "inEmergencyMode"    # Z
    .param p8, "isCachedLocation"    # Z

    .line 2196
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/gnss/GnssVisibilityControl;

    if-nez v1, :cond_0

    .line 2197
    const-string v1, "GnssLocationProvider"

    const-string/jumbo v2, "reportNfwNotification: mGnssVisibilityControl is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    return-void

    .line 2201
    :cond_0
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/location/gnss/GnssVisibilityControl;->reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    .line 2204
    return-void
.end method

.method private reportNmea(J)V
    .locals 4
    .param p1, "timestamp"    # J

    .line 1719
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNmeaBuffer:[B

    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_read_nmea([BI)I

    move-result v0

    .line 1721
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1722
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 1724
    .end local v0    # "length":I
    .end local v1    # "nmea":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private reportStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .line 1592
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v1, "reportStatus status: "

    const-string v2, "GnssLocationProvider"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_0
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1601
    invoke-static {}, Lcom/oneplus/android/server/location/OpLocationMdmInjector;->mdmAbortReport()V

    .line 1605
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNavigating:Z

    .line 1606
    .local v1, "wasNavigating":Z
    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 1616
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNavigating:Z

    goto :goto_0

    .line 1611
    :cond_4
    iput-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNavigating:Z

    .line 1612
    goto :goto_0

    .line 1608
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNavigating:Z

    .line 1609
    nop

    .line 1620
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNavigating:Z

    if-eq v1, v0, :cond_6

    .line 1621
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->onStatusChanged(Z)V

    .line 1623
    :cond_6
    return-void
.end method

.method private reportSvStatus(I[I[F[F[F[F[F)V
    .locals 3
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "svElevations"    # [F
    .param p5, "svAzimuths"    # [F
    .param p6, "svCarrierFreqs"    # [F
    .param p7, "basebandCn0s"    # [F

    .line 1640
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider$1;)V

    .line 1641
    .local v0, "svStatusInfo":Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;
    invoke-static {v0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1402(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;I)I

    .line 1642
    invoke-static {v0, p2}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1502(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[I)[I

    .line 1643
    invoke-static {v0, p3}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1602(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1644
    invoke-static {v0, p4}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1702(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1645
    invoke-static {v0, p5}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1802(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1646
    invoke-static {v0, p6}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$1902(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1647
    invoke-static {v0, p7}, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;->access$2002(Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1649
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1650
    return-void
.end method

.method private requestLocation(ZZ)V
    .locals 2
    .param p1, "independentFromGnss"    # Z
    .param p2, "isUserEmergency"    # Z

    .line 2145
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestLocation. independentFromGnss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserEmergency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_0
    const/16 v0, 0x10

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2151
    return-void
.end method

.method private requestRefLocation()V
    .locals 13

    .line 2161
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 2162
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2163
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 2164
    .local v1, "phoneType":I
    const-string v2, "GnssLocationProvider"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 2165
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    .line 2166
    .local v3, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2167
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    .line 2169
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2170
    .local v2, "mcc":I
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2171
    .local v4, "mnc":I
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v12

    .line 2172
    .local v12, "networkType":I
    if-eq v12, v5, :cond_1

    const/16 v5, 0x8

    if-eq v12, v5, :cond_1

    const/16 v5, 0x9

    if-eq v12, v5, :cond_1

    const/16 v5, 0xa

    if-eq v12, v5, :cond_1

    const/16 v5, 0xf

    if-ne v12, v5, :cond_0

    goto :goto_0

    .line 2179
    :cond_0
    const/4 v5, 0x1

    .local v5, "type":I
    goto :goto_1

    .line 2177
    .end local v5    # "type":I
    :cond_1
    :goto_0
    const/4 v5, 0x2

    .line 2181
    .restart local v5    # "type":I
    :goto_1
    nop

    .line 2182
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v11

    .line 2181
    move-object v6, p0

    move v7, v5

    move v8, v2

    move v9, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2183
    .end local v2    # "mcc":I
    .end local v4    # "mnc":I
    .end local v5    # "type":I
    .end local v12    # "networkType":I
    goto :goto_2

    .line 2184
    :cond_2
    const-string v4, "Error getting cell location info."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2186
    .end local v3    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 2187
    const-string v3, "CDMA not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2186
    :cond_4
    :goto_2
    nop

    .line 2189
    :goto_3
    return-void
.end method

.method private requestSetID(I)V
    .locals 6
    .param p1, "flags"    # I

    .line 2117
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 2118
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2119
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 2120
    .local v1, "type":I
    const/4 v2, 0x0

    .line 2122
    .local v2, "setId":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 2123
    .local v3, "ddSubId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2124
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 2126
    :cond_0
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 2127
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 2128
    if-eqz v2, :cond_2

    .line 2130
    const/4 v1, 0x1

    goto :goto_0

    .line 2132
    :cond_1
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 2133
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 2134
    if-eqz v2, :cond_2

    .line 2136
    const/4 v1, 0x2

    .line 2140
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    const-string v4, ""

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    invoke-direct {p0, v1, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2141
    return-void
.end method

.method private requestUtcTime()V
    .locals 3

    .line 2155
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "utcTimeRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2157
    return-void
.end method

.method private restartLocationRequest()V
    .locals 3

    .line 1793
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v1, "restartLocationRequest"

    const-string v2, "GnssLocationProvider"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_0
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->D:Z

    if-eqz v0, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1799
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateRequirements()V

    .line 1800
    return-void
.end method

.method private restartRequests()V
    .locals 2

    .line 1782
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartRequests"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->restartLocationRequest()V

    .line 1785
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->resumeIfStarted()V

    .line 1786
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->resumeIfStarted()V

    .line 1787
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->resumeIfStarted()V

    .line 1788
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider;->resumeIfStarted()V

    .line 1789
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/gnss/GnssGeofenceProvider;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->resumeIfStarted()V

    .line 1790
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 3
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2216
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2217
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock acquired by sendMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2222
    return-void
.end method

.method private setGnssHardwareModelName(Ljava/lang/String;)V
    .locals 3
    .param p1, "modelName"    # Ljava/lang/String;

    .line 1816
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v1, "setGnssModelName called with "

    const-string v2, "GnssLocationProvider"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_0
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :cond_1
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    .line 1822
    return-void
.end method

.method private setGnssYearOfHardware(I)V
    .locals 3
    .param p1, "yearOfHardware"    # I

    .line 1805
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v1, "setGnssYearOfHardware called with "

    const-string v2, "GnssLocationProvider"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_0
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_1
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHardwareYear:I

    .line 1811
    return-void
.end method

.method private setGpsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1083
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1084
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGpsEnabled:Z

    .line 1085
    monitor-exit v0

    .line 1086
    return-void

    .line 1085
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setIsSupportedForTest(Z)V
    .locals 0
    .param p0, "override"    # Z

    .line 672
    sput-boolean p0, Lcom/android/server/location/gnss/GnssLocationProvider;->sStaticTestOverride:Z

    .line 673
    return-void
.end method

.method private setPositionMode(IIIIIZ)Z
    .locals 8
    .param p1, "mode"    # I
    .param p2, "recurrence"    # I
    .param p3, "minInterval"    # I
    .param p4, "preferredAccuracy"    # I
    .param p5, "preferredTime"    # I
    .param p6, "lowPowerMode"    # Z

    .line 1249
    new-instance v7, Lcom/android/server/location/gnss/GnssPositionMode;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/GnssPositionMode;-><init>(IIIIIZ)V

    .line 1251
    .local v0, "positionMode":Lcom/android/server/location/gnss/GnssPositionMode;
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/server/location/gnss/GnssPositionMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    const/4 v1, 0x1

    return v1

    .line 1255
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_set_position_mode(IIIIIZ)Z

    move-result v1

    .line 1257
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 1258
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    goto :goto_0

    .line 1260
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    .line 1262
    :goto_0
    return v1
.end method

.method private setStarted(Z)V
    .locals 2
    .param p1, "started"    # Z

    .line 1488
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eq v0, p1, :cond_0

    .line 1489
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    .line 1490
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    .line 1492
    :cond_0
    return-void
.end method

.method private setSubHalMeasurementCorrectionsCapabilities(I)V
    .locals 2
    .param p1, "subHalCapabilities"    # I

    .line 1771
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$fffz6FFgsVo0365j3nSWliM9S1U;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$fffz6FFgsVo0365j3nSWliM9S1U;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1779
    return-void
.end method

.method private setSuplHostPort()V
    .locals 3

    .line 1043
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 1044
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getSuplPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerPort:I

    .line 1045
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const v2, 0xffff

    if-gt v0, v2, :cond_0

    .line 1048
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1051
    :cond_0
    return-void
.end method

.method private setTopHalCapabilities(I)V
    .locals 2
    .param p1, "topHalCapabilities"    # I

    .line 1749
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$C_CR-zSLRI0NNUdqJSWYnBqxNd8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$C_CR-zSLRI0NNUdqJSWYnBqxNd8;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1767
    return-void
.end method

.method private setupNativeGnssService(Z)V
    .locals 3
    .param p1, "reinitializeGnssServiceHandle"    # Z

    .line 2468
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_init_once(Z)V

    .line 2476
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_init()Z

    move-result v0

    .line 2477
    .local v0, "isInitialized":Z
    if-nez v0, :cond_0

    .line 2478
    const-string v1, "GnssLocationProvider"

    const-string v2, "Native initialization failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2480
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_cleanup()V

    .line 2482
    :goto_0
    return-void
.end method

.method private startNavigating()V
    .locals 14

    .line 1380
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->getLogLevelStatusUpdates()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->D:Z

    .line 1385
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/location/OpGpsNotificationInjector;->updateGpsRequstPackage(Z)V

    .line 1388
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-nez v1, :cond_b

    .line 1389
    sget-boolean v1, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v2, "startNavigating"

    const-string v3, "GnssLocationProvider"

    if-eqz v1, :cond_0

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_0
    sget-boolean v1, Lcom/android/server/location/gnss/GnssLocationProvider;->D:Z

    if-eqz v1, :cond_1

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1395
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 1396
    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1397
    iput v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 1400
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-eqz v2, :cond_2

    .line 1401
    const-string/jumbo v2, "startNavigating with ITAR limit in place. Output limited  until slow enough speed reported."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1406
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "assisted_gps_enabled"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1408
    .local v2, "agpsEnabled":Z
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->getSuplMode(Z)I

    move-result v4

    iput v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    .line 1410
    sget-boolean v5, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const/4 v6, 0x2

    if-eqz v5, :cond_7

    .line 1413
    if-eqz v4, :cond_6

    if-eq v4, v0, :cond_5

    if-eq v4, v6, :cond_4

    .line 1424
    const-string/jumbo v4, "unknown"

    .local v4, "mode":Ljava/lang/String;
    goto :goto_1

    .line 1418
    .end local v4    # "mode":Ljava/lang/String;
    :cond_4
    const-string v4, "MS_ASSISTED"

    .line 1419
    .restart local v4    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 1421
    .end local v4    # "mode":Ljava/lang/String;
    :cond_5
    const-string v4, "MS_BASED"

    .line 1422
    .restart local v4    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 1415
    .end local v4    # "mode":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "standalone"

    .line 1416
    .restart local v4    # "mode":Ljava/lang/String;
    nop

    .line 1427
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting position_mode to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    .end local v4    # "mode":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    goto :goto_2

    :cond_8
    const/16 v4, 0x3e8

    :goto_2
    move v10, v4

    .line 1431
    .local v10, "interval":I
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v13, v4, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v13, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLowPowerMode:Z

    .line 1432
    iget v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/server/location/gnss/GnssLocationProvider;->setPositionMode(IIIIIZ)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1434
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1435
    const-string/jumbo v0, "set_position_mode failed in startNavigating()"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    return-void

    .line 1438
    :cond_9
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_start()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1439
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1440
    const-string/jumbo v0, "native_start failed in startNavigating()"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    return-void

    .line 1445
    :cond_a
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->reset()V

    .line 1446
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixRequestTime:J

    .line 1447
    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1450
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_b

    .line 1451
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v7, 0xea60

    add-long/2addr v3, v7

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1451
    invoke-virtual {v0, v6, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1456
    .end local v2    # "agpsEnabled":Z
    .end local v10    # "interval":I
    :cond_b
    return-void
.end method

.method private stopNavigating()V
    .locals 3

    .line 1459
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v1, "stopNavigating"

    const-string v2, "GnssLocationProvider"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->getLogLevelStatusUpdates()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->D:Z

    .line 1463
    if-eqz v0, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_2

    .line 1468
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->resetForceMSA()V

    .line 1473
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/location/OpGpsNotificationInjector;->updateGpsRequstPackage(Z)V

    .line 1476
    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setStarted(Z)V

    .line 1477
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_stop()Z

    .line 1478
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastFixTime:J

    .line 1480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/gnss/GnssPositionMode;

    .line 1483
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->reset()V

    .line 1485
    :cond_2
    return-void
.end method

.method private subscriptionOrCarrierConfigChanged()V
    .locals 8

    .line 583
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "received SIM related action: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 585
    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 586
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 587
    const-string v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 588
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 589
    .local v3, "ddSubId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 590
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 592
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 593
    .local v4, "mccMnc":Ljava/lang/String;
    const/4 v5, 0x0

    .line 594
    .local v5, "isKeepLppProfile":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 595
    sget-boolean v6, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM MCC/MNC is available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_2
    if-eqz v2, :cond_4

    .line 597
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 598
    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 599
    .local v1, "b":Landroid/os/PersistableBundle;
    :goto_0
    if-eqz v1, :cond_4

    .line 600
    nop

    .line 601
    const-string v6, "gps.persist_lpp_mode_bool"

    invoke-virtual {v1, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 604
    .end local v1    # "b":Landroid/os/PersistableBundle;
    :cond_4
    const-string/jumbo v1, "persist.sys.gps.lpp"

    if-eqz v5, :cond_6

    .line 606
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v6}, Lcom/android/server/location/gnss/GnssConfiguration;->loadPropertiesFromCarrierConfig()V

    .line 607
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v6}, Lcom/android/server/location/gnss/GnssConfiguration;->getLppProfile()Ljava/lang/String;

    move-result-object v6

    .line 609
    .local v6, "lpp_profile":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 610
    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .end local v6    # "lpp_profile":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 614
    :cond_6
    const-string v6, ""

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :goto_1
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    goto :goto_2

    .line 618
    :cond_7
    sget-boolean v6, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "SIM MCC/MNC is still not available"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_8
    :goto_2
    return-void
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .locals 11
    .param p1, "source"    # Landroid/os/WorkSource;

    .line 1266
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1267
    return-void

    .line 1272
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    goto :goto_0

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GnssLocationProvider"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1279
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-static {v0, p1}, Landroid/os/WorkSource;->diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;

    move-result-object v0

    .line 1280
    .local v0, "diffs":[Ljava/util/List;, "[Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 1281
    aget-object v4, v0, v1

    .line 1282
    .local v4, "newChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    aget-object v5, v0, v3

    .line 1284
    .local v5, "goneChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v4, :cond_1

    .line 1285
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1286
    .local v7, "newChain":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1287
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 1286
    invoke-virtual {v8, v2, v9, v10}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1288
    .end local v7    # "newChain":Landroid/os/WorkSource$WorkChain;
    goto :goto_1

    .line 1291
    :cond_1
    if-eqz v5, :cond_2

    .line 1292
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1293
    .local v7, "goneChain":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1294
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 1293
    invoke-virtual {v8, v2, v9, v10}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1295
    .end local v7    # "goneChain":Landroid/os/WorkSource$WorkChain;
    goto :goto_2

    .line 1298
    :cond_2
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v6, p1}, Landroid/os/WorkSource;->transferWorkChains(Landroid/os/WorkSource;)V

    .line 1302
    .end local v4    # "newChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    .end local v5    # "goneChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v4, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v4

    .line 1303
    .local v4, "changes":[Landroid/os/WorkSource;
    if-eqz v4, :cond_5

    .line 1304
    aget-object v1, v4, v1

    .line 1305
    .local v1, "newWork":Landroid/os/WorkSource;
    aget-object v3, v4, v3

    .line 1308
    .local v3, "goneWork":Landroid/os/WorkSource;
    if-eqz v1, :cond_4

    .line 1309
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1310
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 1311
    invoke-virtual {v1, v5}, Landroid/os/WorkSource;->getUid(I)I

    move-result v7

    invoke-virtual {v1, v5}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 1310
    invoke-virtual {v6, v2, v7, v8}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1309
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1316
    .end local v5    # "i":I
    :cond_4
    if-eqz v3, :cond_5

    .line 1317
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1318
    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v3, v5}, Landroid/os/WorkSource;->getUid(I)I

    move-result v7

    .line 1319
    invoke-virtual {v3, v5}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 1318
    invoke-virtual {v6, v2, v7, v8}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1317
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1323
    .end local v1    # "newWork":Landroid/os/WorkSource;
    .end local v3    # "goneWork":Landroid/os/WorkSource;
    .end local v5    # "i":I
    :cond_5
    return-void
.end method

.method private updateEnabled()V
    .locals 3

    .line 1143
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1144
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    .line 1147
    .local v0, "enabled":Z
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 1150
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 1154
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mShutdown:Z

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 1156
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1157
    return-void

    .line 1160
    :cond_1
    if-eqz v0, :cond_2

    .line 1161
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleEnable()V

    goto :goto_1

    .line 1163
    :cond_2
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->handleDisable()V

    .line 1165
    :goto_1
    return-void
.end method

.method private updateGnssDebugLevel(Z)V
    .locals 4
    .param p1, "isBoot"    # Z

    .line 625
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->setLogUpate()V

    .line 630
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$1mv-qeLEgC1IpwG4u0PBV1AHUwE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$1mv-qeLEgC1IpwG4u0PBV1AHUwE;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Z)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 637
    return-void
.end method

.method private updateLowPowerMode()V
    .locals 8

    .line 643
    invoke-static {}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->isDisableDeviceIdle()Z

    move-result v0

    .line 644
    .local v0, "disableDevIdle":Z
    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_0

    .line 645
    const-string v2, "disable turning off gps when device idle."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-void

    .line 650
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIsDeviceStationary:Z

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 651
    .local v2, "disableGpsForPowerManager":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5, v4}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v5

    .line 652
    .local v5, "result":Landroid/os/PowerSaveState;
    iget v6, v5, Landroid/os/PowerSaveState;->locationMode:I

    if-eq v6, v4, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    goto :goto_2

    .line 656
    :cond_2
    iget-boolean v6, v5, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 657
    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    if-nez v6, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    nop

    :goto_1
    or-int/2addr v2, v3

    .line 660
    :goto_2
    iget-boolean v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    if-eq v2, v3, :cond_5

    .line 661
    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    .line 662
    if-eqz v2, :cond_4

    .line 663
    const-string v3, "disable gps for device idle."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_4
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 666
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateRequirements()V

    .line 668
    :cond_5
    return-void
.end method

.method private updateRequirements()V
    .locals 10

    .line 1191
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1195
    :cond_0
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    const-string/jumbo v1, "setRequest "

    const-string v2, "GnssLocationProvider"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_1
    sget-boolean v0, Lcom/android/server/location/gnss/GnssLocationProvider;->D:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1202
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1204
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v0, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 1205
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLowPowerMode:Z

    .line 1207
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    int-to-long v0, v0

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v3, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interval overflow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v3, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    .line 1213
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1215
    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPositionMode:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLowPowerMode:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/gnss/GnssLocationProvider;->setPositionMode(IIIIIZ)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1217
    const-string/jumbo v1, "set_position_mode failed in updateRequirements"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_4
    invoke-static {v0}, Lcom/android/server/location/OpGpsNotificationInjector;->updateGpsRequstPackage(Z)V

    goto :goto_0

    .line 1225
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_6

    .line 1227
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->startNavigating()V

    goto :goto_0

    .line 1230
    :cond_6
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1231
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_8

    .line 1234
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 1235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1234
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1239
    :cond_7
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1241
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->stopNavigating()V

    .line 1242
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1243
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1245
    :cond_8
    :goto_0
    return-void

    .line 1192
    :cond_9
    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2425
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   (changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2426
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2428
    const-string v1, " ago)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2429
    const-string/jumbo v2, "mFixInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2430
    const-string/jumbo v2, "mLowPowerMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLowPowerMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2431
    const-string/jumbo v2, "mGnssAntennaInfoProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 2432
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2433
    const-string/jumbo v2, "mGnssMeasurementsProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 2434
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2435
    const-string/jumbo v2, "mGnssNavigationMessageProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    .line 2436
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2437
    const-string/jumbo v2, "mDisableGpsForPowerManager="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2438
    const-string/jumbo v1, "mTopHalCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTopHalCapabilities:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2439
    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2440
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SCHEDULING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2442
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2443
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2444
    :cond_3
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2445
    :cond_4
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "GEOFENCING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2446
    :cond_5
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "MEASUREMENTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2447
    :cond_6
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "NAV_MESSAGES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    :cond_7
    const/16 v1, 0x100

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "LOW_POWER_MODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2449
    :cond_8
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "SATELLITE_BLACKLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2450
    :cond_9
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2451
    const-string v2, "MEASUREMENT_CORRECTIONS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2453
    :cond_a
    const/16 v2, 0x800

    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "ANTENNA_INFO "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2454
    :cond_b
    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2455
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2456
    const-string v1, "SubHal=MEASUREMENT_CORRECTIONS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2457
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->toStringCapabilities()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2458
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2460
    :cond_c
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2461
    const-string/jumbo v1, "native internal state: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2462
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2463
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2464
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2465
    return-void
.end method

.method public getGnssAntennaInfoProvider()Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    return-object v0
.end method

.method public getGnssBatchingProvider()Lcom/android/server/location/gnss/GnssBatchingProvider;
    .locals 1

    .line 1875
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/gnss/GnssBatchingProvider;

    return-object v0
.end method

.method public getGnssCapabilitiesProvider()Lcom/android/server/location/gnss/GnssCapabilitiesProvider;
    .locals 1

    .line 1896
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    return-object v0
.end method

.method public getGnssMeasurementCorrectionsProvider()Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    return-object v0
.end method

.method public getGnssMeasurementsProvider()Lcom/android/server/location/gnss/GnssMeasurementsProvider;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    return-object v0
.end method

.method public getGnssMetricsProvider()Lcom/android/server/location/gnss/GnssLocationProvider$GnssMetricsProvider;
    .locals 1

    .line 1889
    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$jBO2H12eB7EjagbuUEwRFklylJ8;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$jBO2H12eB7EjagbuUEwRFklylJ8;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGnssNavigationMessageProvider()Lcom/android/server/location/gnss/GnssNavigationMessageProvider;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    return-object v0
.end method

.method public getGnssStatusProvider()Lcom/android/server/location/gnss/GnssStatusListenerHelper;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    return-object v0
.end method

.method public getGnssSystemInfoProvider()Lcom/android/server/location/gnss/GnssLocationProvider$GnssSystemInfoProvider;
    .locals 1

    .line 1858
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$8;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$8;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/gnss/GnssGeofenceProvider;

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .line 2049
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public injectTime(JJI)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    .line 835
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_inject_time(JJI)V

    .line 836
    return-void
.end method

.method isInEmergencySession()Z
    .locals 1

    .line 2209
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getGnssMetricsProvider$11$GnssLocationProvider()Ljava/lang/String;
    .locals 1

    .line 1889
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$handleDownloadPsdsData$4$GnssLocationProvider()V
    .locals 6

    .line 995
    new-instance v0, Lcom/android/server/location/gnss/GpsPsdsDownloader;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 996
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssConfiguration;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/location/gnss/GpsPsdsDownloader;-><init>(Ljava/util/Properties;)V

    .line 997
    .local v0, "psdsDownloader":Lcom/android/server/location/gnss/GpsPsdsDownloader;
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GpsPsdsDownloader;->downloadPsdsData()[B

    move-result-object v1

    .line 998
    .local v1, "data":[B
    if-eqz v1, :cond_1

    .line 999
    sget-boolean v2, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GnssLocationProvider"

    const-string v3, "calling native_inject_psds_data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_0
    array-length v2, v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_inject_psds_data([BI)V

    .line 1001
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {v2}, Lcom/android/server/location/gnss/ExponentialBackOff;->reset()V

    .line 1004
    :cond_1
    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1006
    if-nez v1, :cond_2

    .line 1009
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    .line 1010
    invoke-virtual {v4}, Lcom/android/server/location/gnss/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v4

    .line 1009
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1015
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1016
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1019
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1020
    sget-boolean v3, Lcom/android/server/location/gnss/GnssLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "GnssLocationProvider"

    const-string v4, "WakeLock released by handleDownloadPsdsData()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1022
    :cond_3
    const-string v3, "GnssLocationProvider"

    const-string v4, "WakeLock expired before release in handleDownloadPsdsData()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_4
    :goto_0
    monitor-exit v2

    .line 1026
    return-void

    .line 1025
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public synthetic lambda$new$0$GnssLocationProvider(Z)V
    .locals 2
    .param p1, "isStationary"    # Z

    .line 516
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mIsDeviceStationary:Z

    .line 519
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 520
    return-void
.end method

.method public synthetic lambda$onUpdateSatelliteBlacklist$1$GnssLocationProvider([I[I)V
    .locals 1
    .param p1, "constellations"    # [I
    .param p2, "svids"    # [I

    .line 578
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/gnss/GnssConfiguration;->setSatelliteBlacklist([I[I)V

    return-void
.end method

.method public synthetic lambda$reportAntennaInfo$6$GnssLocationProvider(Ljava/util/List;)V
    .locals 1
    .param p1, "antennaInfos"    # Ljava/util/List;

    .line 1736
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->onGnssAntennaInfoAvailable(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$reportGeofenceAddStatus$14$GnssLocationProvider(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 1975
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1978
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 1979
    return-void
.end method

.method public synthetic lambda$reportGeofencePauseStatus$16$GnssLocationProvider(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 1995
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1998
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 1999
    return-void
.end method

.method public synthetic lambda$reportGeofenceRemoveStatus$15$GnssLocationProvider(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 1985
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1988
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 1989
    return-void
.end method

.method public synthetic lambda$reportGeofenceResumeStatus$17$GnssLocationProvider(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2005
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2008
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 2009
    return-void
.end method

.method public synthetic lambda$reportGeofenceStatus$13$GnssLocationProvider(ILandroid/location/Location;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "location"    # Landroid/location/Location;

    .line 1957
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1960
    :cond_0
    const/4 v0, 0x1

    .line 1961
    .local v0, "monitorStatus":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1962
    const/4 v0, 0x0

    .line 1964
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v2, 0x0

    sget v3, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    invoke-virtual {v1, v2, v0, p2, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 1969
    return-void
.end method

.method public synthetic lambda$reportGeofenceTransition$12$GnssLocationProvider(ILandroid/location/Location;IJ)V
    .locals 9
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "transitionTimestamp"    # J

    .line 1940
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1944
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v7, 0x0

    sget v8, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 1951
    return-void
.end method

.method public synthetic lambda$reportGnssServiceDied$10$GnssLocationProvider()V
    .locals 1

    .line 1832
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setupNativeGnssService(Z)V

    .line 1834
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->reloadGpsProperties()V

    .line 1835
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1836
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 1837
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->updateEnabled()V

    .line 1839
    :cond_0
    return-void
.end method

.method public synthetic lambda$reportMeasurementData$5$GnssLocationProvider(Landroid/location/GnssMeasurementsEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .line 1730
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method public synthetic lambda$reportNavigationMessage$7$GnssLocationProvider(Landroid/location/GnssNavigationMessage;)V
    .locals 1
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 1743
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method public synthetic lambda$setSubHalMeasurementCorrectionsCapabilities$9$GnssLocationProvider(I)V
    .locals 1
    .param p1, "subHalCapabilities"    # I

    .line 1772
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssMeasurementCorrectionsProvider;->onCapabilitiesUpdated(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1773
    return-void

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssCapabilitiesProvider;->setSubHalMeasurementCorrectionsCapabilities(I)V

    .line 1778
    return-void
.end method

.method public synthetic lambda$setTopHalCapabilities$8$GnssLocationProvider(I)V
    .locals 2
    .param p1, "topHalCapabilities"    # I

    .line 1750
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTopHalCapabilities:I

    .line 1752
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/gnss/NtpTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/NtpTimeHelper;->enablePeriodicTimeInjection()V

    .line 1754
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->requestUtcTime()V

    .line 1757
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    const/16 v1, 0x40

    .line 1758
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    .line 1757
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    .line 1759
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/gnss/GnssNavigationMessageProvider;

    const/16 v1, 0x80

    .line 1760
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    .line 1759
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    .line 1761
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->restartRequests()V

    .line 1762
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssAntennaInfoProvider:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    const/16 v1, 0x800

    .line 1763
    invoke-direct {p0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    .line 1762
    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->onCapabilitiesUpdated(Z)V

    .line 1765
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/gnss/GnssCapabilitiesProvider;

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mTopHalCapabilities:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssCapabilitiesProvider;->setTopHalCapabilities(I)V

    .line 1766
    return-void
.end method

.method public synthetic lambda$updateGnssDebugLevel$2$GnssLocationProvider(Z)V
    .locals 1
    .param p1, "isBoot"    # Z

    .line 631
    invoke-static {p1}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->getGnssHalDbgLevel(Z)I

    move-result v0

    .line 632
    .local v0, "mask":I
    if-lez v0, :cond_0

    .line 634
    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->native_delete_aiding_data(I)V

    .line 636
    :cond_0
    return-void
.end method

.method public onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1328
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1330
    .local v0, "identity":J
    :try_start_0
    const-string v2, "delete_aiding_data"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1331
    invoke-direct {p0, p4}, Lcom/android/server/location/gnss/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1332
    :cond_0
    const-string v2, "force_time_injection"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1333
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->requestUtcTime()V

    goto :goto_0

    .line 1334
    :cond_1
    const-string v2, "force_psds_injection"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1335
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz v2, :cond_3

    .line 1336
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->psdsDownloadRequest()V

    goto :goto_0

    .line 1339
    :cond_2
    const-string v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendExtraCommand: unknown command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_3
    :goto_0
    invoke-static {p3, p4}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->handleExtraGnssProviderCmd(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1347
    nop

    .line 1348
    return-void

    .line 1346
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1347
    throw v2
.end method

.method public onSetRequest(Lcom/android/internal/location/ProviderRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;

    .line 1175
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;

    iget-object v1, p1, Lcom/android/internal/location/ProviderRequest;->workSource:Landroid/os/WorkSource;

    invoke-direct {v0, p1, v1}, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1176
    return-void
.end method

.method public onUpdateSatelliteBlacklist([I[I)V
    .locals 2
    .param p1, "constellations"    # [I
    .param p2, "svids"    # [I

    .line 578
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$8xqmGrm3vUbuBYyxecHypUKBN8M;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/-$$Lambda$GnssLocationProvider$8xqmGrm3vUbuBYyxecHypUKBN8M;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;[I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 579
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->resetConstellationTypes()V

    .line 580
    return-void
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .locals 28
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I

    .line 2065
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    const-string v10, "GnssLocationProvider"

    const-string/jumbo v11, "reportNiNotification: entered"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "notificationId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", niType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", notifyFlags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", timeout: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", defaultResponse: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "requestorId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", text: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", requestorIdEncoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", textEncoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    new-instance v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v10}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2079
    .local v10, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput v1, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2080
    iput v2, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2081
    and-int/lit8 v11, v3, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_0

    move v11, v13

    goto :goto_0

    :cond_0
    move v11, v12

    :goto_0
    iput-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2082
    and-int/lit8 v11, v3, 0x2

    if-eqz v11, :cond_1

    move v11, v13

    goto :goto_1

    :cond_1
    move v11, v12

    :goto_1
    iput-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2083
    and-int/lit8 v11, v3, 0x4

    if-eqz v11, :cond_2

    move v12, v13

    :cond_2
    iput-boolean v12, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2085
    iput v4, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2086
    iput v5, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2087
    iput-object v6, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2088
    iput-object v7, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2089
    iput v8, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2090
    iput v9, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2092
    iget-object v11, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v11, v10}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2093
    const/16 v12, 0x7c

    iget v14, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget v15, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    iget-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    iget-boolean v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    move/from16 v17, v13

    iget-boolean v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    move/from16 v18, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    move/from16 v19, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    move/from16 v20, v13

    iget-object v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    move-object/from16 v21, v13

    iget-object v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    move-object/from16 v22, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    move/from16 v23, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    move/from16 v24, v13

    iget-boolean v13, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 2107
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isGpsEnabled()Z

    move-result v26

    const/16 v27, 0x0

    .line 2093
    move/from16 v25, v13

    const/4 v13, 0x1

    move/from16 v16, v11

    invoke-static/range {v12 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZZIILjava/lang/String;Ljava/lang/String;IIZZI)V

    .line 2109
    return-void
.end method
