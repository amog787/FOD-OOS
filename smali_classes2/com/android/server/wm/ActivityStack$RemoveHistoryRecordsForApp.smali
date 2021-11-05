.class Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveHistoryRecordsForApp"
.end annotation


# instance fields
.field private mApp:Lcom/android/server/wm/WindowProcessController;

.field private mHasVisibleActivities:Z

.field private mIsProcessRemoved:Z

.field private mToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/ActivityStack;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityStack;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->this$0:Lcom/android/server/wm/ActivityStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mToRemove:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "x1"    # Lcom/android/server/wm/ActivityStack$1;

    .line 514
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;-><init>(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method private addActivityToRemove(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 547
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mApp:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, v1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_0
    return-void
.end method

.method public static synthetic lambda$8j2ZFLAwkXnwDAxiTFN7mMDLhjU(Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->addActivityToRemove(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method private processActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 553
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": app="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mApp:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v2, :cond_1

    .line 556
    return-void

    .line 558
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_3

    .line 562
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mHasVisibleActivities:Z

    .line 565
    :cond_3
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    const/4 v3, 0x2

    if-eq v0, v2, :cond_4

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-ne v0, v3, :cond_5

    :cond_4
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    const/4 v4, 0x3

    if-ge v0, v4, :cond_5

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_5

    .line 571
    const/4 v0, 0x0

    .local v0, "remove":Z
    goto :goto_0

    .line 572
    .end local v0    # "remove":Z
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasSavedState()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 573
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_8

    .line 576
    :cond_7
    const/4 v0, 0x1

    .restart local v0    # "remove":Z
    goto :goto_0

    .line 577
    .end local v0    # "remove":Z
    :cond_8
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_9

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-le v0, v3, :cond_9

    iget-wide v3, p1, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 578
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xea60

    sub-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_9

    .line 584
    const/4 v0, 0x1

    .restart local v0    # "remove":Z
    goto :goto_0

    .line 587
    .end local v0    # "remove":Z
    :cond_9
    const/4 v0, 0x0

    .line 589
    .restart local v0    # "remove":Z
    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_e

    .line 590
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v4, :cond_a

    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v4, :cond_b

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from stack : hasSavedState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasSavedState()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " stateNotNeeded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " finishing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 590
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_b
    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mIsProcessRemoved:Z

    if-eqz v4, :cond_10

    .line 597
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": app died, no saved state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 599
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 598
    const-string v7, "proc died without state saved"

    invoke-static {v1, v4, v5, v6, v7}, Lcom/android/server/wm/EventLogTags;->writeWmFinishActivity(IIILjava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v1

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v1, v4, :cond_10

    .line 604
    invoke-static {}, Lcom/android/server/wm/ActivityStack;->access$300()Z

    move-result v1

    if-nez v1, :cond_d

    new-array v1, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x136

    aput v5, v1, v4

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 605
    :cond_d
    invoke-static {p1, v3}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->handleActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1

    .line 614
    :cond_e
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing app during removeHistory for activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_f
    iput-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 621
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 623
    :cond_10
    :goto_1
    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    .line 624
    if-eqz v0, :cond_11

    .line 625
    const-string v1, "appDied"

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    .line 627
    :cond_11
    return-void
.end method


# virtual methods
.method process(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mHasVisibleActivities:Z

    .line 523
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mApp:Lcom/android/server/wm/WindowProcessController;

    .line 524
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->isRemoved()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mIsProcessRemoved:Z

    .line 525
    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->makeFinishingForProcessRemoved()V

    .line 532
    :cond_0
    sget-object v1, Lcom/android/server/wm/-$$Lambda$ActivityStack$RemoveHistoryRecordsForApp$8j2ZFLAwkXnwDAxiTFN7mMDLhjU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$RemoveHistoryRecordsForApp$8j2ZFLAwkXnwDAxiTFN7mMDLhjU;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 534
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 532
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 535
    .local v1, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->this$0:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 536
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 538
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mToRemove:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 539
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mToRemove:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v2}, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->processActivity(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_0

    .line 542
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mApp:Lcom/android/server/wm/WindowProcessController;

    .line 543
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mHasVisibleActivities:Z

    return v0
.end method
