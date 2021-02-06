.class public Lcom/android/server/pm/BackgroundDexOptService;
.super Landroid/app/job/JobService;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final END_HOUR:I = 0x6

.field private static final IDLE_OPTIMIZATION_PERIOD:J

.field private static final JOB_IDLE_OPTIMIZE:I = 0x320

.field private static final JOB_POST_BOOT_UPDATE:I = 0x321

.field private static final LOW_THRESHOLD_MULTIPLIER_FOR_DOWNGRADE:I = 0x2

.field private static final OPTIMIZE_ABORT_BY_JOB_SCHEDULER:I = 0x2

.field private static final OPTIMIZE_ABORT_NO_SPACE_LEFT:I = 0x3

.field private static final OPTIMIZE_CONTINUE:I = 0x1

.field private static final OPTIMIZE_PROCESSED:I = 0x0

.field private static final START_HOUR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BackgroundDexOptService"

.field private static mContext:Landroid/content/Context;

.field private static final mDowngradeUnusedAppsThresholdInMillis:J

.field private static mIdleJobScheduled:Z

.field private static final mScheduleIdleJobRunnable:Ljava/lang/Runnable;

.field private static sDexoptServiceName:Landroid/content/ComponentName;

.field static final sFailedPackageNamesPrimary:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sFailedPackageNamesSecondary:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPackagesUpdatedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mDataDir:Ljava/io/File;

.field private final mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    const-string v0, "BackgroundDexOptService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    .line 73
    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    sput-wide v0, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    .line 77
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/pm/BackgroundDexOptService;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    .line 98
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    .line 99
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    .line 114
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->getDowngradeUnusedAppsThresholdInMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sPackagesUpdatedListeners:Ljava/util/List;

    .line 155
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->mIdleJobScheduled:Z

    .line 160
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$1;

    invoke-direct {v0}, Lcom/android/server/pm/BackgroundDexOptService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/BackgroundDexOptService;->mScheduleIdleJobRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    return-void
.end method

.method private abortIdleOptimizations(J)I
    .locals 4
    .param p1, "lowStorageThreshold"    # J

    .line 646
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const/4 v0, 0x2

    return v0

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 651
    .local v0, "usableSpace":J
    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aborting background dex opt job due to low storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackgroundDexOptService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v2, 0x3

    return v2

    .line 657
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 65
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->scheduleIdleJob()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/BackgroundDexOptService;Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/BackgroundDexOptService;
    .param p1, "x1"    # Landroid/app/job/JobParameters;
    .param p2, "x2"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "x3"    # Landroid/util/ArraySet;

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->postBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/BackgroundDexOptService;
    .param p1, "x1"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x2"    # Landroid/util/ArraySet;
    .param p3, "x3"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static addPackagesUpdatedListener(Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;

    .line 760
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sPackagesUpdatedListeners:Ljava/util/List;

    monitor-enter v0

    .line 761
    :try_start_0
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sPackagesUpdatedListeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    monitor-exit v0

    .line 763
    return-void

    .line 762
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private downgradePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z
    .locals 12
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "isForPrimaryDex"    # Z

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downgrading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "dex_opt_performed":Z
    const/4 v1, 0x5

    .line 523
    .local v1, "reason":I
    const/16 v2, 0x224

    .line 526
    .local v2, "dexoptFlags":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)J

    move-result-wide v10

    .line 528
    .local v10, "package_size_before":J
    if-nez p3, :cond_1

    const-string v3, "android"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v0

    goto :goto_1

    .line 531
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService;->canHaveOatDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 534
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 536
    :cond_2
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v0

    .line 542
    :goto_1
    if-eqz v0, :cond_3

    .line 543
    const/16 v3, 0x80

    .line 544
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/BackgroundDexOptService;->getPackageSize(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x0

    .line 543
    move-object v4, p2

    move-wide v5, v10

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JJZ)V

    .line 546
    :cond_3
    return v0
.end method

.method private getBatteryLevel()I
    .locals 6

    .line 234
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "filter":Landroid/content/IntentFilter;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/BackgroundDexOptService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 236
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "level"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 237
    .local v2, "level":I
    const-string/jumbo v4, "scale"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 238
    .local v3, "scale":I
    const-string/jumbo v4, "present"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 240
    .local v4, "present":Z
    if-nez v4, :cond_0

    .line 242
    const/16 v5, 0x64

    return v5

    .line 245
    :cond_0
    if-ltz v2, :cond_2

    if-gtz v3, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    mul-int/lit8 v5, v2, 0x64

    div-int/2addr v5, v3

    return v5

    .line 247
    :cond_2
    :goto_0
    const/4 v5, 0x0

    return v5
