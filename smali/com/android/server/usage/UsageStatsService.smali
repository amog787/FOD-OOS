.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsService$LocalService;,
        Lcom/android/server/usage/UsageStatsService$BinderService;,
        Lcom/android/server/usage/UsageStatsService$H;,
        Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;,
        Lcom/android/server/usage/UsageStatsService$ActivityData;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z

.field private static final ENABLE_KERNEL_UPDATES:Z = true

.field public static final ENABLE_TIME_CHANGE_CORRECTION:Z

.field private static final FLUSH_INTERVAL:J = 0x124f80L

.field private static final KERNEL_COUNTER_FILE:Ljava/io/File;

.field static final MSG_FLUSH_TO_DISK:I = 0x1

.field static final MSG_REMOVE_USER:I = 0x2

.field static final MSG_REPORT_EVENT:I = 0x0

.field static final MSG_REPORT_EVENT_TO_ALL_USERID:I = 0x4

.field static final MSG_UID_STATE_CHANGED:I = 0x3

.field static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final TEN_SECONDS:J = 0x2710L

.field private static final TIME_CHANGE_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TOKEN_DELIMITER:C = '/'

.field private static final TWENTY_MINUTES:J = 0x124f80L


# instance fields
.field mAppOps:Landroid/app/AppOpsManager;

.field mAppStandby:Lcom/android/server/usage/AppStandbyController;

.field mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field mRealTimeSnapshot:J

.field private mStandbyChangeListener:Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

.field mSystemTimeSnapshot:J

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUidToKernelCounter:Landroid/util/SparseIntArray;

.field final mUsageReporters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mUsageSource:I

.field private mUsageStatsDir:Ljava/io/File;

.field mUserManager:Landroid/os/UserManager;

.field private final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UserUsageStatsService;",
            ">;"
        }
    .end annotation
.end field

.field final mVisibleActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UsageStatsService$ActivityData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    nop

    .line 102
    const-string/jumbo v0, "persist.debug.time_correction"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    .line 111
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG:Z

    .line 122
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_procstat/set"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 188
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 145
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    .line 169
    new-instance v0, Lcom/android/server/usage/UsageStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 319
    new-instance v0, Lcom/android/server/usage/UsageStatsService$3;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$3;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    .line 189
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;

    .line 97
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;

    .line 97
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/usage/UsageStatsService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;

    .line 97
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;

    .line 97
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$700()Ljava/io/File;
    .locals 1

    .line 97
    sget-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;

    .line 97
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/usage/UsageStatsService;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldObfuscateInstantAppsForCaller(II)Z

    move-result v0

    return v0
.end method

.method private buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 735
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkAndGetTimeLocked()J
    .locals 12

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 420
    .local v0, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 421
    .local v2, "actualRealtime":J
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v4, v6

    .line 422
    .local v4, "expectedSystemTime":J
    sub-long v6, v0, v4

    .line 423
    .local v6, "diffSystemTime":J
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x7d0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    sget-boolean v8, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-eqz v8, :cond_1

    .line 426
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Time changed in UsageStats by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long v9, v6, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UsageStatsService"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 428
    .local v8, "userCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 429
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/usage/UserUsageStatsService;

    .line 430
    .local v10, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v10, v4, v5, v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJ)V

    .line 428
    .end local v10    # "service":Lcom/android/server/usage/UserUsageStatsService;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 432
    .end local v9    # "i":I
    :cond_0
    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 433
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 435
    .end local v8    # "userCount":I
    :cond_1
    return-wide v0
.end method

