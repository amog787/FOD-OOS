.class public Lcom/android/server/PackageWatchdog;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageWatchdog$BootThreshold;,
        Lcom/android/server/PackageWatchdog$MonitoredPackage;,
        Lcom/android/server/PackageWatchdog$HealthCheckState;,
        Lcom/android/server/PackageWatchdog$ObserverInternal;,
        Lcom/android/server/PackageWatchdog$PackageHealthObserver;,
        Lcom/android/server/PackageWatchdog$PackageHealthObserverImpact;,
        Lcom/android/server/PackageWatchdog$SystemClock;,
        Lcom/android/server/PackageWatchdog$FailureReasons;
    }
.end annotation


# static fields
.field private static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field private static final ATTR_EXPLICIT_HEALTH_CHECK_DURATION:Ljava/lang/String; = "health-check-duration"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PASSED_HEALTH_CHECK:Ljava/lang/String; = "passed-health-check"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DB_VERSION:I = 0x1

.field static final DEFAULT_BOOT_LOOP_TRIGGER_COUNT:I = 0x5

.field static final DEFAULT_BOOT_LOOP_TRIGGER_WINDOW_MS:J

.field private static final DEFAULT_EXPLICIT_HEALTH_CHECK_ENABLED:Z = true

.field static final DEFAULT_OBSERVING_DURATION_MS:J

.field static final DEFAULT_TRIGGER_FAILURE_COUNT:I = 0x5

.field static final DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

.field public static final FAILURE_REASON_APP_CRASH:I = 0x3

.field public static final FAILURE_REASON_APP_NOT_RESPONDING:I = 0x4

.field public static final FAILURE_REASON_EXPLICIT_HEALTH_CHECK:I = 0x2

.field public static final FAILURE_REASON_NATIVE_CRASH:I = 0x1

.field public static final FAILURE_REASON_UNKNOWN:I = 0x0

.field private static final NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

.field private static final NUMBER_OF_NATIVE_CRASH_POLLS:J = 0xaL

.field static final PROPERTY_WATCHDOG_EXPLICIT_HEALTH_CHECK_ENABLED:Ljava/lang/String; = "watchdog_explicit_health_check_enabled"

.field static final PROPERTY_WATCHDOG_TRIGGER_DURATION_MILLIS:Ljava/lang/String; = "watchdog_trigger_failure_duration_millis"

.field static final PROPERTY_WATCHDOG_TRIGGER_FAILURE_COUNT:Ljava/lang/String; = "watchdog_trigger_failure_count"

.field private static final PROP_RESCUE_BOOT_COUNT:Ljava/lang/String; = "sys.rescue_boot_count"

.field private static final PROP_RESCUE_BOOT_START:Ljava/lang/String; = "sys.rescue_boot_start"

.field private static final TAG:Ljava/lang/String; = "PackageWatchdog"

.field private static final TAG_OBSERVER:Ljava/lang/String; = "observer"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGE_WATCHDOG:Ljava/lang/String; = "package-watchdog"

.field private static sPackageWatchdog:Lcom/android/server/PackageWatchdog;


# instance fields
.field private final mAllObservers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageWatchdog$ObserverInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

.field private final mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

.field private final mContext:Landroid/content/Context;

.field private final mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

.field private mIsHealthCheckEnabled:Z

.field private mIsPackagesReady:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLongTaskHandler:Landroid/os/Handler;

.field private mNumberOfNativeCrashPollsRemaining:J

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private mRequestedHealthCheckPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaveToFile:Ljava/lang/Runnable;

.field private final mShortTaskHandler:Landroid/os/Handler;

.field private final mSyncRequests:Ljava/lang/Runnable;

.field private mSyncRequired:Z

.field private final mSyncStateWithScheduledReason:Ljava/lang/Runnable;

.field private final mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

.field private mTriggerFailureCount:I

.field private mTriggerFailureDurationMs:I

