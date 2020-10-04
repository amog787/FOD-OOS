.class public Lcom/android/server/PackageWatchdog;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageWatchdog$MonitoredPackage;,
        Lcom/android/server/PackageWatchdog$ObserverInternal;,
        Lcom/android/server/PackageWatchdog$PackageHealthObserver;,
        Lcom/android/server/PackageWatchdog$PackageHealthObserverImpact;
    }
.end annotation


# static fields
.field private static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field private static final ATTR_EXPLICIT_HEALTH_CHECK_DURATION:Ljava/lang/String; = "health-check-duration"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PASSED_HEALTH_CHECK:Ljava/lang/String; = "passed-health-check"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DB_VERSION:I = 0x1

.field private static final DEFAULT_EXPLICIT_HEALTH_CHECK_ENABLED:Z = true

.field private static final DEFAULT_TRIGGER_FAILURE_COUNT:I = 0x5

.field private static final DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

.field static final PROPERTY_WATCHDOG_EXPLICIT_HEALTH_CHECK_ENABLED:Ljava/lang/String; = "watchdog_explicit_health_check_enabled"

.field static final PROPERTY_WATCHDOG_TRIGGER_DURATION_MILLIS:Ljava/lang/String; = "watchdog_trigger_failure_duration_millis"

.field static final PROPERTY_WATCHDOG_TRIGGER_FAILURE_COUNT:Ljava/lang/String; = "watchdog_trigger_failure_count"

.field private static final TAG:Ljava/lang/String; = "PackageWatchdog"

.field private static final TAG_OBSERVER:Ljava/lang/String; = "observer"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGE_WATCHDOG:Ljava/lang/String; = "package-watchdog"

.field private static sPackageWatchdog:Lcom/android/server/PackageWatchdog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "PackageWatchdog.class"
        }
    .end annotation
.end field


# instance fields
.field private final mAllObservers:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageWatchdog$ObserverInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

.field private mIsHealthCheckEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mIsPackagesReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLongTaskHandler:Landroid/os/Handler;

.field private final mNetworkStackClient:Landroid/net/NetworkStackClient;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private final mShortTaskHandler:Landroid/os/Handler;

.field private mTriggerFailureCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mTriggerFailureDurationMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mUptimeAtLastStateSync:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 85
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 136
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    .line 137
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "package-watchdog.xml"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v3, Landroid/os/Handler;

    .line 139
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/ExplicitHealthCheckController;

    invoke-direct {v5, p1}, Lcom/android/server/ExplicitHealthCheckController;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v6

    .line 136
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/PackageWatchdog;-><init>(Landroid/content/Context;Landroid/util/AtomicFile;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/ExplicitHealthCheckController;Landroid/net/NetworkStackClient;)V

    .line 142
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AtomicFile;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/ExplicitHealthCheckController;Landroid/net/NetworkStackClient;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policyFile"    # Landroid/util/AtomicFile;
    .param p3, "shortTaskHandler"    # Landroid/os/Handler;
    .param p4, "longTaskHandler"    # Landroid/os/Handler;
    .param p5, "controller"    # Lcom/android/server/ExplicitHealthCheckController;
    .param p6, "networkStackClient"    # Landroid/net/NetworkStackClient;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageWatchdog;->mIsHealthCheckEnabled:Z

    .line 125
    sget v0, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    iput v0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 127
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 151
    iput-object p1, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    .line 153
    iput-object p3, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    .line 154
    iput-object p4, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    .line 155
    iput-object p5, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    .line 156
    iput-object p6, p0, Lcom/android/server/PackageWatchdog;->mNetworkStackClient:Landroid/net/NetworkStackClient;

    .line 157
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->loadFromFile()V

    .line 158
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/PackageWatchdog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PackageWatchdog;

    .line 73
    iget v0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/PackageWatchdog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PackageWatchdog;

    .line 73
    iget v0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 162
    const-class v0, Lcom/android/server/PackageWatchdog;

    monitor-enter v0

    .line 163
    :try_start_0
    sget-object v1, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lcom/android/server/PackageWatchdog;

    invoke-direct {v1, p0}, Lcom/android/server/PackageWatchdog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 166
    :cond_0
    sget-object v1, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    monitor-exit v0

    return-object v1

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getNextStateSyncMillisLocked()J
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 590
    const-wide v0, 0x7fffffffffffffffL

    .line 591
    .local v0, "shortestDurationMs":J
    const/4 v2, 0x0

    .local v2, "oIndex":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 592
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$ObserverInternal;

    iget-object v3, v3, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 593
    .local v3, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    const/4 v4, 0x0

    .local v4, "pIndex":I
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 594
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 595
    .local v5, "mp":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-virtual {v5}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getShortestScheduleDurationMsLocked()J

    move-result-wide v6

    .line 596
    .local v6, "duration":J
    cmp-long v8, v6, v0

    if-gez v8, :cond_0

    .line 597
    move-wide v0, v6

    .line 593
    .end local v5    # "mp":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v6    # "duration":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 591
    .end local v3    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    .end local v4    # "pIndex":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 601
    .end local v2    # "oIndex":I
    :cond_2
    return-wide v0