.end method

.method private getDirectorySize(Ljava/io/File;)J
    .locals 8
    .param p1, "f"    # Ljava/io/File;

    .line 385
    const-wide/16 v0, 0x0

    .line 386
    .local v0, "size":J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 388
    .local v5, "file":Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 387
    .end local v5    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 393
    :cond_1
    return-wide v0
.end method

.method private static getDowngradeUnusedAppsThresholdInMillis()J
    .locals 5

    .line 781
    const-string/jumbo v0, "pm.dexopt.downgrade_after_inactive_days"

    .line 782
    .local v0, "sysPropKey":Ljava/lang/String;
    const-string/jumbo v1, "pm.dexopt.downgrade_after_inactive_days"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "sysPropValue":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 787
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    return-wide v2

    .line 784
    :cond_1
    :goto_0
    const-string v2, "BackgroundDexOptService"

    const-string v3, "SysProp pm.dexopt.downgrade_after_inactive_days not set"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-wide v2, 0x7fffffffffffffffL

    return-wide v2
.end method

.method private getLowStorageThreshold(Landroid/content/Context;)J
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 255
    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v0

    .line 256
    .local v0, "lowThreshold":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 257
    const-string v2, "BackgroundDexOptService"

    const-string v3, "Invalid low storage threshold"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    return-wide v0
.end method

.method private getPackageSize(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)J
    .locals 11
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 402
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const-wide/16 v2, 0x0

    .line 403
    .local v2, "size":J
    if-eqz v1, :cond_3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_3

    .line 404
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    .line 405
    .local v4, "path":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 406
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 408
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 409
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 410
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v6, v5

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 411
    .local v8, "splitSourceDir":Ljava/lang/String;
    new-array v9, v0, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    .line 412
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 413
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 415
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/pm/BackgroundDexOptService;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v9

    add-long/2addr v2, v9

    .line 410
    .end local v8    # "splitSourceDir":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 418
    :cond_2
    return-wide v2

    .line 420
    .end local v4    # "path":Ljava/io/File;
    :cond_3
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method private idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I
    .locals 3
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .line 369
    .local p2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v0, "BackgroundDexOptService"

    const-string v1, "Performing idle optimizations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 374
    invoke-direct {p0, p3}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold(Landroid/content/Context;)J

    move-result-wide v0

    .line 375
    .local v0, "lowStorageThreshold":J
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;J)I

    move-result v2

    .line 376
    .local v2, "result":I
    return v2
.end method