.method private cleanUpRemovedUsersLocked()V
    .locals 9

    .line 364
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 365
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 369
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 370
    .local v1, "toDelete":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "fileNames":[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 373
    return-void

    .line 376
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 378
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 379
    .local v3, "userCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 380
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 381
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 379
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 384
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 385
    .local v4, "deleteCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 386
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 385
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 388
    .end local v5    # "i":I
    :cond_2
    return-void

    .line 366
    .end local v1    # "toDelete":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "fileNames":[Ljava/lang/String;
    .end local v3    # "userCount":I
    .end local v4    # "deleteCount":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There can\'t be no users"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .locals 4
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 443
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 444
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .locals 4
    .param p0, "f"    # Ljava/io/File;

    .line 391
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 392
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 393
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 394
    .local v3, "subFile":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 393
    .end local v3    # "subFile":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_1
    return-void
.end method

.method private flushToDiskLocked()V
    .locals 5

    .line 742
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 743
    .local v0, "userCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 744
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserUsageStatsService;

    .line 745
    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v2}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 746
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/usage/AppStandbyController;->flushToDisk(I)V

    .line 743
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 748
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController;->flushDurationsToDisk()V

    .line 750
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 751
    return-void
.end method

.method private getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_0

    .line 290
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method private getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "currentTimeMillis"    # J

    .line 405
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    .line 406
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_0

    .line 407
    new-instance v1, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1, v3, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    move-object v0, v1

    .line 409
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->init(J)V

    .line 410
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    :cond_0
    return-object v0
.end method