.field private mUptimeAtLastStateSync:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 90
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/PackageWatchdog;->NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

    .line 112
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 113
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    .line 118
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/PackageWatchdog;->DEFAULT_OBSERVING_DURATION_MS:J

    .line 124
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/PackageWatchdog;->DEFAULT_BOOT_LOOP_TRIGGER_WINDOW_MS:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 193
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    .line 194
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "package-watchdog.xml"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v3, Landroid/os/Handler;

    .line 196
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/ExplicitHealthCheckController;

    invoke-direct {v5, p1}, Lcom/android/server/ExplicitHealthCheckController;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v6

    sget-object v7, Lcom/android/server/-$$Lambda$u6uWKONNslLDvDcMfFfe2etQmKg;->INSTANCE:Lcom/android/server/-$$Lambda$u6uWKONNslLDvDcMfFfe2etQmKg;

    .line 193
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PackageWatchdog;-><init>(Landroid/content/Context;Landroid/util/AtomicFile;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/ExplicitHealthCheckController;Landroid/net/ConnectivityModuleConnector;Lcom/android/server/PackageWatchdog$SystemClock;)V

    .line 200
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AtomicFile;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/ExplicitHealthCheckController;Landroid/net/ConnectivityModuleConnector;Lcom/android/server/PackageWatchdog$SystemClock;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policyFile"    # Landroid/util/AtomicFile;
    .param p3, "shortTaskHandler"    # Landroid/os/Handler;
    .param p4, "longTaskHandler"    # Landroid/os/Handler;
    .param p5, "controller"    # Lcom/android/server/ExplicitHealthCheckController;
    .param p6, "connectivityModuleConnector"    # Landroid/net/ConnectivityModuleConnector;
    .param p7, "clock"    # Lcom/android/server/PackageWatchdog$SystemClock;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 153
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 159
    new-instance v0, Lcom/android/server/-$$Lambda$PackageWatchdog$CQuOnXthwwBaxcS5WoAlJJAz8Tk;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$CQuOnXthwwBaxcS5WoAlJJAz8Tk;-><init>(Lcom/android/server/PackageWatchdog;)V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mSyncRequests:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/android/server/-$$Lambda$PackageWatchdog$vRKcIrucEj03dz6ypRVINZtns1s;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$vRKcIrucEj03dz6ypRVINZtns1s;-><init>(Lcom/android/server/PackageWatchdog;)V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mSyncStateWithScheduledReason:Ljava/lang/Runnable;

    .line 161
    new-instance v0, Lcom/android/server/-$$Lambda$PackageWatchdog$Q0WI2EJpRFO1jF_7_YDaj1eGHas;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$Q0WI2EJpRFO1jF_7_YDaj1eGHas;-><init>(Lcom/android/server/PackageWatchdog;)V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Ljava/lang/Runnable;

    .line 165
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageWatchdog;->mIsHealthCheckEnabled:Z

    .line 172
    sget v0, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    iput v0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 174
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    .line 209
    iput-object p1, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 210
    iput-object p2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    .line 211
    iput-object p3, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    .line 212
    iput-object p4, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    .line 213
    iput-object p5, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    .line 214
    iput-object p6, p0, Lcom/android/server/PackageWatchdog;->mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

    .line 215
    iput-object p7, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 216
    const-wide/16 v1, 0xa

    iput-wide v1, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    .line 217
    new-instance v1, Lcom/android/server/PackageWatchdog$BootThreshold;

    sget-wide v2, Lcom/android/server/PackageWatchdog;->DEFAULT_BOOT_LOOP_TRIGGER_WINDOW_MS:J

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/PackageWatchdog$BootThreshold;-><init>(IJ)V

    iput-object v1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    .line 219
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->loadFromFile()V

    .line 220
    sput-object p0, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 221
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/PackageWatchdog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PackageWatchdog;

    .line 78
    iget v0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/PackageWatchdog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PackageWatchdog;

    .line 78
    iget v0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    return v0
.end method

.method static synthetic access$300()Lcom/android/server/PackageWatchdog;
    .locals 1

    .line 78
    sget-object v0, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PackageWatchdog;

    .line 78
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    return-object v0
.end method

.method private checkAndMitigateNativeCrashes()V
    .locals 4

    .line 508
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    .line 510
    const-string/jumbo v0, "sys.init.updatable_crashing"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    goto :goto_0

    .line 516
    :cond_0
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$wEbB54PjC3ae7wMN2BshwaF0OhE;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$wEbB54PjC3ae7wMN2BshwaF0OhE;-><init>(Lcom/android/server/PackageWatchdog;)V

    sget-wide v2, Lcom/android/server/PackageWatchdog;->NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 521
    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 225
    const-class v0, Lcom/android/server/PackageWatchdog;

    monitor-enter v0

    .line 226
    :try_start_0
    sget-object v1, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Lcom/android/server/PackageWatchdog;

    invoke-direct {v1, p0}, Lcom/android/server/PackageWatchdog;-><init>(Landroid/content/Context;)V

    .line 229
    :cond_0
    sget-object v1, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    monitor-exit v0

    return-object v1

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getNextStateSyncMillisLocked()J
    .locals 9

    .line 802
    const-wide v0, 0x7fffffffffffffffL

    .line 803
    .local v0, "shortestDurationMs":J
    const/4 v2, 0x0

    .local v2, "oIndex":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 804
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$ObserverInternal;

    iget-object v3, v3, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    .line 805
    .local v3, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    const/4 v4, 0x0

    .local v4, "pIndex":I
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 806
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 807
    .local v5, "mp":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-virtual {v5}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getShortestScheduleDurationMsLocked()J

    move-result-wide v6

    .line 808
    .local v6, "duration":J
    cmp-long v8, v6, v0

    if-gez v8, :cond_0

    .line 809
    move-wide v0, v6

    .line 805
    .end local v5    # "mp":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v6    # "duration":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 803
    .end local v3    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    .end local v4    # "pIndex":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 813
    .end local v2    # "oIndex":I
    :cond_2
    return-wide v0