.method private idleOptimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;J)I
    .locals 18
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "lowStorageThreshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;J)I"
        }
    .end annotation

    .line 425
    .local p2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    const-string v0, "BackgroundDexOptService"

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v1

    .line 426
    .local v11, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 429
    .local v14, "updatedPackagesDueToSecondaryDex":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/BackgroundDexOptService;->supportSecondaryDex()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move/from16 v16, v1

    .line 431
    .local v16, "supportSecondaryDex":Z
    if-eqz v16, :cond_0

    .line 432
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/android/server/pm/BackgroundDexOptService;->reconcileSecondaryDexFiles(Lcom/android/server/pm/dex/DexManager;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    .local v1, "result":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 434
    nop

    .line 485
    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 489
    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    .line 434
    return v1

    .line 485
    .end local v1    # "result":I
    .end local v16    # "supportSecondaryDex":Z
    :catchall_0
    move-exception v0

    move-object/from16 v2, p2

    move-object v4, v11

    goto/16 :goto_3

    .line 441
    .restart local v16    # "supportSecondaryDex":Z
    :cond_0
    const-wide/16 v1, 0x2

    mul-long v9, p3, v1

    .line 443
    .local v9, "lowStorageThresholdForDowngrade":J
    :try_start_2
    invoke-direct {v15, v9, v10}, Lcom/android/server/pm/BackgroundDexOptService;->shouldDowngrade(J)Z

    move-result v1

    move v12, v1

    .line 444
    .local v12, "shouldDowngrade":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should Downgrade "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 445
    const/4 v8, 0x0

    if-eqz v12, :cond_6

    .line 446
    :try_start_3
    sget-wide v1, Lcom/android/server/pm/BackgroundDexOptService;->mDowngradeUnusedAppsThresholdInMillis:J

    .line 447
    invoke-virtual {v13, v1, v2}, Lcom/android/server/pm/PackageManagerService;->getUnusedPackages(J)Ljava/util/Set;

    move-result-object v1

    .line 448
    .local v1, "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsused Packages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v3, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 451
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 452
    .local v2, "pkg":Ljava/lang/String;
    const-wide/16 v3, -0x1

    invoke-direct {v15, v3, v4}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 453
    .local v3, "abortCode":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 455
    nop

    .line 485
    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 489
    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    .line 455
    return v3

    .line 457
    :cond_1
    :try_start_4
    invoke-direct {v15, v13, v2, v4}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 458
    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_2
    if-eqz v16, :cond_3

    .line 461
    invoke-direct {v15, v13, v2, v8}, Lcom/android/server/pm/BackgroundDexOptService;->downgradePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z

    .line 463
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "abortCode":I
    :cond_3
    goto :goto_0

    .line 465
    :cond_4
    new-instance v0, Landroid/util/ArraySet;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v2, p2

    :try_start_5
    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v2, v0

    .line 466
    .end local p2    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :try_start_6
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v17, v2

    goto :goto_2

    .line 485
    .end local v1    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "lowStorageThresholdForDowngrade":J
    .end local v12    # "shouldDowngrade":Z
    .end local v16    # "supportSecondaryDex":Z
    :catchall_1
    move-exception v0

    move-object v4, v11

    goto :goto_3

    .end local v2    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p2    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move-object v4, v11

    goto :goto_3

    .line 450
    .restart local v1    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "lowStorageThresholdForDowngrade":J
    .restart local v12    # "shouldDowngrade":Z
    .restart local v16    # "supportSecondaryDex":Z
    :cond_5
    move-object/from16 v2, p2

    goto :goto_1

    .line 445
    .end local v1    # "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v2, p2

    .line 470
    :goto_1
    move-object/from16 v17, v2

    .end local p2    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v17, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_2
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move-wide/from16 v4, p3

    move-object v7, v11

    :try_start_7
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZLandroid/util/ArraySet;)I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 472
    .local v0, "primaryResult":I
    if-eqz v0, :cond_7

    .line 473
    nop

    .line 485
    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 489
    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    .line 473
    return v0

    .line 476
    :cond_7
    if-nez v16, :cond_8

    .line 477
    nop

    .line 485
    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 489
    invoke-direct {v15, v11}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    .line 477
    return v8

    .line 480
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v8, p0

    move-wide v2, v9

    .end local v9    # "lowStorageThresholdForDowngrade":J
    .local v2, "lowStorageThresholdForDowngrade":J
    move-object/from16 v9, p1

    move-object/from16 v10, v17

    move-object v4, v11

    move v5, v12

    .end local v11    # "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "shouldDowngrade":Z
    .local v4, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v5, "shouldDowngrade":Z
    move-wide/from16 v11, p3

    move v13, v1

    :try_start_8
    invoke-direct/range {v8 .. v14}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZLandroid/util/ArraySet;)I

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 482
    .local v1, "secondaryResult":I
    nop

    .line 485
    invoke-direct {v15, v4}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 489
    invoke-direct {v15, v4}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    .line 482
    return v1

    .line 485
    .end local v0    # "primaryResult":I
    .end local v1    # "secondaryResult":I
    .end local v2    # "lowStorageThresholdForDowngrade":J
    .end local v5    # "shouldDowngrade":Z
    .end local v16    # "supportSecondaryDex":Z
    :catchall_3
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_3

    .end local v4    # "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_4
    move-exception v0

    move-object v4, v11

    move-object/from16 v2, v17

    .end local v11    # "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_3

    .end local v4    # "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p2    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v2, p2

    move-object v4, v11

    .end local v11    # "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p2    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4    # "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_3
    invoke-direct {v15, v4}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 489
    invoke-direct {v15, v4}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    .line 490
    throw v0
.end method

