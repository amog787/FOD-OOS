.class final Lcom/android/server/appop/HistoricalRegistry;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;,
        Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;,
        Lcom/android/server/appop/HistoricalRegistry$Persistence;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_COMPRESSION_STEP:J = 0xaL

.field private static final DEFAULT_MODE:I = 0x1

.field private static final DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

.field private static final HISTORY_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final KEEP_WTF_LOG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_WRITE_PENDING_HISTORY:I = 0x1

.field private static final PARAMETER_ASSIGNMENT:Ljava/lang/String; = "="

.field private static final PARAMETER_DELIMITER:Ljava/lang/String; = ","

.field private static final PROPERTY_PERMISSIONS_HUB_ENABLED:Ljava/lang/String; = "permissions_hub_enabled"


# instance fields
.field private mBaseSnapshotInterval:J

.field private mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

.field private final mInMemoryLock:Ljava/lang/Object;

.field private mIntervalCompressionMultiplier:J

.field private mMode:I

.field private mNextPersistDueTimeMillis:J

.field private final mOnDiskLock:Ljava/lang/Object;

.field private mPendingHistoryOffsetMillis:J

.field private mPendingWrites:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 131
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/appop/HistoricalRegistry;->KEEP_WTF_LOG:Z

    .line 133
    const-class v0, Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 154
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/appop/HistoricalRegistry;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/appop/HistoricalRegistry;

    .line 203
    iget-object v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Ljava/lang/Object;)V

    .line 204
    iget v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 205
    iget-wide v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 206
    iget-wide v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 207
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "lock"    # Ljava/lang/Object;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 171
    sget-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 179
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 199
    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/appop/HistoricalRegistry;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/HistoricalRegistry;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # Ljava/io/File;

    .line 129
    invoke-static {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    return-void
.end method

.method private clearHistoryOnDiskDLocked()V
    .locals 3

    .line 622
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 623
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 626
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 627
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->clearHistoryDLocked()V

    .line 629
    return-void

    .line 627
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 11
    .param p1, "now"    # J

    .line 632
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 633
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v3, p1

    .line 634
    .local v3, "remainingTimeMillis":J
    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 638
    sub-long v5, v3, v5

    iput-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 640
    :cond_0
    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v5, v3

    .line 641
    .local v5, "elapsedTimeMillis":J
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setEndTime(J)V

    .line 642
    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object v0

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 650
    iget-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 651
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object v0

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v7, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 655
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginTime(J)V

    .line 657
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 658
    .local v7, "overdueTimeMillis":J
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 659
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {p0, v0}, Lcom/android/server/appop/HistoricalRegistry;->schedulePersistHistoricalOpsMLocked(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 662
    .end local v3    # "remainingTimeMillis":J
    .end local v5    # "elapsedTimeMillis":J
    .end local v7    # "overdueTimeMillis":J
    :cond_3
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 663
    iget-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 667
    return-object v0
.end method

.method private static isApiEnabled()Z
    .locals 3

    .line 741
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 742
    const-string/jumbo v0, "privacy"

    const-string/jumbo v1, "permissions_hub_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 741
    :cond_1
    return v2
.end method

.method private isPersistenceInitializedMLocked()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V
    .locals 4
    .param p0, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "nowMillis"    # J

    .line 722
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 723
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 722
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 724
    return-void
.end method

.method private persistPendingHistory(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 694
    .local p1, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 696
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    monitor-exit v0

    return-void

    .line 699
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 702
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 703
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 704
    .local v3, "current":Landroid/app/AppOpsManager$HistoricalOps;
    if-lez v2, :cond_1

    .line 705
    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 706
    .local v4, "previous":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 702
    .end local v3    # "current":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "previous":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 709
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v2, p1}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 710
    .end local v1    # "opCount":I
    monitor-exit v0

    .line 711
    return-void

    .line 710
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private pruneFutureOps(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 727
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 728
    .local v0, "opCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 729
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 730
    .local v2, "op":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 731
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 732
    :cond_0
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 733
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    .line 734
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v3, v5

    .line 735
    .local v3, "filterScale":D
    invoke-static {v2, v3, v4}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->access$200(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    .line 728
    .end local v2    # "op":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v3    # "filterScale":D
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 738
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private resampleHistoryOnDiskInMemoryDMLocked(J)V
    .locals 5
    .param p1, "offsetMillis"    # J

    .line 570
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;

    iget-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/appop/HistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 571
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetHistory(J)V

    .line 572
    return-void
.end method

.method private schedulePersistHistoricalOpsMLocked(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 2
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 714
    sget-object v0, Lcom/android/server/appop/-$$Lambda$bQMBlCyJOKKFDz59ICFPuj1hKGE;->INSTANCE:Lcom/android/server/appop/-$$Lambda$bQMBlCyJOKKFDz59ICFPuj1hKGE;

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 716
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 717
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 718
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 719
    return-void
.end method

.method private updateParametersFromSetting(Landroid/content/ContentResolver;)V
    .locals 16
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 254
    const-string v0, "appop_history_parameters"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "setting":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    .line 260
    .local v0, "modeValue":Ljava/lang/String;
    const/4 v3, 0x0

    .line 261
    .local v3, "baseSnapshotIntervalValue":Ljava/lang/String;
    const/4 v4, 0x0

    .line 262
    .local v4, "intervalMultiplierValue":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "parameters":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x0

    move-object v8, v4

    move-object v4, v3

    move-object v3, v0

    move v0, v7

    .end local v0    # "modeValue":Ljava/lang/String;
    .local v3, "modeValue":Ljava/lang/String;
    .local v4, "baseSnapshotIntervalValue":Ljava/lang/String;
    .local v8, "intervalMultiplierValue":Ljava/lang/String;
    :goto_0
    if-ge v0, v6, :cond_9

    aget-object v9, v5, v0

    .line 264
    .local v9, "parameter":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 265
    .local v10, "parts":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 266
    aget-object v11, v10, v7

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 267
    .local v11, "key":Ljava/lang/String;
    const/4 v13, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, -0xb56339a

    const/4 v7, 0x1

    if-eq v14, v15, :cond_4

    const v15, 0x3339a3

    if-eq v14, v15, :cond_3

    const v15, 0xea4149c

    if-eq v14, v15, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v14, "baseIntervalMillis"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move v13, v7

    goto :goto_1

    :cond_3
    const-string/jumbo v14, "mode"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    const-string/jumbo v14, "intervalMultiplier"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move v13, v12

    :goto_1
    if-eqz v13, :cond_7

    if-eq v13, v7, :cond_6

    if-eq v13, v12, :cond_5

    .line 278
    sget-object v7, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown parameter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 275
    :cond_5
    aget-object v7, v10, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 276
    .end local v8    # "intervalMultiplierValue":Ljava/lang/String;
    .local v7, "intervalMultiplierValue":Ljava/lang/String;
    move-object v8, v7

    goto :goto_2

    .line 272
    .end local v7    # "intervalMultiplierValue":Ljava/lang/String;
    .restart local v8    # "intervalMultiplierValue":Ljava/lang/String;
    :cond_6
    aget-object v7, v10, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 273
    goto :goto_2

    .line 269
    :cond_7
    aget-object v7, v10, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 263
    .end local v9    # "parameter":Ljava/lang/String;
    .end local v10    # "parts":[Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x0

    goto :goto_0

    .line 283
    :cond_9
    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    if-eqz v8, :cond_a

    .line 286
    :try_start_0
    invoke-static {v3}, Landroid/app/AppOpsManager;->parseHistoricalMode(Ljava/lang/String;)I

    move-result v10

    .line 287
    .local v10, "mode":I
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 288
    .local v11, "baseSnapshotInterval":J
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 289
    .local v0, "intervalCompressionMultiplier":I
    int-to-long v13, v0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    return-void

    .line 291
    .end local v0    # "intervalCompressionMultiplier":I
    .end local v10    # "mode":I
    .end local v11    # "baseSnapshotInterval":J
    :catch_0
    move-exception v0

    .line 293
    :cond_a
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad value forappop_history_parameters="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " resetting!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method private static wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "storage"    # Ljava/io/File;

    .line 1887
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1888
    sget-boolean v0, Lcom/android/server/appop/HistoricalRegistry;->KEEP_WTF_LOG:Z

    if-eqz v0, :cond_3

    .line 1890
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "appops"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wtf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1892
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1893
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1894
    .local v1, "writer":Ljava/io/PrintWriter;
    const/16 v2, 0xa

    if-eqz p1, :cond_0

    .line 1895
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1897
    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1898
    if-eqz p2, :cond_1

    .line 1899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nfiles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 1901
    :cond_1
    const-string v2, "\nfiles: none"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1903
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1893
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "message":Ljava/lang/String;
    .end local p1    # "t":Ljava/lang/Throwable;
    .end local p2    # "storage":Ljava/io/File;
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1907
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "writer":Ljava/io/PrintWriter;
    .restart local p0    # "message":Ljava/lang/String;
    .restart local p1    # "t":Ljava/lang/Throwable;
    .restart local p2    # "storage":Ljava/io/File;
    :cond_2
    :goto_2
    goto :goto_3

    .line 1905
    :catch_0
    move-exception v0

    .line 1909
    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 3
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 555
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    sget-object v1, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    monitor-exit v0

    return-void

    .line 561
    :cond_0
    iget-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {p1, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 562
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 564
    .local v1, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 565
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    invoke-direct {p0, v1}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 567
    return-void

    .line 565
    .end local v1    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method clearHistory()V
    .locals 4

    .line 607
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 609
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 610
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 613
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistoryOnDiskDLocked()V

    .line 614
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 615
    iput-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 616
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 617
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 618
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 619
    return-void

    .line 617
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    :try_start_6
    throw v2

    .line 618
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method clearHistory(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 584
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 586
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 587
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 590
    :cond_0
    :try_start_3
    iget v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 591
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 594
    :cond_1
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    :try_start_5
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 595
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v3, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    .line 594
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 598
    .end local v2    # "index":I
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    .line 599
    invoke-virtual {v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    .line 601
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->clearHistoryDLocked(ILjava/lang/String;)V

    .line 602
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 603
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 604
    return-void

    .line 602
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_8
    throw v2

    .line 603
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 15
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "filterUid"    # I
    .param p4, "filterPackage"    # Ljava/lang/String;
    .param p5, "filterAttributionTag"    # Ljava/lang/String;
    .param p6, "filterOp"    # I
    .param p7, "filter"    # I

    .line 300
    move-object v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry;->isApiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    return-void

    .line 304
    :cond_0
    iget-object v13, v10, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v13

    .line 305
    :try_start_0
    iget-object v14, v10, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 306
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 307
    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    const-string v0, "History:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    const-string v0, "  mode="

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    iget v0, v10, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;-><init>(Lcom/android/server/appop/HistoricalRegistry;Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V

    .line 315
    .local v0, "visitor":Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 318
    .local v1, "nowMillis":J
    invoke-direct {p0, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v3

    .line 320
    .local v3, "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {v3, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V

    .line 321
    invoke-virtual {v3, v0}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 323
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 324
    sget-object v4, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Interaction before persistence initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 328
    :cond_1
    :try_start_3
    iget-object v4, v10, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v4}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v4

    .line 329
    .local v4, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v4, :cond_3

    .line 331
    iget-wide v5, v10, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v5, v1

    iget-wide v7, v10, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v5, v7

    .line 333
    .local v5, "remainingToFillBatchMillis":J
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 334
    .local v7, "opCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 335
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$HistoricalOps;

    .line 336
    .local v9, "op":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v9, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 337
    invoke-static {v9, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V

    .line 338
    invoke-virtual {v9, v0}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 334
    .end local v9    # "op":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 340
    .end local v5    # "remainingToFillBatchMillis":J
    .end local v7    # "opCount":I
    .end local v8    # "i":I
    :cond_2
    goto :goto_1

    .line 341
    :cond_3
    const-string v5, "  Empty"

    invoke-virtual {v12, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .end local v0    # "visitor":Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;
    .end local v1    # "nowMillis":J
    .end local v3    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_1
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 345
    return-void

    .line 343
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "filterUid":I
    .end local p4    # "filterPackage":Ljava/lang/String;
    .end local p5    # "filterAttributionTag":Ljava/lang/String;
    .end local p6    # "filterOp":I
    .end local p7    # "filter":I
    :try_start_6
    throw v0

    .line 344
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "prefix":Ljava/lang/String;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "filterUid":I
    .restart local p4    # "filterPackage":Ljava/lang/String;
    .restart local p5    # "filterAttributionTag":Ljava/lang/String;
    .restart local p6    # "filterOp":I
    .restart local p7    # "filter":I
    :catchall_1
    move-exception v0

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method getHistoricalOps(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJILandroid/os/RemoteCallback;)V
    .locals 34
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "opNames"    # [Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "beginTimeMillis"    # J
    .param p8, "endTimeMillis"    # J
    .param p10, "flags"    # I
    .param p11, "callback"    # Landroid/os/RemoteCallback;

    .line 383
    move-object/from16 v1, p0

    move-wide/from16 v2, p6

    move-object/from16 v4, p11

    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry;->isApiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 385
    return-void

    .line 388
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 389
    .local v5, "currentTimeMillis":J
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, p8, v7

    if-nez v0, :cond_1

    .line 390
    move-wide v7, v5

    .end local p8    # "endTimeMillis":J
    .local v7, "endTimeMillis":J
    goto :goto_0

    .line 389
    .end local v7    # "endTimeMillis":J
    .restart local p8    # "endTimeMillis":J
    :cond_1
    move-wide/from16 v7, p8

    .line 395
    .end local p8    # "endTimeMillis":J
    .restart local v7    # "endTimeMillis":J
    :goto_0
    sub-long v9, v5, v7

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 396
    .local v9, "inMemoryAdjBeginTimeMillis":J
    sub-long v13, v5, v2

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 397
    .local v14, "inMemoryAdjEndTimeMillis":J
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v9, v10, v14, v15}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object v13, v0

    .line 400
    .local v13, "result":Landroid/app/AppOpsManager$HistoricalOps;
    iget-object v11, v1, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v11

    .line 405
    :try_start_0
    iget-object v12, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    .line 406
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    if-nez v0, :cond_2

    .line 407
    :try_start_2
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v16, v13

    .end local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v16, "result":Landroid/app/AppOpsManager$HistoricalOps;
    :try_start_3
    const-string v13, "Interaction before persistence initialized"

    invoke-static {v0, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 409
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 448
    :catchall_0
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-wide/from16 v28, v14

    move-object/from16 v6, v16

    goto/16 :goto_5

    .line 424
    :catchall_1
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-wide/from16 v28, v14

    move-object/from16 v6, v16

    goto/16 :goto_4

    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_2
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object v6, v13

    move-wide/from16 v28, v14

    .end local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    goto/16 :goto_4

    .line 412
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_2
    move-object/from16 v16, v13

    .end local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :try_start_5
    invoke-direct {v1, v5, v6}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 413
    .local v0, "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    cmp-long v13, v9, v17

    if-gez v13, :cond_4

    .line 414
    :try_start_6
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v17

    cmp-long v13, v14, v17

    if-lez v13, :cond_3

    .line 416
    new-instance v13, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v13, v0}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 417
    .local v13, "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    move-object/from16 v23, v13

    move-object/from16 v4, v16

    .end local v13    # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v4, "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v23, "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    move-wide/from16 v28, v14

    .end local v14    # "inMemoryAdjEndTimeMillis":J
    .local v28, "inMemoryAdjEndTimeMillis":J
    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v18, p5

    move-wide/from16 v19, v9

    move-wide/from16 v21, v28

    :try_start_7
    invoke-virtual/range {v13 .. v22}, Landroid/app/AppOpsManager$HistoricalOps;->filter(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJ)V

    .line 419
    move-object/from16 v13, v23

    .end local v23    # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v13    # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v4, v13}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    .line 424
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v13    # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_3
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object v6, v4

    move-object/from16 v4, p11

    goto/16 :goto_4

    .line 414
    .end local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v28    # "inMemoryAdjEndTimeMillis":J
    .restart local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v14    # "inMemoryAdjEndTimeMillis":J
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_3
    move-wide/from16 v28, v14

    move-object/from16 v4, v16

    .end local v14    # "inMemoryAdjEndTimeMillis":J
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "inMemoryAdjEndTimeMillis":J
    goto :goto_1

    .line 424
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v28    # "inMemoryAdjEndTimeMillis":J
    .restart local v14    # "inMemoryAdjEndTimeMillis":J
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_4
    move-exception v0

    move-wide/from16 v28, v14

    move-object/from16 v4, p11

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object/from16 v6, v16

    .end local v14    # "inMemoryAdjEndTimeMillis":J
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "inMemoryAdjEndTimeMillis":J
    goto/16 :goto_4

    .line 413
    .end local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v28    # "inMemoryAdjEndTimeMillis":J
    .restart local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v14    # "inMemoryAdjEndTimeMillis":J
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_4
    move-wide/from16 v28, v14

    move-object/from16 v4, v16

    .line 421
    .end local v14    # "inMemoryAdjEndTimeMillis":J
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "inMemoryAdjEndTimeMillis":J
    :goto_1
    :try_start_8
    new-instance v13, Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 422
    .local v13, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v14, v1, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->clear()V

    .line 423
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v14

    cmp-long v14, v28, v14

    if-lez v14, :cond_5

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    .line 424
    .local v14, "collectOpsFromDisk":Z
    :goto_2
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 427
    if-eqz v14, :cond_6

    .line 429
    :try_start_9
    invoke-direct {v1, v13}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 431
    move-object v15, v13

    .end local v13    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v15, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-wide v12, v1, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    sub-long v12, v5, v12

    move-wide/from16 v30, v5

    .end local v5    # "currentTimeMillis":J
    .local v30, "currentTimeMillis":J
    :try_start_a
    iget-wide v5, v1, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    add-long/2addr v12, v5

    .line 433
    .local v12, "onDiskAndInMemoryOffsetMillis":J
    sub-long v5, v9, v12

    move-wide/from16 v32, v9

    const-wide/16 v9, 0x0

    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .local v32, "inMemoryAdjBeginTimeMillis":J
    :try_start_b
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    .line 435
    .local v23, "onDiskAdjBeginTimeMillis":J
    sub-long v5, v28, v12

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v25

    .line 437
    .local v25, "onDiskAdjEndTimeMillis":J
    iget-object v5, v1, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move/from16 v22, p5

    move/from16 v27, p10

    invoke-static/range {v16 .. v27}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->access$100(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_3

    .line 448
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v12    # "onDiskAndInMemoryOffsetMillis":J
    .end local v14    # "collectOpsFromDisk":Z
    .end local v15    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v23    # "onDiskAdjBeginTimeMillis":J
    .end local v25    # "onDiskAdjEndTimeMillis":J
    :catchall_5
    move-exception v0

    move-object v6, v4

    move-object/from16 v4, p11

    goto/16 :goto_5

    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local v9    # "inMemoryAdjBeginTimeMillis":J
    :catchall_6
    move-exception v0

    move-wide/from16 v32, v9

    move-object v6, v4

    move-object/from16 v4, p11

    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    goto :goto_5

    .end local v30    # "currentTimeMillis":J
    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local v5    # "currentTimeMillis":J
    .restart local v9    # "inMemoryAdjBeginTimeMillis":J
    :catchall_7
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object v6, v4

    move-object/from16 v4, p11

    .end local v5    # "currentTimeMillis":J
    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .restart local v30    # "currentTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    goto :goto_5

    .line 427
    .end local v30    # "currentTimeMillis":J
    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v5    # "currentTimeMillis":J
    .restart local v9    # "inMemoryAdjBeginTimeMillis":J
    .restart local v13    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v14    # "collectOpsFromDisk":Z
    :cond_6
    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object v15, v13

    .line 442
    .end local v5    # "currentTimeMillis":J
    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .end local v13    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v15    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v30    # "currentTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    :goto_3
    :try_start_c
    invoke-virtual {v4, v2, v3, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 445
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 446
    .local v5, "payload":Landroid/os/Bundle;
    const-string v6, "historical_ops"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 447
    move-object v6, v4

    move-object/from16 v4, p11

    .end local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v6, "result":Landroid/app/AppOpsManager$HistoricalOps;
    :try_start_d
    invoke-virtual {v4, v5}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 448
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v5    # "payload":Landroid/os/Bundle;
    .end local v14    # "collectOpsFromDisk":Z
    .end local v15    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    .line 449
    return-void

    .line 448
    .end local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_8
    move-exception v0

    move-object v6, v4

    move-object/from16 v4, p11

    .end local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_5

    .line 424
    .end local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v30    # "currentTimeMillis":J
    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v5, "currentTimeMillis":J
    .restart local v9    # "inMemoryAdjBeginTimeMillis":J
    :catchall_9
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object v6, v4

    move-object/from16 v4, p11

    .end local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v5    # "currentTimeMillis":J
    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .restart local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v30    # "currentTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    goto :goto_4

    .end local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v28    # "inMemoryAdjEndTimeMillis":J
    .end local v30    # "currentTimeMillis":J
    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local v5    # "currentTimeMillis":J
    .restart local v9    # "inMemoryAdjBeginTimeMillis":J
    .local v14, "inMemoryAdjEndTimeMillis":J
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_a
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-wide/from16 v28, v14

    move-object/from16 v6, v16

    .end local v5    # "currentTimeMillis":J
    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .end local v14    # "inMemoryAdjEndTimeMillis":J
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "inMemoryAdjEndTimeMillis":J
    .restart local v30    # "currentTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    goto :goto_4

    .end local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v28    # "inMemoryAdjEndTimeMillis":J
    .end local v30    # "currentTimeMillis":J
    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local v5    # "currentTimeMillis":J
    .restart local v9    # "inMemoryAdjBeginTimeMillis":J
    .local v13, "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v14    # "inMemoryAdjEndTimeMillis":J
    :catchall_b
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object v6, v13

    move-wide/from16 v28, v14

    .end local v5    # "currentTimeMillis":J
    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .end local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v14    # "inMemoryAdjEndTimeMillis":J
    .restart local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "inMemoryAdjEndTimeMillis":J
    .restart local v30    # "currentTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    :goto_4
    :try_start_e
    monitor-exit v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .end local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v7    # "endTimeMillis":J
    .end local v28    # "inMemoryAdjEndTimeMillis":J
    .end local v30    # "currentTimeMillis":J
    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "opNames":[Ljava/lang/String;
    .end local p5    # "filter":I
    .end local p6    # "beginTimeMillis":J
    .end local p10    # "flags":I
    .end local p11    # "callback":Landroid/os/RemoteCallback;
    :try_start_f
    throw v0

    .restart local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v7    # "endTimeMillis":J
    .restart local v28    # "inMemoryAdjEndTimeMillis":J
    .restart local v30    # "currentTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "attributionTag":Ljava/lang/String;
    .restart local p4    # "opNames":[Ljava/lang/String;
    .restart local p5    # "filter":I
    .restart local p6    # "beginTimeMillis":J
    .restart local p10    # "flags":I
    .restart local p11    # "callback":Landroid/os/RemoteCallback;
    :catchall_c
    move-exception v0

    goto :goto_4

    .line 448
    .end local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v28    # "inMemoryAdjEndTimeMillis":J
    .end local v30    # "currentTimeMillis":J
    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local v5    # "currentTimeMillis":J
    .restart local v9    # "inMemoryAdjBeginTimeMillis":J
    .restart local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v14    # "inMemoryAdjEndTimeMillis":J
    :catchall_d
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object v6, v13

    move-wide/from16 v28, v14

    .end local v5    # "currentTimeMillis":J
    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .end local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v14    # "inMemoryAdjEndTimeMillis":J
    .restart local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "inMemoryAdjEndTimeMillis":J
    .restart local v30    # "currentTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    :goto_5
    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    throw v0

    :catchall_e
    move-exception v0

    goto :goto_5
.end method

.method getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJILandroid/os/RemoteCallback;)V
    .locals 17
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "opNames"    # [Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "beginTimeMillis"    # J
    .param p8, "endTimeMillis"    # J
    .param p10, "flags"    # I
    .param p11, "callback"    # Landroid/os/RemoteCallback;

    .line 357
    move-object/from16 v1, p0

    move-object/from16 v2, p11

    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry;->isApiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 359
    return-void

    .line 362
    :cond_0
    iget-object v3, v1, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v3

    .line 363
    :try_start_0
    iget-object v4, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 364
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Interaction before persistence initialized"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 367
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 369
    :cond_1
    :try_start_3
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    move-wide/from16 v14, p6

    move-wide/from16 v12, p8

    invoke-direct {v0, v14, v15, v12, v13}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 370
    .local v0, "result":Landroid/app/AppOpsManager$HistoricalOps;
    iget-object v5, v1, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    move-object v6, v0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    move/from16 v16, p10

    invoke-static/range {v5 .. v16}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->access$100(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V

    .line 372
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 373
    .local v5, "payload":Landroid/os/Bundle;
    const-string v6, "historical_ops"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 374
    invoke-virtual {v2, v5}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 375
    .end local v0    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v5    # "payload":Landroid/os/Bundle;
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 376
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 377
    return-void

    .line 375
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "opNames":[Ljava/lang/String;
    .end local p5    # "filter":I
    .end local p6    # "beginTimeMillis":J
    .end local p8    # "endTimeMillis":J
    .end local p10    # "flags":I
    .end local p11    # "callback":Landroid/os/RemoteCallback;
    :try_start_6
    throw v0

    .line 376
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "attributionTag":Ljava/lang/String;
    .restart local p4    # "opNames":[Ljava/lang/String;
    .restart local p5    # "filter":I
    .restart local p6    # "beginTimeMillis":J
    .restart local p8    # "endTimeMillis":J
    .restart local p10    # "flags":I
    .restart local p11    # "callback":Landroid/os/RemoteCallback;
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method getMode()I
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    monitor-exit v0

    return v1

    .line 350
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 14
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I
    .param p7, "increment"    # J

    .line 484
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 485
    :try_start_0
    iget v0, v1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 486
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    monitor-exit v2

    return-void

    .line 490
    :cond_0
    nop

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 490
    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v5

    .line 491
    move v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p7

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 494
    :cond_1
    monitor-exit v2

    .line 495
    return-void

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 14
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I

    .line 453
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 454
    :try_start_0
    iget v0, v1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 455
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    monitor-exit v2

    return-void

    .line 459
    :cond_0
    nop

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 459
    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v5

    const-wide/16 v12, 0x1

    .line 460
    move v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 463
    :cond_1
    monitor-exit v2

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method incrementOpRejected(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 14
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I

    .line 468
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 469
    :try_start_0
    iget v0, v1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 470
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    monitor-exit v2

    return-void

    .line 474
    :cond_0
    nop

    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 474
    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v5

    const-wide/16 v12, 0x1

    .line 475
    move v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 478
    :cond_1
    monitor-exit v2

    .line 479
    return-void

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method offsetHistory(J)V
    .locals 6
    .param p1, "offsetMillis"    # J

    .line 530
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 532
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 533
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 536
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v2

    .line 537
    .local v2, "history":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistory()V

    .line 538
    if-eqz v2, :cond_3

    .line 539
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 540
    .local v3, "historySize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 541
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$HistoricalOps;

    .line 542
    .local v5, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v5, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 540
    .end local v5    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 544
    .end local v4    # "i":I
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_2

    .line 545
    invoke-direct {p0, v2}, Lcom/android/server/appop/HistoricalRegistry;->pruneFutureOps(Ljava/util/List;)V

    .line 547
    :cond_2
    iget-object v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v4, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 549
    .end local v2    # "history":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v3    # "historySize":I
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 550
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 551
    return-void

    .line 549
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "offsetMillis":J
    :try_start_6
    throw v2

    .line 550
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "offsetMillis":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method persistPendingHistory()V
    .locals 7

    .line 680
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 682
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 683
    .local v2, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 684
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 685
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->resampleHistoryOnDiskInMemoryDMLocked(J)V

    .line 686
    iput-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 688
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 690
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 691
    return-void

    .line 688
    .end local v2    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    :try_start_4
    throw v2

    .line 690
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method resetHistoryParameters()V
    .locals 8

    .line 575
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Interaction before persistence initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void

    .line 579
    :cond_0
    const/4 v3, 0x1

    sget-wide v4, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    const-wide/16 v6, 0xa

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V

    .line 581
    return-void
.end method

.method setHistoryParameters(IJJ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "baseSnapshotInterval"    # J
    .param p4, "intervalCompressionMultiplier"    # J

    .line 499
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 503
    const/4 v2, 0x0

    .line 504
    .local v2, "resampleHistory":Z
    :try_start_1
    sget-object v3, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New history parameters: mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-static {p1}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " baseSnapshotInterval:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " intervalCompressionMultiplier:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 504
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    if-eq v3, p1, :cond_0

    .line 509
    iput p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 510
    if-nez p1, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistoryOnDiskDLocked()V

    .line 514
    :cond_0
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v3, v3, p2

    if-eqz v3, :cond_1

    .line 515
    iput-wide p2, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 516
    const/4 v2, 0x1

    .line 518
    :cond_1
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    cmp-long v3, v3, p4

    if-eqz v3, :cond_2

    .line 519
    iput-wide p4, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 520
    const/4 v2, 0x1

    .line 522
    :cond_2
    if-eqz v2, :cond_3

    .line 523
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->resampleHistoryOnDiskInMemoryDMLocked(J)V

    .line 525
    .end local v2    # "resampleHistory":Z
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 527
    return-void

    .line 525
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "mode":I
    .end local p2    # "baseSnapshotInterval":J
    .end local p4    # "intervalCompressionMultiplier":J
    :try_start_4
    throw v2

    .line 526
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "mode":I
    .restart local p2    # "baseSnapshotInterval":J
    .restart local p4    # "intervalCompressionMultiplier":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method shutdown()V
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_0
    iget v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    if-eqz v1, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory()V

    .line 675
    :cond_0
    monitor-exit v0

    .line 676
    return-void

    .line 675
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method systemReady(Landroid/content/ContentResolver;)V
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 210
    const-string v0, "appop_history_parameters"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 211
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/android/server/appop/HistoricalRegistry$1;

    .line 212
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/appop/HistoricalRegistry$1;-><init>(Lcom/android/server/appop/HistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 211
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    .line 221
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 223
    :try_start_1
    iget v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    if-eqz v3, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    new-instance v3, Lcom/android/server/appop/HistoricalRegistry$Persistence;

    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v6, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/server/appop/HistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 231
    :cond_0
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 232
    invoke-virtual {v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getLastPersistTimeMillisDLocked()J

    move-result-wide v3

    .line 234
    .local v3, "lastPersistTimeMills":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 245
    .end local v3    # "lastPersistTimeMills":J
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 247
    return-void

    .line 245
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "uri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "resolver":Landroid/content/ContentResolver;
    :try_start_4
    throw v3

    .line 246
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "resolver":Landroid/content/ContentResolver;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method