.end method

.method private getPackagesPendingHealthChecksLocked()Ljava/util/Set;
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    const-string v0, "PackageWatchdog"

    const-string v1, "Getting all observed packages pending health checks"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 530
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 531
    .local v1, "oit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$ObserverInternal;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 533
    .local v2, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    iget-object v3, v2, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    .line 534
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 535
    .local v3, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 536
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 537
    .local v4, "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-static {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v5

    .line 538
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isPendingHealthChecksLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 539
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    .end local v4    # "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 542
    .end local v2    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v3    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :cond_1
    goto :goto_0

    .line 543
    :cond_2
    return-object v0
.end method

.method private getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 661
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 662
    return-object v1

    .line 665
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 666
    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    .line 667
    .local v2, "versionCode":J
    new-instance v4, Landroid/content/pm/VersionedPackage;

    invoke-direct {v4, p1, v2, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 668
    .end local v2    # "versionCode":J
    :catch_0
    move-exception v2

    .line 669
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1
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

.method public static synthetic lambda$ZYXCPv-g8AolCxNNTIoK4ITZJpQ(Lcom/android/server/PackageWatchdog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->saveToFileAsync()V

    return-void
.end method

.method public static synthetic lambda$vRKcIrucEj03dz6ypRVINZtns1s(Lcom/android/server/PackageWatchdog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncStateWithScheduledReason()V

    return-void
.end method

.method private loadFromFile()V
    .locals 6

    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, "infile":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 683
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 684
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 685
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 686
    const-string/jumbo v2, "package-watchdog"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 687
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 688
    .local v2, "outerDepth":I
    :goto_0
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 689
    invoke-static {v1, p0}, Lcom/android/server/PackageWatchdog$ObserverInternal;->read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$ObserverInternal;

    move-result-object v3

    .line 690
    .local v3, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    if-eqz v3, :cond_0

    .line 691
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/server/PackageWatchdog$ObserverInternal;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    .end local v3    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    :cond_0
    goto :goto_0

    .line 688
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "outerDepth":I
    :cond_1
    goto :goto_2

    .line 700
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 696
    :catch_0
    move-exception v1

    .line 697
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "PackageWatchdog"

    const-string v3, "Unable to read monitored packages, deleting file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 700
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 694
    :catch_1
    move-exception v1

    .line 700
    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 701
    nop

    .line 702
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

    .line 635
    .local p2, "failedPackages":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$w1N3OdeSgqjfs1N8CxlxIZyRKkE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/-$$Lambda$PackageWatchdog$w1N3OdeSgqjfs1N8CxlxIZyRKkE;-><init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 656
    return-void
.end method

.method private onHealthCheckPassed(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Health check passed for package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageWatchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v0, 0x0

    .line 469
    .local v0, "isStateChanged":Z
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    const/4 v2, 0x0

    move v3, v2

    .local v3, "observerIdx":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 471
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 472
    .local v4, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    iget-object v5, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 474
    .local v5, "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    if-eqz v5, :cond_1

    .line 475
    invoke-virtual {v5}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v6

    .line 476
    .local v6, "oldState":I
    invoke-virtual {v5}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->tryPassHealthCheckLocked()I

    move-result v7

    .line 477
    .local v7, "newState":I
    if-eq v6, v7, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v2

    :goto_1
    or-int/2addr v0, v8

    .line 470
    .end local v4    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v5    # "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v6    # "oldState":I
    .end local v7    # "newState":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    .end local v3    # "observerIdx":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    if-eqz v0, :cond_3

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "health check passed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 485
    :cond_3
    return-void

    .line 480
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

    .line 488
    .local p1, "supportedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;>;"
    const/4 v0, 0x0

    .line 490
    .local v0, "isStateChanged":Z
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 491
    .local v1, "supportedPackageTimeouts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 492
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 493
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;

    .line 494
    .local v3, "info":Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;
    invoke-virtual {v3}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getHealthCheckTimeoutMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .end local v3    # "info":Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;
    goto :goto_0

    .line 497
    :cond_0
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 498
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

    .line 499
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 500
    .local v4, "oit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$ObserverInternal;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 501
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageWatchdog$ObserverInternal;

    iget-object v5, v5, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 502
    .local v5, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 503
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 504
    .local v6, "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-static {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v7

    .line 505
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v8

    .line 508
    .local v8, "oldState":I
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 510
    nop

    .line 511
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 510
    invoke-virtual {v6, v9, v10}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->setHealthCheckActiveLocked(J)I

    move-result v9

    .local v9, "newState":I
    goto :goto_3

    .line 514
    .end local v9    # "newState":I
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->tryPassHealthCheckLocked()I

    move-result v9

    .line 516
    .restart local v9    # "newState":I
    :goto_3
    if-eq v8, v9, :cond_2

    const/4 v10, 0x1

    goto :goto_4

    :cond_2
    const/4 v10, 0x0

    :goto_4
    or-int/2addr v0, v10

    .line 517
    .end local v6    # "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "oldState":I
    .end local v9    # "newState":I
    goto :goto_2

    .line 518
    .end local v5    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :cond_3
    goto :goto_1

    .line 519
    .end local v4    # "oit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$ObserverInternal;>;"
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    if-eqz v0, :cond_5

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updated health check supported packages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 524
    :cond_5
    return-void

    .line 519
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 610
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 611
    move-wide v0, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    sub-long/2addr v0, v4

    .line 612
    .local v0, "elapsedMs":J
    :goto_0
    cmp-long v2, v0, v2

    const-string v3, "PackageWatchdog"

    if-gtz v2, :cond_1

    .line 613
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

    .line 614
    return-void

    .line 617
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

    .line 618
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 619
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$ObserverInternal;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 620
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 621
    .local v4, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    nop

    .line 622
    invoke-static {v4, v0, v1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->access$100(Lcom/android/server/PackageWatchdog$ObserverInternal;J)Ljava/util/Set;

    move-result-object v5

    .line 623
    .local v5, "failedPackages":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 624
    invoke-direct {p0, v4, v5}, Lcom/android/server/PackageWatchdog;->onHealthCheckFailed(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V

    .line 626
    :cond_2
    iget-object v6, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 627
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discarding observer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". All packages expired"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 630
    .end local v4    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v5    # "failedPackages":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :cond_3
    goto :goto_1

    .line 631
    :cond_4
    return-void
.end method

.method private registerNetworkStackHealthListener()V
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mNetworkStackClient:Landroid/net/NetworkStackClient;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$1l0m3y2c5ApJy3DK1aj1zLt-Y2A;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$1l0m3y2c5ApJy3DK1aj1zLt-Y2A;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkStackClient;->registerHealthListener(Landroid/net/NetworkStackClient$NetworkStackHealthListener;)V

    .line 765
    return-void
.end method

.method private saveToFile()Z
    .locals 8

    .line 771
    const-string v0, "PackageWatchdog"

    const-string v1, "Saving observer state to file"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 779
    .local v2, "stream":Ljava/io/FileOutputStream;
    nop

    .line 782
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 783
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 784
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 785
    const-string/jumbo v5, "package-watchdog"

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 786
    const-string/jumbo v5, "version"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 787
    move v5, v1

    .local v5, "oIndex":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 788
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-virtual {v7, v3}, Lcom/android/server/PackageWatchdog$ObserverInternal;->writeLocked(Lorg/xmlpull/v1/XmlSerializer;)Z

    .line 787
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 790
    .end local v5    # "oIndex":I
    :cond_0
    const-string/jumbo v5, "package-watchdog"

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 791
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 792
    iget-object v5, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    nop

    .line 799
    :try_start_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 793
    return v4

    .line 799
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 794
    :catch_0
    move-exception v3

    .line 795
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "PackageWatchdog"

    const-string v5, "Failed to save monitored packages, restoring backup"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 797
    nop

    .line 799
    :try_start_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0

    .line 797
    return v1

    .line 799
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local p0    # "this":Lcom/android/server/PackageWatchdog;
    throw v1

    .line 801
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/PackageWatchdog;
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 776
    :catch_1
    move-exception v2

    .line 777
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "PackageWatchdog"

    const-string v4, "Cannot update monitored packages"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    monitor-exit v0

    return v1

    .line 801
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private saveToFileAsync()V
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$Q0WI2EJpRFO1jF_7_YDaj1eGHas;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$Q0WI2EJpRFO1jF_7_YDaj1eGHas;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$Q0WI2EJpRFO1jF_7_YDaj1eGHas;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$Q0WI2EJpRFO1jF_7_YDaj1eGHas;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 808
    :cond_0
    return-void
.end method

.method private scheduleNextSyncStateLocked()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 571
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->getNextStateSyncMillisLocked()J

    move-result-wide v0

    .line 572
    .local v0, "durationMs":J
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$PackageWatchdog$vRKcIrucEj03dz6ypRVINZtns1s;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$vRKcIrucEj03dz6ypRVINZtns1s;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 573
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    const-string v3, "PackageWatchdog"

    if-nez v2, :cond_0

    .line 574
    const-string v2, "Cancelling state sync, nothing to sync"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    goto :goto_0

    .line 577
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

    .line 578
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    .line 579
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$PackageWatchdog$vRKcIrucEj03dz6ypRVINZtns1s;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$vRKcIrucEj03dz6ypRVINZtns1s;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 581
    :goto_0
    return-void
.end method

.method private setExplicitHealthCheckEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 367
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/PackageWatchdog;->mIsHealthCheckEnabled:Z

    .line 369
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    invoke-virtual {v1, p1}, Lcom/android/server/ExplicitHealthCheckController;->setEnabled(Z)V

    .line 371
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

    .line 372
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setPropertyChangedListenerLocked()V
    .locals 3

    .line 706
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 708
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$Jw3j5MJV779MFM4_82knw6ZMoQk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$Jw3j5MJV779MFM4_82knw6ZMoQk;-><init>(Lcom/android/server/PackageWatchdog;)V

    .line 706
    const-string/jumbo v2, "rollback"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 715
    return-void
.end method

.method private syncRequests()V
    .locals 3

    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/PackageWatchdog;->mIsPackagesReady:Z

    if-eqz v2, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->getPackagesPendingHealthChecksLocked()Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    .line 443
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    if-eqz v0, :cond_1

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Syncing health check requests for packages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageWatchdog"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    invoke-virtual {v1, v0}, Lcom/android/server/ExplicitHealthCheckController;->syncRequests(Ljava/util/Set;)V

    .line 450
    :cond_1
    return-void

    .line 443
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

    .line 427
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$CQuOnXthwwBaxcS5WoAlJJAz8Tk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$CQuOnXthwwBaxcS5WoAlJJAz8Tk;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$CQuOnXthwwBaxcS5WoAlJJAz8Tk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$CQuOnXthwwBaxcS5WoAlJJAz8Tk;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 429
    return-void
.end method

.method private syncState(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
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

    .line 555
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->pruneObserversLocked()V

    .line 557
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->saveToFileAsync()V

    .line 558
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncRequestsAsync()V

    .line 561
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->scheduleNextSyncStateLocked()V

    .line 562
    monitor-exit v0

    .line 563
    return-void

    .line 562
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private syncStateWithScheduledReason()V
    .locals 1

    .line 566
    const-string/jumbo v0, "scheduled"

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method private updateConfigs()V
    .locals 5

    .line 722
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_0
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_trigger_failure_count"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 727
    iget v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    if-gtz v1, :cond_0

    .line 728
    iput v3, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 731
    :cond_0
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_trigger_failure_duration_millis"

    sget v4, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    invoke-static {v1, v2, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 735
    iget v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    if-gtz v1, :cond_1

    .line 736
    iput v3, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 739
    :cond_1
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_explicit_health_check_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/PackageWatchdog;->setExplicitHealthCheckEnabled(Z)V

    .line 743
    monitor-exit v0

    .line 744
    return-void

    .line 743
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getPackages(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)Ljava/util/Set;
    .locals 4
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/PackageWatchdog$PackageHealthObserver;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 286
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    iget-object v2, v2, Lcom/android/server/PackageWatchdog$ObserverInternal;->mRegisteredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    iget-object v2, v2, Lcom/android/server/PackageWatchdog$ObserverInternal;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 290
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 285
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 294
    const/4 v0, 0x0

    return-object v0

    .line 293
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTriggerFailureCount()J
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_0
    iget v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    int-to-long v1, v1

    monitor-exit v0

    return-wide v1

    .line 420
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onHealthCheckFailed$4$PackageWatchdog(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V
    .locals 8
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$ObserverInternal;
    .param p2, "failedPackages"    # Ljava/util/Set;

    .line 636
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_0
    iget-object v1, p1, Lcom/android/server/PackageWatchdog$ObserverInternal;->mRegisteredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 638
    .local v1, "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    if-eqz v1, :cond_1

    .line 639
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 640
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 641
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    invoke-static {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, "failedPackage":Ljava/lang/String;
    const-string v4, "PackageWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Explicit health check failed for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-direct {p0, v3}, Lcom/android/server/PackageWatchdog;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object v4

    .line 644
    .local v4, "versionedPkg":Landroid/content/pm/VersionedPackage;
    if-nez v4, :cond_0

    .line 645
    const-string v5, "PackageWatchdog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Explicit health check failed but could not find package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v5, Landroid/content/pm/VersionedPackage;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v3, v6, v7}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    move-object v4, v5

    .line 651
    :cond_0
    invoke-interface {v1, v4}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;)Z

    .line 652
    nop

    .end local v3    # "failedPackage":Ljava/lang/String;
    .end local v4    # "versionedPkg":Landroid/content/pm/VersionedPackage;
    goto :goto_0

    .line 654
    .end local v1    # "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :cond_1
    monitor-exit v0

    .line 655
    return-void

    .line 654
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onPackageFailure$3$PackageWatchdog(Ljava/util/List;)V
    .locals 10
    .param p1, "packages"    # Ljava/util/List;

    .line 307
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    monitor-exit v0

    return-void

    .line 312
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "pIndex":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 313
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/VersionedPackage;

    .line 315
    .local v3, "versionedPackage":Landroid/content/pm/VersionedPackage;
    const/4 v4, 0x0

    .line 316
    .local v4, "currentObserverToNotify":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    const v5, 0x7fffffff

    .line 319
    .local v5, "currentObserverImpact":I
    move v6, v1

    .local v6, "oIndex":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 320
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 321
    .local v7, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    iget-object v8, v7, Lcom/android/server/PackageWatchdog$ObserverInternal;->mRegisteredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 322
    .local v8, "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    if-eqz v8, :cond_1

    .line 324
    invoke-virtual {v3}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 323
    invoke-virtual {v7, v9}, Lcom/android/server/PackageWatchdog$ObserverInternal;->onPackageFailureLocked(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 325
    invoke-interface {v8, v3}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onHealthCheckFailed(Landroid/content/pm/VersionedPackage;)I

    move-result v9

    .line 326
    .local v9, "impact":I
    if-eqz v9, :cond_1

    if-ge v9, v5, :cond_1

    .line 328
    move-object v4, v8

    .line 329
    move v5, v9

    .line 319
    .end local v7    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v8    # "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .end local v9    # "impact":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 335
    .end local v6    # "oIndex":I
    :cond_2
    if-eqz v4, :cond_3

    .line 336
    invoke-interface {v4, v3}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;)Z

    .line 312
    .end local v3    # "versionedPackage":Landroid/content/pm/VersionedPackage;
    .end local v4    # "currentObserverToNotify":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .end local v5    # "currentObserverImpact":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v2    # "pIndex":I
    :cond_4
    monitor-exit v0

    .line 340
    return-void

    .line 339
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

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->onHealthCheckPassed(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onPackagesReady$1$PackageWatchdog(Ljava/util/List;)V
    .locals 0
    .param p1, "packages"    # Ljava/util/List;

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->onSupportedPackages(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$onPackagesReady$2$PackageWatchdog()V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncRequestsAsync()V

    return-void
.end method

.method public synthetic lambda$registerNetworkStackHealthListener$6$PackageWatchdog(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 752
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object v0

    .line 753
    .local v0, "pkg":Landroid/content/pm/VersionedPackage;
    if-nez v0, :cond_0

    .line 754
    const-string v1, "PackageWatchdog"

    const-string v2, "NetworkStack failed but could not find its package"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-void

    .line 759
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 760
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->getTriggerFailureCount()J

    move-result-wide v2

    .line 761
    .local v2, "failureCount":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    int-to-long v5, v4

    cmp-long v5, v5, v2

    if-gez v5, :cond_1

    .line 762
    invoke-virtual {p0, v1}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;)V

    .line 761
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 764
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method public synthetic lambda$setPropertyChangedListenerLocked$5$PackageWatchdog(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 710
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rollback"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    return-void

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->updateConfigs()V

    .line 714
    return-void
.end method

.method public onPackageFailure(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;)V"
        }
    .end annotation

    .line 306
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$PackageWatchdog$dGAIdmdAmYvybYvlZcbaTbRfu2A;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$PackageWatchdog$dGAIdmdAmYvybYvlZcbaTbRfu2A;-><init>(Lcom/android/server/PackageWatchdog;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    return-void
.end method

.method public onPackagesReady()V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mIsPackagesReady:Z

    .line 177
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    new-instance v2, Lcom/android/server/-$$Lambda$PackageWatchdog$nOS9OaZO4hPsSe0I8skPT1UgQoo;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$nOS9OaZO4hPsSe0I8skPT1UgQoo;-><init>(Lcom/android/server/PackageWatchdog;)V

    new-instance v3, Lcom/android/server/-$$Lambda$PackageWatchdog$uFI2R7Ip9Bh1wQPJqJ5H5A0soVU;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$uFI2R7Ip9Bh1wQPJqJ5H5A0soVU;-><init>(Lcom/android/server/PackageWatchdog;)V

    new-instance v4, Lcom/android/server/-$$Lambda$PackageWatchdog$07YAng9lcuyRJuBYy9Jk3p2pWVY;

    invoke-direct {v4, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$07YAng9lcuyRJuBYy9Jk3p2pWVY;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ExplicitHealthCheckController;->setCallbacks(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 180
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->setPropertyChangedListenerLocked()V

    .line 181
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->updateConfigs()V

    .line 182
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->registerNetworkStackHealthListener()V

    .line 183
    monitor-exit v0

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 193
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 195
    .local v1, "internalObserver":Lcom/android/server/PackageWatchdog$ObserverInternal;
    if-eqz v1, :cond_0

    .line 196
    iput-object p1, v1, Lcom/android/server/PackageWatchdog$ObserverInternal;->mRegisteredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 198
    .end local v1    # "internalObserver":Lcom/android/server/PackageWatchdog$ObserverInternal;
    :cond_0
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V
    .locals 9
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

    .line 219
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No packages to observe, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageWatchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void

    .line 223
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-ltz v0, :cond_3

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 232
    new-instance v2, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p0

    move-wide v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/PackageWatchdog$MonitoredPackage;-><init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v1    # "i":I
    :cond_1
    const-string/jumbo v1, "observing new packages"

    invoke-direct {p0, v1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 243
    .local v2, "oldObserver":Lcom/android/server/PackageWatchdog$ObserverInternal;
    if-nez v2, :cond_2

    .line 244
    const-string v3, "PackageWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " started monitoring health of packages "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 247
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 246
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 249
    :cond_2
    const-string v3, "PackageWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " added the following packages to monitor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v2, v0}, Lcom/android/server/PackageWatchdog$ObserverInternal;->updatePackagesLocked(Ljava/util/List;)V

    .line 253
    .end local v2    # "oldObserver":Lcom/android/server/PackageWatchdog$ObserverInternal;
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 260
    const-string/jumbo v1, "updated observers"

    invoke-direct {p0, v1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 261
    return-void

    .line 253
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 225
    .end local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms for observer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Not observing packages "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .locals 3
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 269
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
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

    .line 273
    return-void

    .line 271
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

    .line 348
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/-$$Lambda$PackageWatchdog$ZYXCPv-g8AolCxNNTIoK4ITZJpQ;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$PackageWatchdog$ZYXCPv-g8AolCxNNTIoK4ITZJpQ;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 353
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->pruneObserversLocked()V

    .line 354
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->saveToFile()Z

    .line 355
    const-string v1, "PackageWatchdog"

    const-string v2, "Last write to update package durations"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
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