.end method

.method private getPackagesPendingHealthChecksLocked()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 740
    const-string v0, "PackageWatchdog"

    const-string v1, "Getting all observed packages pending health checks"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 742
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 743
    .local v1, "oit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$ObserverInternal;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 744
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 745
    .local v2, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    iget-object v3, v2, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    .line 746
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 747
    .local v3, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 748
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 749
    .local v4, "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-static {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v5

    .line 750
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isPendingHealthChecksLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 751
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 753
    .end local v4    # "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 754
    .end local v2    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v3    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :cond_1
    goto :goto_0

    .line 755
    :cond_2
    return-object v0
.end method

.method private getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 866
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 867
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 871
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 872
    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    .line 873
    .local v2, "versionCode":J
    new-instance v4, Landroid/content/pm/VersionedPackage;

    invoke-direct {v4, p1, v2, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 874
    .end local v2    # "versionCode":J
    :catch_0
    move-exception v2

    .line 875
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1

    .line 868
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method private handleFailureImmediately(Ljava/util/List;I)V
    .locals 7
    .param p2, "failureReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;I)V"
        }
    .end annotation

    .line 422
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 423
    .local v0, "failingPackage":Landroid/content/pm/VersionedPackage;
    :goto_0
    const/4 v1, 0x0

    .line 424
    .local v1, "currentObserverToNotify":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    const v2, 0x7fffffff

    .line 425
    .local v2, "currentObserverImpact":I
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 426
    .local v4, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    iget-object v5, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 427
    .local v5, "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    if-eqz v5, :cond_1

    .line 428
    invoke-interface {v5, v0, p2}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onHealthCheckFailed(Landroid/content/pm/VersionedPackage;I)I

    move-result v6

    .line 430
    .local v6, "impact":I
    if-eqz v6, :cond_1

    if-ge v6, v2, :cond_1

    .line 432
    move-object v1, v5

    .line 433
    move v2, v6

    .line 436
    .end local v4    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v5    # "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .end local v6    # "impact":I
    :cond_1
    goto :goto_1

    .line 437
    :cond_2
    if-eqz v1, :cond_3

    .line 438
    invoke-interface {v1, v0, p2}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;I)Z

    .line 440
    :cond_3
    return-void
.end method