.method private readUsageSourceSetting()V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_time_limit_usage_source"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    .line 299
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldObfuscateInstantAppsForCaller(II)Z
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 360
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->canAccessInstantApps(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static validRange(JJJ)Z
    .locals 1
    .param p0, "currentTime"    # J
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .line 730
    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    cmp-long v0, p2, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 757
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 758
    :try_start_0
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 760
    .local v1, "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v2, 0x0

    .line 761
    .local v2, "checkin":Z
    const/4 v3, 0x0

    .line 762
    .local v3, "compact":Z
    const/4 v4, 0x0

    .line 764
    .local v4, "pkg":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz p1, :cond_f

    .line 765
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_f

    .line 766
    aget-object v7, p1, v6

    .line 767
    .local v7, "arg":Ljava/lang/String;
    const-string v8, "--checkin"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 768
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 769
    :cond_0
    const-string v8, "-c"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 770
    const/4 v3, 0x1

    goto/16 :goto_6

    .line 771
    :cond_1
    const-string v8, "flush"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 772
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 773
    const-string v5, "Flushed stats to disk"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    monitor-exit v0

    return-void

    .line 775
    :cond_2
    const-string v8, "is-app-standby-enabled"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 776
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    iget-boolean v5, v5, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 777
    monitor-exit v0

    return-void

    .line 778
    :cond_3
    const-string v8, "apptimelimit"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 779
    add-int/lit8 v8, v6, 0x1

    array-length v9, p1

    if-lt v8, v9, :cond_4

    .line 780
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v8, v5, p2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_1

    .line 782
    :cond_4
    add-int/lit8 v5, v6, 0x1

    array-length v8, p1

    .line 783
    invoke-static {p1, v5, v8}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 784
    .local v5, "remainingArgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v8, v5, p2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 786
    .end local v5    # "remainingArgs":[Ljava/lang/String;
    :goto_1
    monitor-exit v0

    return-void

    .line 787
    :cond_5
    const-string v8, "file"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 788
    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v9, "  "

    invoke-direct {v8, p2, v9}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 789
    .local v8, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    add-int/lit8 v9, v6, 0x1

    array-length v10, p1

    if-lt v9, v10, :cond_7

    .line 791
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 792
    .local v9, "numUsers":I
    const/4 v10, 0x0

    .local v10, "user":I
    :goto_2
    if-ge v10, v9, :cond_6

    .line 793
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "user="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 795
    iget-object v11, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v11, v8, v5}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 796
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 798
    .end local v9    # "numUsers":I
    .end local v10    # "user":I
    :cond_6
    goto :goto_3

    .line 801
    :cond_7
    add-int/lit8 v5, v6, 0x1

    :try_start_1
    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    .local v5, "user":I
    nop

    .line 806
    :try_start_2
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_8

    .line 807
    const-string/jumbo v9, "the specified user does not exist."

    invoke-virtual {v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 808
    monitor-exit v0

    return-void

    .line 810
    :cond_8
    add-int/lit8 v9, v6, 0x2

    array-length v10, p1

    invoke-static {p1, v9, v10}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 813
    .local v9, "remainingArgs":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v10, v8, v9}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 815
    .end local v5    # "user":I
    .end local v9    # "remainingArgs":[Ljava/lang/String;
    :goto_3
    monitor-exit v0

    return-void

    .line 802
    :catch_0
    move-exception v5

    .line 803
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string v9, "invalid user specified."

    invoke-virtual {v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 804
    monitor-exit v0

    return-void

    .line 816
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    .end local v8    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_9
    const-string v8, "database-info"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 817
    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v8, "  "

    invoke-direct {v5, p2, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 818
    .local v5, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    add-int/lit8 v8, v6, 0x1

    array-length v9, p1

    if-lt v8, v9, :cond_b

    .line 820
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 821
    .local v8, "numUsers":I
    const/4 v9, 0x0

    .local v9, "user":I
    :goto_4
    if-ge v9, v8, :cond_a

    .line 822
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "user="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 824
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v10, v5}, Lcom/android/server/usage/UserUsageStatsService;->dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 825
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 821
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 827
    .end local v8    # "numUsers":I
    .end local v9    # "user":I
    :cond_a
    goto :goto_5

    .line 830
    :cond_b
    add-int/lit8 v8, v6, 0x1

    :try_start_3
    aget-object v8, p1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 834
    .local v8, "user":I
    nop

    .line 835
    :try_start_4
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_c

    .line 836
    const-string/jumbo v9, "the specified user does not exist."

    invoke-virtual {v5, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 837
    monitor-exit v0

    return-void

    .line 840
    :cond_c
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v9, v5}, Lcom/android/server/usage/UserUsageStatsService;->dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 842
    .end local v8    # "user":I
    :goto_5
    monitor-exit v0

    return-void

    .line 831
    :catch_1
    move-exception v8

    .line 832
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const-string v9, "invalid user specified."

    invoke-virtual {v5, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 833
    monitor-exit v0

    return-void

    .line 843
    .end local v5    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :cond_d
    if-eqz v7, :cond_e

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 845
    move-object v4, v7

    .line 846
    goto :goto_7

    .line 765
    .end local v7    # "arg":Ljava/lang/String;
    :cond_e
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 851
    .end local v6    # "i":I
    :cond_f
    :goto_7
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 852
    .local v6, "userCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8
    if-ge v7, v6, :cond_11

    .line 853
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 854
    .local v8, "userId":I
    const-string/jumbo v9, "user"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 855
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 856
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 857
    if-eqz v2, :cond_10

    .line 858
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v9, v1}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_9

    .line 860
    :cond_10
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v9, v1, v4, v3}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Z)V

    .line 861
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 863
    :goto_9
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v9, v1, v8, v4}, Lcom/android/server/usage/AppStandbyController;->dumpUser(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;)V

    .line 864
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 852
    nop

    .end local v8    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 867
    .end local v7    # "i":I
    :cond_11
    if-nez v4, :cond_12

    .line 868
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 869
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/usage/AppStandbyController;->dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 872
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 873
    const-string v7, "Usage Source"

    iget v8, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    invoke-static {v8}, Landroid/app/usage/UsageStatsManager;->usageSourceToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 874
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 876
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v7, v5, p2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 877
    .end local v1    # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v2    # "checkin":Z
    .end local v3    # "compact":Z
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "userCount":I
    monitor-exit v0

    .line 878
    return-void

    .line 877
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method flushToDisk()V
    .locals 5

    .line 603
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_0
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    const/16 v2, 0x19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 610
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 611
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 612
    .end local v1    # "event":Landroid/app/usage/UsageEvents$Event;
    monitor-exit v0

    .line 613
    return-void

    .line 612
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .line 264
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->onBootPhase(I)V

    .line 265
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 267
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 269
    nop

    .line 270
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 272
    sget-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing procfs interface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    .line 286
    :cond_1
    return-void
.end method

