.class final Lcom/android/server/job/controllers/QuotaController$Timer;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Timer"
.end annotation


# instance fields
.field private mBgJobCount:I

.field private final mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

.field private final mRunningBgJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTimeElapsed:J

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1468
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1464
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    .line 1469
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$Package;

    invoke-direct {p1, p3, p4}, Lcom/android/server/job/controllers/QuotaController$Package;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    .line 1470
    iput p2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    .line 1471
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/job/controllers/QuotaController$Timer;)Lcom/android/server/job/controllers/QuotaController$Package;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1458
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    return-object v0
.end method

.method private cancelCutoff()V
    .locals 3

    .line 1626
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$300(Lcom/android/server/job/controllers/QuotaController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1627
    return-void
.end method

.method private emitSessionLocked(J)V
    .locals 7
    .param p1, "nowElapsed"    # J

    .line 1532
    iget v5, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    if-gtz v5, :cond_0

    .line 1534
    return-void

    .line 1536
    :cond_0
    new-instance v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    move-object v0, v6

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController$TimingSession;-><init>(JJI)V

    .line 1537
    .local v0, "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v2, v2, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/job/controllers/QuotaController;->saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;)V

    .line 1538
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 1542
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 1543
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v2, v2, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$1700(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V

    .line 1544
    return-void
.end method

.method private scheduleCutoff()V
    .locals 7

    .line 1609
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1610
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1611
    monitor-exit v0

    return-void

    .line 1613
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$300(Lcom/android/server/job/controllers/QuotaController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1614
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v3, v3, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v4, v4, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    .line 1616
    .local v2, "timeRemainingMs":J
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1617
    const-string v4, "JobScheduler.Quota"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Job for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms left."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_1
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$300(Lcom/android/server/job/controllers/QuotaController;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1622
    nop

    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "timeRemainingMs":J
    monitor-exit v0

    .line 1623
    return-void

    .line 1622
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldTrackLocked()Z
    .locals 4

    .line 1573
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v1, v1, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1574
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 1573
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v0

    .line 1575
    .local v0, "standbyBucket":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$1600(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1576
    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$1800(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1575
    :goto_0
    return v1
.end method


# virtual methods
.method dropEverythingLocked()V
    .locals 1

    .line 1527
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1528
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 1529
    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1657
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1659
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/job/controllers/QuotaController$Package;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1660
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1661
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1663
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1664
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1665
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1666
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p4, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1667
    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1664
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1672
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1673
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1630
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    const-string v0, "Timer{"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1631
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 1632
    const-string/jumbo v0, "} "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1633
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1634
    const-string/jumbo v0, "started at "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1635
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 1636
    const-string v0, " ("

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1637
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 1638
    const-string/jumbo v0, "ms ago)"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1640
    :cond_0
    const-string v0, "NOT active"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1642
    :goto_0
    const-string v0, ", "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1643
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1644
    const-string v0, " running bg jobs"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1645
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1646
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1647
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1648
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1649
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1650
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1647
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1653
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1654
    return-void
.end method

.method getBgJobCount()I
    .locals 2

    .line 1567
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1568
    :try_start_0
    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    monitor-exit v0

    return v1

    .line 1569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentDuration(J)J
    .locals 3
    .param p1, "nowElapsed"    # J

    .line 1561
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1562
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    sub-long v1, p1, v1

    :goto_0
    monitor-exit v0

    return-wide v1

    .line 1563
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isActive()Z
    .locals 2

    .line 1551
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1552
    :try_start_0
    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1553
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isRunning(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1557
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method onStateChangedLocked(JZ)V
    .locals 4
    .param p1, "nowElapsed"    # J
    .param p3, "isQuotaFree"    # Z

    .line 1580
    if-eqz p3, :cond_0

    .line 1581
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->emitSessionLocked(J)V

    goto :goto_0

    .line 1582
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->shouldTrackLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1585
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    .line 1589
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 1590
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v1, v1, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v2, v2, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->incrementJobCount(ILjava/lang/String;I)V

    .line 1593
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v1, v1, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v2, v2, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 1595
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    .line 1598
    :cond_1
    :goto_0
    return-void
.end method

.method rescheduleCutoff()V
    .locals 0

    .line 1601
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 1602
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    .line 1603
    return-void
.end method

.method startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1474
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController;->access$1500(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_1

    .line 1477
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer ignoring "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because isTop"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1478
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_0
    return-void

    .line 1483
    :cond_1
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting to track "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1488
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->shouldTrackLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1489
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    .line 1490
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v2, v2, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v3, v3, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/job/controllers/QuotaController;->incrementJobCount(ILjava/lang/String;I)V

    .line 1491
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1493
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    .line 1495
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget v1, v1, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Lcom/android/server/job/controllers/QuotaController$Package;

    iget-object v2, v2, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 1496
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    .line 1499
    :cond_3
    return-void
.end method

.method stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1502
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping tracking of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1506
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1509
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1510
    const-string v1, "JobScheduler.Quota"

    const-string v2, "Timer isn\'t tracking any jobs but still told to stop"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_1
    monitor-exit v0

    return-void

    .line 1514
    :cond_2
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1515
    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$1600(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->isCharging()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1516
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->emitSessionLocked(J)V

    .line 1517
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    .line 1519
    :cond_3
    monitor-exit v0

    .line 1520
    return-void

    .line 1519
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