.method private static isBackgroundDexoptDisabled()Z
    .locals 2

    .line 791
    const-string/jumbo v0, "pm.dexopt.disable_bg_dexopt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$performDexOptPrimary$0(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Ljava/lang/Integer;
    .locals 1
    .param p0, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .param p3, "dexoptFlags"    # I

    .line 595
    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$performDexOptSecondary$1(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;
    .locals 1
    .param p0, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "dexoptOptions"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 604
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static needReSchedule()Z
    .locals 3

    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 169
    .local v0, "hour":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needReSchedule current hour: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackgroundDexOptService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static notifyPackageChanged(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 224
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    monitor-enter v0

    .line 225
    :try_start_0
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 226
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 227
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    monitor-enter v1

    .line 228
    :try_start_1
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 229
    monitor-exit v1

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 226
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private notifyPackagesUpdated(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 773
    .local p1, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sPackagesUpdatedListeners:Ljava/util/List;

    monitor-enter v0

    .line 774
    :try_start_0
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sPackagesUpdatedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;

    .line 775
    .local v2, "listener":Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;
    invoke-interface {v2, p1}, Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;->onPackagesUpdated(Landroid/util/ArraySet;)V

    .line 776
    .end local v2    # "listener":Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;
    goto :goto_0

    .line 777
    :cond_0
    monitor-exit v0

    .line 778
    return-void

    .line 777
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyPinService(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 747
    .local p1, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-class v0, Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService;

    .line 748
    .local v0, "pinnerService":Lcom/android/server/PinnerService;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pinning optimized code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackgroundDexOptService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;Z)V

    .line 752
    :cond_0
    return-void
.end method

.method private optimizePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "isForPrimaryDex"    # Z

    .line 575
    const/4 v0, 0x3

    .line 576
    .local v0, "reason":I
    const v1, 0x38205

    .line 587
    .local v1, "dexoptFlags":I
    if-nez p3, :cond_1

    const-string v2, "android"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptSecondary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v2

    goto :goto_1

    .line 588
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/BackgroundDexOptService;->performDexOptPrimary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z

    move-result v2

    .line 587
    :goto_1
    return v2
.end method

.method private optimizePackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;JZLandroid/util/ArraySet;)I
    .locals 4
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "lowStorageThreshold"    # J
    .param p5, "isForPrimaryDex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;JZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 495
    .local p2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p6, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 496
    .local v1, "pkg":Ljava/lang/String;
    invoke-direct {p0, p3, p4}, Lcom/android/server/pm/BackgroundDexOptService;->abortIdleOptimizations(J)I

    move-result v2

    .line 497
    .local v2, "abortCode":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 499
    return v2

    .line 502
    :cond_0
    invoke-direct {p0, p1, v1, p5}, Lcom/android/server/pm/BackgroundDexOptService;->optimizePackage(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)Z

    move-result v3

    .line 503
    .local v3, "dexOptPerformed":Z
    if-eqz v3, :cond_1

    .line 504
    invoke-virtual {p6, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 506
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "abortCode":I
    .end local v3    # "dexOptPerformed":Z
    :cond_1
    goto :goto_0

    .line 507
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private performDexOptPrimary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
    .locals 3
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "reason"    # I
    .param p4, "dexoptFlags"    # I

    .line 594
    new-instance v0, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$-KiE2NsUP--OYmoSDt9BwEQICZw;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I

    move-result v0

    .line 596
    .local v0, "result":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private performDexOptSecondary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Z
    .locals 3
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "reason"    # I
    .param p4, "dexoptFlags"    # I

    .line 601
    new-instance v0, Lcom/android/server/pm/dex/DexoptOptions;

    or-int/lit8 v1, p4, 0x8

    invoke-direct {v0, p2, p3, v1}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 603
    .local v0, "dexoptOptions":Lcom/android/server/pm/dex/DexoptOptions;
    new-instance v1, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$TAsfDUuoxt92xKFoSCfpMUmY2Es;

    invoke-direct {v1, p1, v0}, Lcom/android/server/pm/-$$Lambda$BackgroundDexOptService$TAsfDUuoxt92xKFoSCfpMUmY2Es;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/dex/DexoptOptions;)V

    const/4 v2, 0x1

    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/pm/BackgroundDexOptService;->trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I

    move-result v1

    .line 607
    .local v1, "result":I
    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private postBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V
    .locals 12
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 284
    .local v0, "lowBatteryThreshold":I
    invoke-direct {p0, p0}, Lcom/android/server/pm/BackgroundDexOptService;->getLowStorageThreshold(Landroid/content/Context;)J

    move-result-wide v1

    .line 286
    .local v1, "lowThreshold":J
    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 288
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 289
    .local v3, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 290
    .local v6, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    iget-object v7, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 296
    goto :goto_1

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/BackgroundDexOptService;->getBatteryLevel()I

    move-result v7

    if-ge v7, v0, :cond_2

    .line 300
    goto :goto_1

    .line 302
    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v7

    .line 303
    .local v7, "usableSpace":J
    cmp-long v9, v7, v1

    const-string v10, "BackgroundDexOptService"

    if-gez v9, :cond_3

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Aborting background dex opt job due to low storage: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    goto :goto_1

    .line 310
    :cond_3
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v9, :cond_4

    .line 311
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_4
    new-instance v9, Lcom/android/server/pm/dex/DexoptOptions;

    const/4 v10, 0x4

    const/4 v11, 0x1

    invoke-direct {v9, v6, v11, v10}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2, v9}, Lcom/android/server/pm/PackageManagerService;->performDexOptWithStatus(Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v9

    .line 326
    .local v9, "result":I
    if-ne v9, v11, :cond_5

    .line 327
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "usableSpace":J
    .end local v9    # "result":I
    :cond_5
    goto :goto_0

    .line 330
    :cond_6
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPinService(Landroid/util/ArraySet;)V

    .line 331
    invoke-direct {p0, v3}, Lcom/android/server/pm/BackgroundDexOptService;->notifyPackagesUpdated(Landroid/util/ArraySet;)V

    .line 333
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 334
    return-void
.end method

.method private static postScheduleRunnable()V
    .locals 5

    .line 174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 175
    .local v0, "hour":I
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    rsub-int/lit8 v1, v0, 0x1b

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v0, 0x3

    :goto_0
    int-to-long v1, v1

    const-wide/32 v3, 0x36ee80

    mul-long/2addr v1, v3

    .line 176
    .local v1, "when":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "needReSchedule when: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackgroundDexOptService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/BackgroundDexOptService;->mScheduleIdleJobRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/BackgroundDexOptService;->mScheduleIdleJobRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    return-void
.end method

.method private reconcileSecondaryDexFiles(Lcom/android/server/pm/dex/DexManager;)I
    .locals 3
    .param p1, "dm"    # Lcom/android/server/pm/dex/DexManager;

    .line 555
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexManager;->getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 556
    .local v1, "p":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    const/4 v0, 0x2

    return v0

    .line 559
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/pm/dex/DexManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 560
    .end local v1    # "p":Ljava/lang/String;
    goto :goto_0

    .line 561
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static removePackagesUpdatedListener(Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/android/server/pm/BackgroundDexOptService$PackagesUpdatedListener;

    .line 766
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sPackagesUpdatedListeners:Ljava/util/List;

    monitor-enter v0

    .line 767
    :try_start_0
    sget-object v1, Lcom/android/server/pm/BackgroundDexOptService;->sPackagesUpdatedListeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 768
    monitor-exit v0

    .line 769
    return-void

    .line 768
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .locals 7
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 340
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->scheduleIdleJob()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    return v0

    .line 344
    :cond_0
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$3;

    const-string v3, "BackgroundDexOptService_IdleOptimization"

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/BackgroundDexOptService$3;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/app/job/JobParameters;)V

    .line 362
    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$3;->start()V

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public static runIdleOptimizationsNow(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Ljava/util/List;)Z
    .locals 4
    .param p0, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 679
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService;

    invoke-direct {v0}, Lcom/android/server/pm/BackgroundDexOptService;-><init>()V

    .line 681
    .local v0, "bdos":Lcom/android/server/pm/BackgroundDexOptService;
    if-nez p2, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object v1

    .local v1, "packagesToOptimize":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 684
    .end local v1    # "packagesToOptimize":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 686
    .restart local v1    # "packagesToOptimize":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/pm/BackgroundDexOptService;->idleOptimization(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I

    move-result v2

    .line 687
    .local v2, "result":I
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
    .locals 7
    .param p1, "jobParams"    # Landroid/app/job/JobParameters;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobParameters;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 265
    .local p3, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mExitPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x0

    return v0

    .line 269
    :cond_0
    new-instance v0, Lcom/android/server/pm/BackgroundDexOptService$2;

    const-string v3, "BackgroundDexOptService_PostBootUpdate"

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/BackgroundDexOptService$2;-><init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)V

    .line 275
    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundDexOptService$2;->start()V

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 119
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->isBackgroundDexoptDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 127
    .local v0, "js":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0x321

    sget-object v3, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 128
    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 129
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 136
    sget-boolean v1, Lcom/android/server/pm/BackgroundDexOptService;->DEBUG:Z

    if-nez v1, :cond_1

    .line 137
    sput-object p0, Lcom/android/server/pm/BackgroundDexOptService;->mContext:Landroid/content/Context;

    .line 138
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->scheduleIdleJob()Z

    goto :goto_0

    .line 142
    :cond_1
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0x320

    sget-object v3, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 143
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    .line 145
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 147
    const-string v1, "BackgroundDexOptService"

    const-string v2, "Jobs scheduled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void
.end method

.method private static scheduleIdleJob()Z
    .locals 8

    .line 183
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->isBackgroundDexoptDisabled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BackgroundDexOptService"

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "bg-dexopt is disabled ..."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v1

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleIdleJob mIdleJobScheduled "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/pm/BackgroundDexOptService;->mIdleJobScheduled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-boolean v0, Lcom/android/server/pm/BackgroundDexOptService;->mIdleJobScheduled:Z

    const/16 v3, 0x320

    const-string/jumbo v4, "jobscheduler"

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 189
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->needReSchedule()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const-string v0, "Cancel the old job and rescheduled ..."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 192
    .local v0, "js":Landroid/app/job/JobScheduler;
    invoke-virtual {v0, v3}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 194
    sput-boolean v1, Lcom/android/server/pm/BackgroundDexOptService;->mIdleJobScheduled:Z

    .line 196
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->postScheduleRunnable()V

    .line 197
    .end local v0    # "js":Landroid/app/job/JobScheduler;
    goto :goto_0

    .line 198
    :cond_1
    return v5

    .line 201
    :cond_2
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->needReSchedule()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->postScheduleRunnable()V

    goto :goto_0

    .line 204
    :cond_3
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 207
    .restart local v0    # "js":Landroid/app/job/JobScheduler;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    sget-object v6, Lcom/android/server/pm/BackgroundDexOptService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v4, v3, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 208
    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 209
    invoke-virtual {v3, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    sget-wide v6, Lcom/android/server/pm/BackgroundDexOptService;->IDLE_OPTIMIZATION_PERIOD:J

    .line 210
    invoke-virtual {v3, v6, v7}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 207
    invoke-virtual {v0, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 212
    sput-boolean v5, Lcom/android/server/pm/BackgroundDexOptService;->mIdleJobScheduled:Z

    .line 213
    const-string v3, "Jobs scheduled ..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v0    # "js":Landroid/app/job/JobScheduler;
    :goto_0
    return v1
.end method

.method private shouldDowngrade(J)Z
    .locals 3
    .param p1, "lowStorageThresholdForDowngrade"    # J

    .line 662
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 663
    .local v0, "usableSpace":J
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 664
    const/4 v2, 0x1

    return v2

    .line 667
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private supportSecondaryDex()Z
    .locals 2

    .line 550
    const-string v0, "dalvik.vm.dexopt.secondary"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private trackPerformDexOpt(Ljava/lang/String;ZLjava/util/function/Supplier;)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isForPrimaryDex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 621
    .local p3, "performDexOptWrapper":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesPrimary:Landroid/util/ArraySet;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/pm/BackgroundDexOptService;->sFailedPackageNamesSecondary:Landroid/util/ArraySet;

    .line 622
    .local v0, "sFailedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    monitor-enter v0

    .line 623
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 627
    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 628
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 629
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 630
    .local v1, "result":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 631
    monitor-enter v0

    .line 632
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 633
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 637
    invoke-static {p1}, Lcom/android/server/pm/OnePlusDexOptInjector;->notifyPrimaryDexDone(Ljava/lang/String;)V

    goto :goto_1

    .line 633
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 641
    :cond_2
    :goto_1
    return v1

    .line 628
    .end local v1    # "result":I
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 692
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    const-string v1, "BackgroundDexOptService"

    if-eqz v0, :cond_0

    .line 693
    const-string/jumbo v0, "onStartJob"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_0
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 700
    .local v0, "pm":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 701
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v2, :cond_1

    .line 702
    const-string v2, "Low storage, skipping this run"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_1
    return v3

    .line 707
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object v2

    .line 708
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 709
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v4, :cond_3

    .line 710
    const-string v4, "No packages to optimize"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_3
    return v3

    .line 716
    :cond_4
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const/16 v3, 0x321

    if-ne v1, v3, :cond_5

    .line 717
    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->runPostBootUpdate(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 719
    .end local v1    # "result":Z
    :cond_5
    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z

    move-result v1

    .line 722
    .restart local v1    # "result":Z
    :goto_0
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 727
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v0, :cond_0

    .line 728
    const-string v0, "BackgroundDexOptService"

    const-string/jumbo v1, "onStopJob"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v1, 0x321

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 732
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortPostBootUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 736
    const/4 v0, 0x0

    return v0

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService;->mAbortIdleOptimization:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 742
    return v2
.end method