.method public onNewUpdate(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 356
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    .line 357
    return-void
.end method

.method public onStart()V
    .locals 9

    .line 193
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 194
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    .line 195
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 196
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 197
    new-instance v0, Lcom/android/server/usage/UsageStatsService$H;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 199
    new-instance v0, Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/AppStandbyController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 201
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController;

    new-instance v1, Lcom/android/server/usage/UsageStatsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/usage/UsageStatsService$2;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 233
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;-><init>(Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 235
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 236
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    .local v0, "systemDataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "usagestats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    .line 238
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 239
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 245
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v2}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 249
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 250
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V

    .line 251
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 256
    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v4, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-direct {v4, p0, v2}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 257
    new-instance v3, Lcom/android/server/usage/UsageStatsService$BinderService;

    invoke-direct {v3, p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    const-string/jumbo v2, "usagestats"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usage/UsageStatsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 259
    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    .line 260
    return-void

    .line 251
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 240
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Usage stats directory does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    .line 241
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onStatsReloaded()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 352
    return-void
.end method

.method public onStatsUpdated()V
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x124f80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 347
    return-void
.end method

.method onUserRemoved(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 619
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_0
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and all data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 622
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController;->onUserRemoved(I)V

    .line 623
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppTimeLimitController;->onUserRemoved(I)V

    .line 624
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V

    .line 625
    monitor-exit v0

    .line 626
    return-void

    .line 625
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method prepareForPossibleShutdown()V
    .locals 4

    .line 470
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0x1a

    invoke-direct {v0, v3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 471
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v1, "android"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 472
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 473
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 474
    return-void
.end method

.method queryConfigurationStats(IIJJ)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v1

    .line 668
    .local v1, "timeNow":J
    move-wide v3, v1

    move-wide v5, p3

    move-wide v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 669
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 672
    :cond_0
    nop

    .line 673
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v3

    .line 674
    .local v3, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryConfigurationStats(IJJ)Ljava/util/List;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 675
    .end local v1    # "timeNow":J
    .end local v3    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryEventStats(IIJJ)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v1

    .line 685
    .local v1, "timeNow":J
    move-wide v3, v1

    move-wide v5, p3

    move-wide v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 686
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 689
    :cond_0
    nop

    .line 690
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v3

    .line 691
    .local v3, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryEventStats(IJJ)Ljava/util/List;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 692
    .end local v1    # "timeNow":J
    .end local v3    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryEvents(IJJZ)Landroid/app/usage/UsageEvents;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "shouldObfuscateInstantApps"    # Z

    .line 700
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v1

    .line 702
    .local v1, "timeNow":J
    move-wide v3, v1

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 703
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 706
    :cond_0
    nop

    .line 707
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v3

    .line 708
    .local v3, "service":Lcom/android/server/usage/UserUsageStatsService;
    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJZ)Landroid/app/usage/UsageEvents;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 709
    .end local v1    # "timeNow":J
    .end local v3    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .locals 13
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "includeTaskRoot"    # Z

    .line 717
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 718
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v3

    .line 719
    .local v3, "timeNow":J
    move-wide v5, v3

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-static/range {v5 .. v10}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    const/4 v0, 0x0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 723
    :cond_0
    nop

    .line 724
    move v5, p1

    :try_start_1
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v6

    .line 725
    .local v6, "service":Lcom/android/server/usage/UserUsageStatsService;
    move-wide v7, p2

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/usage/UserUsageStatsService;->queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 726
    .end local v3    # "timeNow":J
    .end local v6    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v0

    move v5, p1

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method queryUsageStats(IIJJZ)Ljava/util/List;
    .locals 13
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .param p7, "obfuscateInstantApps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJZ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 633
    move-object v1, p0

    move v2, p1

    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 634
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v4

    .line 635
    .local v4, "timeNow":J
    move-wide v6, v4

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-static/range {v6 .. v11}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 636
    monitor-exit v3

    return-object v6

    .line 639
    :cond_0
    nop

    .line 640
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v7

    .line 641
    .local v7, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v8, p2

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/usage/UserUsageStatsService;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    .line 642
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez v0, :cond_1

    .line 643
    monitor-exit v3

    return-object v6

    .line 648
    :cond_1
    if-eqz p7, :cond_3

    .line 649
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_3

    .line 650
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    .line 651
    .local v8, "stats":Landroid/app/usage/UsageStats;
    iget-object v9, v1, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v10, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 652
    invoke-virtual {v8}, Landroid/app/usage/UsageStats;->getObfuscatedForInstantApp()Landroid/app/usage/UsageStats;

    move-result-object v9

    invoke-interface {v0, v6, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 649
    .end local v8    # "stats":Landroid/app/usage/UsageStats;
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 657
    .end local v6    # "i":I
    :cond_3
    monitor-exit v3

    return-object v0

    .line 658
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v4    # "timeNow":J
    .end local v7    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .locals 11
    .param p1, "callingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "packages"    # [Ljava/lang/String;
    .param p4, "timeLimitMs"    # J
    .param p6, "timeUsedMs"    # J
    .param p8, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p9, "userId"    # I

    .line 1644
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppTimeLimitController;->addAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V

    .line 1646
    return-void
.end method

.method registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "packages"    # [Ljava/lang/String;
    .param p4, "timeLimitMs"    # J
    .param p6, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p7, "userId"    # I

    .line 1622
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppTimeLimitController;->addAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V

    .line 1625
    return-void
.end method

.method registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 12
    .param p1, "callingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "observed"    # [Ljava/lang/String;
    .param p4, "timeLimitMs"    # J
    .param p6, "sessionThresholdTime"    # J
    .param p8, "limitReachedCallbackIntent"    # Landroid/app/PendingIntent;
    .param p9, "sessionEndCallbackIntent"    # Landroid/app/PendingIntent;
    .param p10, "userId"    # I

    .line 1634
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/usage/AppTimeLimitController;->addUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 1636
    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .locals 17
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "userId"    # I

    .line 480
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    iget-object v4, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 481
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v5

    .line 482
    .local v5, "timeNow":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 483
    .local v7, "elapsedRealtime":J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 485
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v10, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 486
    invoke-virtual {v0, v3, v10}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget v0, v2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    or-int/2addr v0, v9

    iput v0, v2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 490
    :cond_0
    iget v0, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v10, 0x2

    if-eq v0, v9, :cond_a

    if-eq v0, v10, :cond_8

    const/16 v9, 0x17

    if-eq v0, v9, :cond_2

    const/16 v11, 0x18

    if-eq v0, v11, :cond_1

    goto/16 :goto_6

    .line 526
    :cond_1
    iput v9, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 529
    :cond_2
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v9, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 530
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UsageStatsService$ActivityData;

    move-object v9, v0

    .line 531
    .local v9, "prevData":Lcom/android/server/usage/UsageStatsService$ActivityData;
    if-nez v9, :cond_3

    .line 533
    monitor-exit v4

    return-void

    .line 537
    :cond_3
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 538
    :try_start_1
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    iget v12, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    move-object v12, v0

    .line 539
    .local v12, "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 540
    if-eqz v12, :cond_5

    .line 541
    :try_start_2
    monitor-enter v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 542
    :try_start_3
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v0

    move v11, v0

    .line 544
    .local v11, "size":I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_0
    if-ge v13, v11, :cond_4

    .line 545
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v14, v0

    .line 547
    .local v14, "token":Ljava/lang/String;
    :try_start_4
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v15, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 548
    invoke-direct {v1, v15, v14}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 547
    invoke-virtual {v0, v15, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 552
    move/from16 v16, v11

    goto :goto_1

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v15, "UsageStatsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v11

    .end local v11    # "size":I
    .local v16, "size":I
    const-string v11, "Failed to stop usage for during reporter death: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v14    # "token":Ljava/lang/String;
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v16

    const/4 v10, 0x2

    goto :goto_0

    .end local v16    # "size":I
    .restart local v11    # "size":I
    :cond_4
    move/from16 v16, v11

    .line 554
    .end local v11    # "size":I
    .end local v13    # "i":I
    monitor-exit v12

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    .end local p1    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local p2    # "userId":I
    :try_start_6
    throw v0

    .line 556
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    .restart local p1    # "event":Landroid/app/usage/UsageEvents$Event;
    .restart local p2    # "userId":I
    :cond_5
    :goto_2
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 558
    invoke-static {v9}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$400(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 559
    invoke-static {v9}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$500(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 562
    :cond_6
    :try_start_7
    iget v0, v1, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    const/4 v10, 0x2

    if-eq v0, v10, :cond_7

    .line 568
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v10, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v0, v10, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V

    goto :goto_3

    .line 564
    :cond_7
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v10, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v10, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 565
    nop

    .line 573
    :goto_3
    goto/16 :goto_6

    .line 571
    :catch_1
    move-exception v0

    .line 572
    .restart local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :try_start_8
    const-string v10, "UsageStatsService"

    const-string v11, "Failed to note usage stop"

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_6

    .line 539
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v12    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    .end local p1    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local p2    # "userId":I
    :try_start_a
    throw v0

    .line 511
    .end local v9    # "prevData":Lcom/android/server/usage/UsageStatsService$ActivityData;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    .restart local p1    # "event":Landroid/app/usage/UsageEvents$Event;
    .restart local p2    # "userId":I
    :cond_8
    iget-object v0, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 513
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v9, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UsageStatsService$ActivityData;

    .line 514
    .local v0, "prevData":Lcom/android/server/usage/UsageStatsService$ActivityData;
    if-nez v0, :cond_9

    .line 515
    const-string v9, "UsageStatsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected activity event reported! ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " event : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " instanceId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 519
    :cond_9
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$400(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 520
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService$ActivityData;->access$500(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 522
    .end local v0    # "prevData":Lcom/android/server/usage/UsageStatsService$ActivityData;
    :goto_4
    goto :goto_6

    .line 493
    :cond_a
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v9, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_6

    .line 494
    :cond_b
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v9, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    new-instance v10, Lcom/android/server/usage/UsageStatsService$ActivityData;

    iget-object v11, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v12, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 497
    :try_start_b
    iget v0, v1, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    const/4 v9, 0x2

    if-eq v0, v9, :cond_c

    .line 503
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;I)V

    goto :goto_5

    .line 499
    :cond_c
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v9, v3}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 500
    nop

    .line 508
    :goto_5
    goto :goto_6

    .line 506
    :catch_2
    move-exception v0

    .line 507
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_c
    const-string v9, "UsageStatsService"

    const-string v10, "Failed to note usage start"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    nop

    .line 577
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_d
    :goto_6
    nop

    .line 578
    invoke-direct {v1, v3, v5, v6}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    .line 579
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v0, v2}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 581
    iget-object v9, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v9, v2, v7, v8, v3}, Lcom/android/server/usage/AppStandbyController;->reportEvent(Landroid/app/usage/UsageEvents$Event;JI)V

    .line 582
    .end local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .end local v5    # "timeNow":J
    .end local v7    # "elapsedRealtime":J
    monitor-exit v4

    .line 583
    return-void

    .line 582
    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0
.end method

.method reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V
    .locals 5
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 590
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 592
    .local v1, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 593
    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3, p1}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    .line 594
    .local v3, "copy":Landroid/app/usage/UsageEvents$Event;
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    .line 592
    .end local v3    # "copy":Landroid/app/usage/UsageEvents$Event;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 596
    .end local v1    # "userCount":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 597
    return-void

    .line 596
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method shutdown()V
    .locals 5

    .line 450
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    const/16 v2, 0x1a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 453
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v2, "android"

    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 455
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 456
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 457
    .end local v1    # "event":Landroid/app/usage/UsageEvents$Event;
    monitor-exit v0

    .line 458
    return-void

    .line 457
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregisterAppUsageLimitObserver(III)V
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "userId"    # I

    .line 1649
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeAppUsageLimitObserver(III)V

    .line 1650
    return-void
.end method

.method unregisterAppUsageObserver(III)V
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "userId"    # I

    .line 1628
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeAppUsageObserver(III)V

    .line 1629
    return-void
.end method

.method unregisterUsageSessionObserver(III)V
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "sessionObserverId"    # I
    .param p3, "userId"    # I

    .line 1639
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeUsageSessionObserver(III)V

    .line 1640
    return-void
.end method