.method public static synthetic lambda$CQuOnXthwwBaxcS5WoAlJJAz8Tk(Lcom/android/server/PackageWatchdog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncRequests()V

    return-void
.end method

.method public static synthetic lambda$Q0WI2EJpRFO1jF_7_YDaj1eGHas(Lcom/android/server/PackageWatchdog;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->saveToFile()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$vRKcIrucEj03dz6ypRVINZtns1s(Lcom/android/server/PackageWatchdog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncStateWithScheduledReason()V

    return-void
.end method

.method private loadFromFile()V
    .locals 6

    .line 886
    const/4 v0, 0x0

    .line 887
    .local v0, "infile":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 890
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 891
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 892
    const-string/jumbo v2, "package-watchdog"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 893
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 894
    .local v2, "outerDepth":I
    :goto_0
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 895
    invoke-static {v1, p0}, Lcom/android/server/PackageWatchdog$ObserverInternal;->read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$ObserverInternal;

    move-result-object v3

    .line 896
    .local v3, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    if-eqz v3, :cond_0

    .line 897
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    .end local v3    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    :cond_0
    goto :goto_0

    .line 894
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "outerDepth":I
    :cond_1
    goto :goto_2

    .line 906
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 902
    :catch_0
    move-exception v1

    .line 903
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "PackageWatchdog"

    const-string v3, "Unable to read monitored packages, deleting file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 904
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 906
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 907
    throw v1

    .line 900
    :catch_1
    move-exception v1

    .line 906
    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 907
    nop

    .line 908
    return-void
.end method

.method private onHealthCheckFailed(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V
    .locals 2
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$ObserverInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/PackageWatchdog$ObserverInternal;",
            "Ljava/util/Set<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;)V"
        }
    .end annotation

    .line 848
    .local p2, "failedPackages":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$GB6yAhRLhCGS-ufDzSN8j7GHmGo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/-$$Lambda$PackageWatchdog$GB6yAhRLhCGS-ufDzSN8j7GHmGo;-><init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 862
    return-void
.end method

.method private onHealthCheckPassed(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Health check passed for package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageWatchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v0, 0x0

    .line 681
    .local v0, "isStateChanged":Z
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 682
    const/4 v2, 0x0

    .local v2, "observerIdx":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 683
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 684
    .local v3, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    iget-object v4, v3, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 686
    .local v4, "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    if-eqz v4, :cond_1

    .line 687
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v5

    .line 688
    .local v5, "oldState":I
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->tryPassHealthCheckLocked()I

    move-result v6

    .line 689
    .local v6, "newState":I
    if-eq v5, v6, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    or-int/2addr v0, v7

    .line 682
    .end local v3    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v4    # "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v5    # "oldState":I
    .end local v6    # "newState":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 692
    .end local v2    # "observerIdx":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    if-eqz v0, :cond_3

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "health check passed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 697
    :cond_3
    return-void

    .line 692
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private onSupportedPackages(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;)V"
        }
    .end annotation

    .line 700
    .local p1, "supportedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;>;"
    const/4 v0, 0x0

    .line 702
    .local v0, "isStateChanged":Z
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 703
    .local v1, "supportedPackageTimeouts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 704
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 705
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;

    .line 706
    .local v3, "info":Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;
    invoke-virtual {v3}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getHealthCheckTimeoutMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .end local v3    # "info":Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;
    goto :goto_0

    .line 709
    :cond_0
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 710
    :try_start_0
    const-string v4, "PackageWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received supported packages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 712
    .local v4, "oit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$ObserverInternal;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 713
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageWatchdog$ObserverInternal;

    iget-object v5, v5, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 714
    .local v5, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 715
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 716
    .local v6, "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-static {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v7

    .line 717
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v8

    .line 720
    .local v8, "oldState":I
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 722
    nop

    .line 723
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 722
    invoke-virtual {v6, v9, v10}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->setHealthCheckActiveLocked(J)I

    move-result v9

    .local v9, "newState":I
    goto :goto_3

    .line 726
    .end local v9    # "newState":I
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->tryPassHealthCheckLocked()I

    move-result v9

    .line 728
    .restart local v9    # "newState":I
    :goto_3
    if-eq v8, v9, :cond_2

    const/4 v10, 0x1

    goto :goto_4

    :cond_2
    const/4 v10, 0x0

    :goto_4
    or-int/2addr v0, v10

    .line 729
    .end local v6    # "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "oldState":I
    .end local v9    # "newState":I
    goto :goto_2

    .line 730
    .end local v5    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :cond_3
    goto :goto_1

    .line 731
    .end local v4    # "oit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$ObserverInternal;>;"
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    if-eqz v0, :cond_5

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updated health check supported packages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 736
    :cond_5
    return-void

    .line 731
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private pruneObserversLocked()V
    .locals 8

    .line 822
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 823
    move-wide v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    sub-long/2addr v0, v4

    .line 824
    .local v0, "elapsedMs":J
    :goto_0
    cmp-long v2, v0, v2

    const-string v3, "PackageWatchdog"

    if-gtz v2, :cond_1

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not pruning observers, elapsed time: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return-void

    .line 829
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms from all packages on all observers"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 831
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$ObserverInternal;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 832
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 833
    .local v4, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    nop

    .line 834
    invoke-static {v4, v0, v1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->access$100(Lcom/android/server/PackageWatchdog$ObserverInternal;J)Ljava/util/Set;

    move-result-object v5

    .line 835
    .local v5, "failedPackages":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 836
    invoke-direct {p0, v4, v5}, Lcom/android/server/PackageWatchdog;->onHealthCheckFailed(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V

    .line 838
    :cond_2
    iget-object v6, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->packages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 839
    invoke-interface {v6}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->isPersistent()Z

    move-result v6

    if-nez v6, :cond_4

    .line 840
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discarding observer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". All packages expired"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 843
    .end local v4    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v5    # "failedPackages":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :cond_4
    goto :goto_1

    .line 844
    :cond_5
    return-void
.end method

.method private registerConnectivityModuleHealthListener()V
    .locals 2

    .line 956
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$l0t57Hik0VChZk77GfFE4tnfo0g;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$l0t57Hik0VChZk77GfFE4tnfo0g;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityModuleConnector;->registerHealthListener(Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;)V

    .line 966
    return-void
.end method

.method private saveToFile()Z
    .locals 8

    .line 972
    const-string v0, "PackageWatchdog"

    const-string v1, "Saving observer state to file"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 976
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 980
    .local v2, "stream":Ljava/io/FileOutputStream;
    nop

    .line 983
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 984
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 985
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 986
    const-string/jumbo v5, "package-watchdog"

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 987
    const-string/jumbo v5, "version"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 988
    const/4 v5, 0x0

    .local v5, "oIndex":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 989
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-virtual {v7, v3}, Lcom/android/server/PackageWatchdog$ObserverInternal;->writeLocked(Lorg/xmlpull/v1/XmlSerializer;)Z

    .line 988
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 991
    .end local v5    # "oIndex":I
    :cond_0
    const-string/jumbo v5, "package-watchdog"

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 992
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 993
    iget-object v5, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 994
    nop

    .line 1000
    :try_start_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 994
    return v4

    .line 1000
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 995
    :catch_0
    move-exception v3

    .line 996
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "PackageWatchdog"

    const-string v5, "Failed to save monitored packages, restoring backup"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 997
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 998
    nop

    .line 1000
    :try_start_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0

    .line 998
    return v1

    .line 1000
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1001
    nop

    .end local p0    # "this":Lcom/android/server/PackageWatchdog;
    throw v1

    .line 1002
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/PackageWatchdog;
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 977
    :catch_1
    move-exception v2

    .line 978
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "PackageWatchdog"

    const-string v4, "Cannot update monitored packages"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    monitor-exit v0

    return v1

    .line 1002
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private saveToFileAsync()V
    .locals 2

    .line 1006
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1009
    :cond_0
    return-void
.end method

.method private scheduleNextSyncStateLocked()V
    .locals 5

    .line 783
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->getNextStateSyncMillisLocked()J

    move-result-wide v0

    .line 784
    .local v0, "durationMs":J
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mSyncStateWithScheduledReason:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 785
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    const-string v3, "PackageWatchdog"

    if-nez v2, :cond_0

    .line 786
    const-string v2, "Cancelling state sync, nothing to sync"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    goto :goto_0

    .line 789
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling next state sync in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    invoke-interface {v2}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    .line 791
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mSyncStateWithScheduledReason:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 793
    :goto_0
    return-void
.end method

.method private setExplicitHealthCheckEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 495
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 496
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/PackageWatchdog;->mIsHealthCheckEnabled:Z

    .line 497
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    invoke-virtual {v1, p1}, Lcom/android/server/ExplicitHealthCheckController;->setEnabled(Z)V

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "health check state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "enabled"

    goto :goto_0

    :cond_0
    const-string v2, "disabled"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 500
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setPropertyChangedListenerLocked()V
    .locals 3

    .line 912
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 914
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$c6DeFAaAsEUAlPf0Sv5YyUydmCk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$c6DeFAaAsEUAlPf0Sv5YyUydmCk;-><init>(Lcom/android/server/PackageWatchdog;)V

    .line 912
    const-string/jumbo v2, "rollback"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 921
    return-void
.end method

.method private syncRequests()V
    .locals 4

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "syncRequired":Z
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/PackageWatchdog;->mIsPackagesReady:Z

    if-eqz v2, :cond_1

    .line 646
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->getPackagesPendingHealthChecksLocked()Ljava/util/Set;

    move-result-object v2

    .line 647
    .local v2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 648
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 649
    :cond_0
    const/4 v0, 0x1

    .line 650
    iput-object v2, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    .line 653
    .end local v2    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    if-eqz v0, :cond_2

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Syncing health check requests for packages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageWatchdog"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/android/server/ExplicitHealthCheckController;->syncRequests(Ljava/util/Set;)V

    .line 660
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    .line 662
    :cond_2
    return-void

    .line 653
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private syncRequestsAsync()V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequests:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 633
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequests:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    return-void
.end method

.method private syncState(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 765
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 766
    :try_start_0
    const-string v1, "PackageWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Syncing state, reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->pruneObserversLocked()V

    .line 769
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->saveToFileAsync()V

    .line 770
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncRequestsAsync()V

    .line 773
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->scheduleNextSyncStateLocked()V

    .line 774
    monitor-exit v0

    .line 775
    return-void

    .line 774
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private syncStateWithScheduledReason()V
    .locals 1

    .line 778
    const-string/jumbo v0, "scheduled"

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method private updateConfigs()V
    .locals 4

    .line 928
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 929
    :try_start_0
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_trigger_failure_count"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 933
    if-gtz v1, :cond_0

    .line 934
    iput v3, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 937
    :cond_0
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_trigger_failure_duration_millis"

    sget v3, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 941
    if-gtz v1, :cond_1

    .line 942
    sget v1, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 945
    :cond_1
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_explicit_health_check_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/PackageWatchdog;->setExplicitHealthCheckEnabled(Z)V

    .line 949
    monitor-exit v0

    .line 950
    return-void

    .line 949
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1013
    const-string v0, "Package Watchdog status"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1015
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1016
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1017
    .local v2, "observerName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Observer name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1019
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 1020
    .local v3, "observerInternal":Lcom/android/server/PackageWatchdog$ObserverInternal;
    invoke-virtual {v3, p1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1021
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1022
    nop

    .end local v2    # "observerName":Ljava/lang/String;
    .end local v3    # "observerInternal":Lcom/android/server/PackageWatchdog$ObserverInternal;
    goto :goto_0

    .line 1023
    :cond_0
    monitor-exit v0

    .line 1024
    return-void

    .line 1023
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTriggerFailureCount()J
    .locals 3

    .line 623
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_0
    iget v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    int-to-long v1, v1

    monitor-exit v0

    return-wide v1

    .line 625
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$checkAndMitigateNativeCrashes$5$PackageWatchdog()V
    .locals 0

    .line 517
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->checkAndMitigateNativeCrashes()V

    return-void
.end method

.method public synthetic lambda$onHealthCheckFailed$7$PackageWatchdog(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V
    .locals 7
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$ObserverInternal;
    .param p2, "failedPackages"    # Ljava/util/Set;

    .line 849
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_0
    iget-object v1, p1, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 851
    .local v1, "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    if-eqz v1, :cond_0

    .line 852
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 853
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 854
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    invoke-static {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$1200(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Landroid/content/pm/VersionedPackage;

    move-result-object v3

    .line 855
    .local v3, "versionedPkg":Landroid/content/pm/VersionedPackage;
    const-string v4, "PackageWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Explicit health check failed for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v4, 0x2

    invoke-interface {v1, v3, v4}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;I)Z

    .line 858
    nop

    .end local v3    # "versionedPkg":Landroid/content/pm/VersionedPackage;
    goto :goto_0

    .line 860
    .end local v1    # "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :cond_0
    monitor-exit v0

    .line 861
    return-void

    .line 860
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onPackageFailure$4$PackageWatchdog(ILjava/util/List;)V
    .locals 10
    .param p1, "failureReason"    # I
    .param p2, "packages"    # Ljava/util/List;

    .line 374
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    monitor-exit v0

    return-void

    .line 378
    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 380
    .local v1, "requiresImmediateAction":Z
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 381
    invoke-direct {p0, p2, p1}, Lcom/android/server/PackageWatchdog;->handleFailureImmediately(Ljava/util/List;I)V

    goto :goto_3

    .line 383
    :cond_3
    const/4 v2, 0x0

    .local v2, "pIndex":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 384
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/VersionedPackage;

    .line 386
    .local v3, "versionedPackage":Landroid/content/pm/VersionedPackage;
    const/4 v4, 0x0

    .line 387
    .local v4, "currentObserverToNotify":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    const v5, 0x7fffffff

    .line 390
    .local v5, "currentObserverImpact":I
    const/4 v6, 0x0

    .local v6, "oIndex":I
    :goto_2
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 391
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 392
    .local v7, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    iget-object v8, v7, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 393
    .local v8, "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    if-eqz v8, :cond_4

    .line 395
    invoke-virtual {v3}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 394
    invoke-virtual {v7, v9}, Lcom/android/server/PackageWatchdog$ObserverInternal;->onPackageFailureLocked(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 396
    invoke-interface {v8, v3, p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onHealthCheckFailed(Landroid/content/pm/VersionedPackage;I)I

    move-result v9

    .line 398
    .local v9, "impact":I
    if-eqz v9, :cond_4

    if-ge v9, v5, :cond_4

    .line 400
    move-object v4, v8

    .line 401
    move v5, v9

    .line 390
    .end local v7    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v8    # "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .end local v9    # "impact":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 407
    .end local v6    # "oIndex":I
    :cond_5
    if-eqz v4, :cond_6

    .line 408
    invoke-interface {v4, v3, p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;I)Z

    .line 383
    .end local v3    # "versionedPackage":Landroid/content/pm/VersionedPackage;
    .end local v4    # "currentObserverToNotify":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .end local v5    # "currentObserverImpact":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 412
    .end local v1    # "requiresImmediateAction":Z
    .end local v2    # "pIndex":I
    :cond_7
    :goto_3
    monitor-exit v0

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onPackagesReady$0$PackageWatchdog(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 240
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->onHealthCheckPassed(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onPackagesReady$1$PackageWatchdog(Ljava/util/List;)V
    .locals 0
    .param p1, "packages"    # Ljava/util/List;

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->onSupportedPackages(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$onPackagesReady$2$PackageWatchdog()V
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncRequestsAsync()V

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    .line 245
    return-void
.end method

.method public synthetic lambda$registerConnectivityModuleHealthListener$9$PackageWatchdog(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 958
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object v0

    .line 959
    .local v0, "pkg":Landroid/content/pm/VersionedPackage;
    if-nez v0, :cond_0

    .line 960
    const-string v1, "PackageWatchdog"

    const-string v2, "NetworkStack failed but could not find its package"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return-void

    .line 963
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 964
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    .line 965
    return-void
.end method

.method public synthetic lambda$scheduleCheckAndMitigateNativeCrashes$6$PackageWatchdog()V
    .locals 0

    .line 531
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->checkAndMitigateNativeCrashes()V

    return-void
.end method

.method public synthetic lambda$setPropertyChangedListenerLocked$8$PackageWatchdog(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 916
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rollback"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 917
    return-void

    .line 919
    :cond_0
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->updateConfigs()V

    .line 920
    return-void
.end method

.method public synthetic lambda$startObservingHealth$3$PackageWatchdog(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .param p2, "packageNames"    # Ljava/util/List;
    .param p3, "packages"    # Ljava/util/List;

    .line 321
    const-string/jumbo v0, "observing new packages"

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 325
    .local v1, "oldObserver":Lcom/android/server/PackageWatchdog$ObserverInternal;
    if-nez v1, :cond_0

    .line 326
    const-string v2, "PackageWatchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " started monitoring health of packages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 329
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 328
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 331
    :cond_0
    const-string v2, "PackageWatchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " added the following packages to monitor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v1, p3}, Lcom/android/server/PackageWatchdog$ObserverInternal;->updatePackagesLocked(Ljava/util/List;)V

    .line 335
    .end local v1    # "oldObserver":Lcom/android/server/PackageWatchdog$ObserverInternal;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 342
    const-string/jumbo v0, "updated observers"

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 343
    return-void

    .line 335
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method newMonitoredPackage(Ljava/lang/String;JJZ)Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "durationMs"    # J
    .param p4, "healthCheckDurationMs"    # J
    .param p6, "hasPassedHealthCheck"    # Z

    .line 1220
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object v9

    .line 1221
    .local v9, "pkg":Landroid/content/pm/VersionedPackage;
    if-nez v9, :cond_0

    .line 1222
    const/4 v0, 0x0

    return-object v0

    .line 1224
    :cond_0
    new-instance v10, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, v9

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PackageWatchdog$MonitoredPackage;-><init>(Lcom/android/server/PackageWatchdog;Landroid/content/pm/VersionedPackage;JJZLcom/android/server/PackageWatchdog$1;)V

    return-object v10
.end method

.method newMonitoredPackage(Ljava/lang/String;JZ)Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "durationMs"    # J
    .param p4, "hasPassedHealthCheck"    # Z

    .line 1215
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/PackageWatchdog;->newMonitoredPackage(Ljava/lang/String;JJZ)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v0

    return-object v0
.end method

.method public noteBoot()V
    .locals 7

    .line 447
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->incrementAndTest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->reset()V

    .line 450
    const/4 v1, 0x0

    .line 451
    .local v1, "currentObserverToNotify":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    const v2, 0x7fffffff

    .line 452
    .local v2, "currentObserverImpact":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 453
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 454
    .local v4, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    iget-object v5, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 455
    .local v5, "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    if-eqz v5, :cond_0

    .line 456
    invoke-interface {v5}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onBootLoop()I

    move-result v6

    .line 457
    .local v6, "impact":I
    if-eqz v6, :cond_0

    if-ge v6, v2, :cond_0

    .line 459
    move-object v1, v5

    .line 460
    move v2, v6

    .line 452
    .end local v4    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v5    # "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .end local v6    # "impact":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 464
    .end local v3    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 465
    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->executeBootLoopMitigation()Z

    .line 468
    .end local v1    # "currentObserverToNotify":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .end local v2    # "currentObserverImpact":I
    :cond_2
    monitor-exit v0

    .line 469
    return-void

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageFailure(Ljava/util/List;I)V
    .locals 2
    .param p2, "failureReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;I)V"
        }
    .end annotation

    .line 369
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    if-nez p1, :cond_0

    .line 370
    const-string v0, "PackageWatchdog"

    const-string v1, "Could not resolve a list of failing packages"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$Ya4lYGbdDy3Dda20wvc2AHBqIMM;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/-$$Lambda$PackageWatchdog$Ya4lYGbdDy3Dda20wvc2AHBqIMM;-><init>(Lcom/android/server/PackageWatchdog;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    return-void
.end method

.method public onPackagesReady()V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mIsPackagesReady:Z

    .line 240
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    new-instance v2, Lcom/android/server/-$$Lambda$PackageWatchdog$nOS9OaZO4hPsSe0I8skPT1UgQoo;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$nOS9OaZO4hPsSe0I8skPT1UgQoo;-><init>(Lcom/android/server/PackageWatchdog;)V

    new-instance v3, Lcom/android/server/-$$Lambda$PackageWatchdog$uFI2R7Ip9Bh1wQPJqJ5H5A0soVU;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$uFI2R7Ip9Bh1wQPJqJ5H5A0soVU;-><init>(Lcom/android/server/PackageWatchdog;)V

    new-instance v4, Lcom/android/server/-$$Lambda$PackageWatchdog$07YAng9lcuyRJuBYy9Jk3p2pWVY;

    invoke-direct {v4, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$07YAng9lcuyRJuBYy9Jk3p2pWVY;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ExplicitHealthCheckController;->setCallbacks(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 246
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->setPropertyChangedListenerLocked()V

    .line 247
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->updateConfigs()V

    .line 248
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->registerConnectivityModuleHealthListener()V

    .line 249
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .locals 5
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 260
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 262
    .local v1, "internalObserver":Lcom/android/server/PackageWatchdog$ObserverInternal;
    if-eqz v1, :cond_0

    .line 263
    iput-object p1, v1, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    goto :goto_0

    .line 265
    :cond_0
    new-instance v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v1, v2

    .line 266
    iput-object p1, v1, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 267
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v2, "added new observer"

    invoke-direct {p0, v2}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 270
    .end local v1    # "internalObserver":Lcom/android/server/PackageWatchdog$ObserverInternal;
    :goto_0
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public scheduleCheckAndMitigateNativeCrashes()V
    .locals 3

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " polls to check and mitigate native crashes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageWatchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$t3rKD-cTKjWjowHB0sDvYPa95Fc;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$t3rKD-cTKjWjowHB0sDvYPa95Fc;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 532
    return-void
.end method

.method public startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V
    .locals 4
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .param p3, "durationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/PackageWatchdog$PackageHealthObserver;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 293
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "PackageWatchdog"

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No packages to observe, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 297
    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v0, p3, v2

    if-gez v0, :cond_1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid duration "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms for observer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Not observing packages "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-wide p3, Lcom/android/server/PackageWatchdog;->DEFAULT_OBSERVING_DURATION_MS:J

    .line 303
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 306
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p3, p4, v3}, Lcom/android/server/PackageWatchdog;->newMonitoredPackage(Ljava/lang/String;JZ)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v2

    .line 307
    .local v2, "pkg":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    if-eqz v2, :cond_2

    .line 308
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v2    # "pkg":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "i":I
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 313
    return-void

    .line 320
    :cond_4
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/-$$Lambda$PackageWatchdog$jINplDIdLxNaZiKt8dCCJn1Cx6c;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/-$$Lambda$PackageWatchdog$jINplDIdLxNaZiKt8dCCJn1Cx6c;-><init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method public unregisterHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 353
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregistering observer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 357
    return-void

    .line 355
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public writeNow()V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 481
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->pruneObserversLocked()V

    .line 482
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->saveToFile()Z

    .line 483
    const-string v1, "PackageWatchdog"

    const-string v2, "Last write to update package durations"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    monitor-exit v0

    .line 486
    return-void

    .line 485
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
