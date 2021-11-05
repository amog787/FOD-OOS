.class Lcom/android/server/wm/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;,
        Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;,
        Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    }
.end annotation


# static fields
.field private static final IGNORE_CALLER:I = -0x1

.field private static final INVALID_DELAY:I = -0x1

.field private static final INVALID_TRANSITION_TYPE:I = -0x1

.field static final LAUNCH_OBSERVER_ACTIVITY_RECORD_PROTO_CHUNK_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

.field private static final WINDOW_STATE_ASSISTANT:I = 0x3

.field private static final WINDOW_STATE_FREEFORM:I = 0x2

.field private static final WINDOW_STATE_INVALID:I = -0x1

.field private static final WINDOW_STATE_MULTI_WINDOW:I = 0x4

.field private static final WINDOW_STATE_SIDE_BY_SIDE:I = 0x1

.field private static final WINDOW_STATE_STANDARD:I

.field private static mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

.field public static mUxPerf:Landroid/util/BoostFramework;


# instance fields
.field private mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

.field private mLastLogTimeSecs:J

.field private final mLastTransitionInfo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mTransitionInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 148
    const-string v0, "window_time_0"

    const-string v1, "window_time_1"

    const-string v2, "window_time_2"

    const-string v3, "window_time_3"

    const-string v4, "window_time_4"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    .line 164
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->mUxPerf:Landroid/util/BoostFramework;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Looper;)V
    .locals 4
    .param p1, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 154
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 397
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 398
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 399
    new-instance v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-direct {v0, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 400
    return-void
.end method

.method private abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .param p2, "cause"    # Ljava/lang/String;

    .line 764
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    .line 765
    return-void
.end method

.method private checkVisibility(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 5
    .param p1, "t"    # Lcom/android/server/wm/Task;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 714
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 716
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v1

    .line 722
    .local v1, "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    if-nez v1, :cond_0

    .line 723
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 728
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, p2, :cond_1

    .line 729
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 736
    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger;->hasActivityToBeDrawn(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 737
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 740
    :cond_2
    :try_start_3
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v2, :cond_3

    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyVisibilityChanged to invisible activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 742
    const-string v2, "notifyVisibilityChanged to invisible"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    .line 743
    .end local v1    # "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 744
    return-void

    .line 743
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B
    .locals 4
    .param p0, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 1273
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:convertActivityRecordToProto"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1278
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 1281
    .local v2, "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;I)V

    .line 1282
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    .line 1284
    .local v3, "bytes":[B
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1286
    return-object v3
.end method

.method private convertAppStartTransitionType(I)I
    .locals 1
    .param p1, "tronType"    # I

    .line 963
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 964
    const/4 v0, 0x3

    return v0

    .line 966
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 967
    const/4 v0, 0x1

    return v0

    .line 969
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 970
    const/4 v0, 0x2

    return v0

    .line 972
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static convertTransitionTypeToLaunchObserverTemperature(I)I
    .locals 1
    .param p0, "transitionType"    # I

    .line 1291
    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    .line 1299
    const/4 v0, -0x1

    return v0

    .line 1295
    :cond_0
    const/4 v0, 0x3

    return v0

    .line 1293
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 1297
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V
    .locals 2
    .param p1, "abort"    # Z
    .param p2, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .param p3, "cause"    # Ljava/lang/String;
    .param p4, "timestampNs"    # J

    .line 770
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_0

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "done abort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_0
    if-nez p2, :cond_1

    .line 775
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentFailed()V

    .line 776
    return-void

    .line 779
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 780
    if-eqz p1, :cond_2

    .line 781
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    goto :goto_0

    .line 783
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 784
    invoke-direct {p0, p2, p4, p5}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;J)V

    .line 786
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 788
    :goto_0
    iget-object v0, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingDrawActivities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 789
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 790
    return-void
.end method

.method private getActiveTransitionInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .locals 3
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 465
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 466
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 467
    .local v1, "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->contains(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    return-object v1

    .line 465
    .end local v1    # "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 471
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-nez v0, :cond_0

    .line 1154
    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/dex/ArtManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    return-object v0
.end method

.method private static hasActivityToBeDrawn(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 710
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$sZFHZi7b6t6yjfx5mx3RtECSlEU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$sZFHZi7b6t6yjfx5mx3RtECSlEU;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$9gqV7SOtv0dBXWMri6Jpu47OdLc(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->checkVisibility(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic lambda$hasActivityToBeDrawn$0(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 710
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDrawn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 1243
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunchCancelled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1247
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1249
    .local v2, "activityRecordProto":[B
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchCancelled([B)V

    .line 1251
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1252
    return-void
.end method

.method private launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;J)V
    .locals 4
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .param p2, "timestampNs"    # J

    .line 1259
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunchFinished"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1262
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    iget-object v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1263
    invoke-static {v3}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v3

    .line 1262
    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchFinished([BJ)V

    .line 1265
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1266
    return-void
.end method

.method private launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 1215
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunched"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1218
    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 1219
    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger;->convertTransitionTypeToLaunchObserverTemperature(I)I

    move-result v2

    .line 1222
    .local v2, "temperature":I
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    iget-object v4, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v4}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunched([BI)V

    .line 1225
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1226
    return-void
.end method

.method private launchObserverNotifyIntentFailed()V
    .locals 3

    .line 1202
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyIntentFailed"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1205
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentFailed()V

    .line 1207
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1208
    return-void
.end method

.method private launchObserverNotifyIntentStarted(Landroid/content/Intent;J)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestampNs"    # J

    .line 1187
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyIntentStarted"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1191
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentStarted(Landroid/content/Intent;J)V

    .line 1193
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1194
    return-void
.end method

.method private launchObserverNotifyReportFullyDrawn(Lcom/android/server/wm/ActivityRecord;J)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "timestampNs"    # J

    .line 1232
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyReportFullyDrawn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1234
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onReportFullyDrawn([BJ)V

    .line 1235
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1236
    return-void
.end method

.method private logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 10
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 911
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 912
    return-void

    .line 915
    :cond_0
    const/16 v0, 0x7539

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    .line 916
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->activityRecordIdHashCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 917
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 915
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 919
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 920
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 921
    const-string v1, "Displayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 928
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v2

    .line 929
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$800(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v7

    iget v8, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    iget-object v9, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    .line 928
    invoke-static {v1, v2, v7, v8, v9}, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->reportActivityDisplayed(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 933
    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_1

    .line 934
    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v7, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-virtual {v1, v6, v3, v2, v7}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 937
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_5

    .line 942
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 943
    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isAppInfoGame()I

    move-result v1

    .local v1, "isGame":I
    goto :goto_1

    .line 945
    .end local v1    # "isGame":I
    :cond_2
    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger;->mUxPerf:Landroid/util/BoostFramework;

    const/16 v2, 0x1601

    sget-object v6, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 946
    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    move v1, v4

    .line 948
    .restart local v1    # "isGame":I
    :goto_1
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 949
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 950
    const/4 v1, 0x1

    .line 953
    :cond_4
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v4, 0x5

    iget-object v5, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v5, v1}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 956
    .end local v1    # "isGame":I
    :cond_5
    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    if-lez v1, :cond_6

    .line 957
    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    invoke-virtual {v1, v2}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    .line 958
    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    .line 960
    :cond_6
    return-void
.end method

.method private logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 3
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 1048
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 1049
    return-void

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1053
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1054
    const-string v1, "Fully drawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1058
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    return-void
.end method

.method private logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 19
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 1124
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$1200(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_1

    .line 1125
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_0

    const-string v0, "logAppStartMemoryStateCapture processRecord null"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_0
    return-void

    .line 1129
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$1200(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    .line 1130
    .local v0, "pid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$300(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1131
    .local v2, "uid":I
    invoke-static {v2, v0}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v15

    .line 1132
    .local v15, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    if-nez v15, :cond_3

    .line 1133
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v3, :cond_2

    const-string v3, "logAppStartMemoryStateCapture memoryStat null"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_2
    return-void

    .line 1137
    :cond_3
    const/16 v3, 0x37

    .line 1140
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p1

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget-wide v7, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v9, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v11, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v13, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    move/from16 v17, v0

    .end local v0    # "pid":I
    .local v17, "pid":I
    iget-wide v0, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 1137
    move v4, v2

    move-object/from16 v18, v15

    .end local v15    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .local v18, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    move-wide v15, v0

    invoke-static/range {v3 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJJJ)V

    .line 1147
    return-void
.end method

.method private logAppTransition(IILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 24
    .param p1, "currentTransitionDeviceUptime"    # I
    .param p2, "currentTransitionDelayMs"    # I
    .param p3, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 839
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x2f9

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 840
    .local v2, "builder":Landroid/metrics/LogMaker;
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 841
    iget v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 842
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    const/16 v4, 0x367

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 843
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$300(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    .line 844
    .local v3, "isInstantApp":Z
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$400(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 845
    const/16 v4, 0x388

    .line 846
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$400(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    .line 845
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 848
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$500(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v14

    .line 849
    .local v14, "launchToken":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 850
    const/16 v4, 0x387

    invoke-virtual {v2, v4, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 852
    :cond_1
    const/16 v4, 0x389

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 853
    const/16 v4, 0x145

    .line 854
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 853
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 855
    const/16 v4, 0x13f

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 856
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$600(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 857
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$700(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 858
    const/16 v4, 0x141

    .line 859
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$700(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 858
    invoke-virtual {v2, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 861
    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$800(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 862
    const/16 v4, 0x3b1

    .line 863
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$800(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 862
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 865
    :cond_3
    const/16 v4, 0x142

    iget v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 866
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityMetricsLogger;->getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;

    move-result-object v10

    .line 868
    .local v10, "artManagerInternal":Landroid/content/pm/dex/ArtManagerInternal;
    if-eqz v10, :cond_5

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 870
    :cond_4
    nop

    .line 871
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$300(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 872
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 870
    invoke-virtual {v10, v4, v5, v6}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v4

    goto :goto_1

    .line 869
    :cond_5
    :goto_0
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v4

    .line 870
    :goto_1
    move-object/from16 v21, v4

    .line 874
    .local v21, "packageOptimizationInfo":Landroid/content/pm/dex/PackageOptimizationInfo;
    const/16 v4, 0x529

    .line 875
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 874
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 876
    const/16 v4, 0x528

    .line 877
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 876
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 878
    iget-object v4, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 879
    const/16 v4, 0x30

    .line 881
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$300(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 883
    invoke-direct {v0, v7}, Lcom/android/server/wm/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v7

    iget-object v8, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 885
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$400(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v9

    move/from16 v15, p1

    mul-int/lit16 v11, v15, 0x3e8

    int-to-long v11, v11

    .line 888
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$600(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v13

    .line 890
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$700(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v16

    move/from16 v15, v16

    .line 891
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$800(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I

    move-result v16

    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    move/from16 v17, v4

    .line 894
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v19

    .line 895
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v20

    .line 879
    move-object/from16 v22, v10

    .end local v10    # "artManagerInternal":Landroid/content/pm/dex/ArtManagerInternal;
    .local v22, "artManagerInternal":Landroid/content/pm/dex/ArtManagerInternal;
    move v10, v3

    move-object/from16 v23, v14

    .end local v14    # "launchToken":Ljava/lang/String;
    .local v23, "launchToken":Ljava/lang/String;
    move/from16 v14, p2

    move-object/from16 v18, v23

    const/16 v4, 0x30

    invoke-static/range {v4 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZJIIIIILjava/lang/String;II)V

    .line 897
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v4, :cond_6

    .line 898
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 899
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$300(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 901
    invoke-direct {v0, v6}, Lcom/android/server/wm/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 903
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->access$400(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 898
    const-string v5, "APP_START_OCCURRED(%s, %s, %s, %s, %s)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_6
    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    .line 908
    return-void
.end method

.method private logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 793
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 794
    .local v0, "type":I
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 795
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x478

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 796
    .local v2, "builder":Landroid/metrics/LogMaker;
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 797
    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 798
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v4, 0x367

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 799
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 800
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 804
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v5

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 800
    const/16 v7, 0x31

    invoke-static {v7, v3, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;)V

    .line 806
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v3, :cond_0

    .line 807
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 808
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 810
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 807
    const-string v4, "APP_START_CANCELED(%s, %s, %s, %s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_0
    return-void
.end method

.method private logAppTransitionFinished(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 816
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logging finished transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 822
    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    .line 823
    .local v0, "infoSnapshot":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 824
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$MEjrvbJugXgttKs3lnAk7x7tVPc;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$MEjrvbJugXgttKs3lnAk7x7tVPc;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 828
    :cond_1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$fTBXciy3VZJ2vTW_ZJXaKfUj7_I;

    invoke-direct {v3, p0, v0}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$fTBXciy3VZJ2vTW_ZJXaKfUj7_I;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 829
    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 830
    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 833
    :cond_2
    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v1, v2, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 834
    return-void
.end method

.method private notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "caller"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "callingUid"    # I

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 502
    .local v0, "transitionStartTimeNs":J
    const/4 v2, 0x0

    .line 503
    .local v2, "existingInfo":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    const/4 v3, -0x1

    if-eq p3, v3, :cond_2

    .line 506
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 507
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 508
    .local v4, "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    if-eqz p2, :cond_0

    invoke-virtual {v4, p2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->contains(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 509
    move-object v2, v4

    .line 510
    goto :goto_1

    .line 512
    :cond_0
    if-nez v2, :cond_1

    iget-object v5, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5

    if-ne p3, v5, :cond_1

    .line 515
    move-object v2, v4

    .line 506
    .end local v4    # "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 519
    .end local v3    # "i":I
    :cond_2
    :goto_1
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v3, :cond_3

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyActivityLaunching intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " existingInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_3
    if-nez v2, :cond_4

    .line 526
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentStarted(Landroid/content/Intent;J)V

    .line 527
    new-instance v3, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;-><init>()V

    .line 528
    .local v3, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    invoke-static {v3, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->access$002(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;J)J

    .line 529
    return-object v3

    .line 531
    .end local v3    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    :cond_4
    iget-object v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    invoke-static {v3, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->access$002(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;J)J

    .line 532
    iget-object v3, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    return-object v3
.end method

.method private startLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 1161
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startLaunchTrace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_0
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1163
    return-void

    .line 1165
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    .line 1166
    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    iget-wide v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    long-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1168
    return-void
.end method

.method private stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 1172
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopLaunchTrace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1174
    return-void

    .line 1176
    :cond_1
    const-wide/16 v0, 0x40

    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    iget-wide v3, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    long-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1178
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchTraceName:Ljava/lang/String;

    .line 1179
    return-void
.end method


# virtual methods
.method getLastDrawnDelayMs(Lcom/android/server/wm/ActivityRecord;)I
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 977
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 978
    .local v0, "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    return-object v0
.end method

.method public synthetic lambda$logAppTransitionFinished$1$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 2
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .param p2, "infoSnapshot"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 824
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mCurrentTransitionDeviceUptime:I

    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mCurrentTransitionDelayMs:I

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransition(IILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method

.method public synthetic lambda$logAppTransitionFinished$2$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 0
    .param p1, "infoSnapshot"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 828
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method

.method public synthetic lambda$logAppTransitionReportedDrawn$3$ActivityMetricsLogger(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "restoredFromBundle"    # Z
    .param p3, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 992
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionReportedDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 993
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    .line 994
    return-void
.end method

.method public synthetic lambda$logAppTransitionReportedDrawn$4$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V
    .locals 0
    .param p1, "infoSnapshot"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 1004
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    return-void
.end method

.method logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Lcom/android/server/wm/WindowProcessController;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingUidProcState"    # I
    .param p6, "callingUidHasAnyVisibleWindow"    # Z
    .param p7, "realCallingUid"    # I
    .param p8, "realCallingUidProcState"    # I
    .param p9, "realCallingUidHasAnyVisibleWindow"    # Z
    .param p10, "comingFromPendingIntent"    # Z

    .line 1068
    move-object v0, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1069
    .local v1, "nowElapsed":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1070
    .local v3, "nowUptime":J
    new-instance v5, Landroid/metrics/LogMaker;

    const/16 v6, 0x5e9

    invoke-direct {v5, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1071
    .local v5, "builder":Landroid/metrics/LogMaker;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    .line 1072
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x5ea

    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1073
    const/16 v6, 0x5eb

    move-object/from16 v7, p4

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1074
    nop

    .line 1075
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1074
    const/16 v8, 0x5ec

    invoke-virtual {v5, v8, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1076
    nop

    .line 1077
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1076
    const/16 v8, 0x5ed

    invoke-virtual {v5, v8, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1078
    const/16 v6, 0x5ee

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1079
    const/16 v6, 0x5ef

    .line 1080
    invoke-static/range {p8 .. p8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1079
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1081
    const/16 v6, 0x5f0

    .line 1082
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1081
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1083
    const/16 v6, 0x5f7

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1084
    if-eqz p1, :cond_0

    .line 1085
    const/16 v6, 0x5f8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1086
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1087
    .local v6, "component":Landroid/content/ComponentName;
    if-eqz v6, :cond_0

    .line 1088
    const/16 v8, 0x5f6

    .line 1089
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    .line 1088
    invoke-virtual {v5, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1092
    .end local v6    # "component":Landroid/content/ComponentName;
    :cond_0
    if-eqz v0, :cond_3

    .line 1093
    const/16 v6, 0x5f9

    iget-object v8, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1094
    const/16 v6, 0x5fa

    .line 1095
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getCurrentProcState()I

    move-result v8

    invoke-static {v8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1094
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1096
    const/16 v6, 0x5fb

    .line 1097
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasClientActivities()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1096
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1098
    const/16 v6, 0x5fc

    .line 1099
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1098
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1100
    const/16 v6, 0x5fd

    .line 1101
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundActivities()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1100
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1102
    const/16 v6, 0x5fe

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasTopUi()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1103
    const/16 v6, 0x5ff

    .line 1104
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasOverlayUi()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1103
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1105
    const/16 v6, 0x600

    .line 1106
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasPendingUiClean()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1105
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1107
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1

    .line 1108
    const/16 v6, 0x601

    .line 1109
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide v8

    sub-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1108
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1111
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2

    .line 1112
    const/16 v6, 0x602

    .line 1113
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide v8

    sub-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1112
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1115
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-eqz v6, :cond_3

    .line 1116
    const/16 v6, 0x603

    .line 1117
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide v8

    sub-long v8, v3, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1116
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1120
    :cond_3
    move-object v6, p0

    iget-object v8, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v8, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1121
    return-void
.end method

.method logAppTransitionReportedDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
    .locals 20
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "restoredFromBundle"    # Z

    .line 984
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 985
    .local v3, "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 986
    return-object v4

    .line 988
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->allDrawn()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    if-nez v5, :cond_1

    .line 991
    new-instance v5, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$3JeUkmbe0mtunyS6P4HpkAkfKIY;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$3JeUkmbe0mtunyS6P4HpkAkfKIY;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    iput-object v5, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    .line 995
    return-object v4

    .line 998
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    .line 999
    .local v5, "currentTimestampNs":J
    iget-object v7, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingFullyDrawn:Ljava/lang/Runnable;

    if-eqz v7, :cond_2

    .line 1000
    iget v7, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    int-to-long v7, v7

    goto :goto_0

    .line 1001
    :cond_2
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    sub-long v8, v5, v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    :goto_0
    nop

    .line 1002
    .local v7, "startupTimeMs":J
    new-instance v9, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    long-to-int v10, v7

    invoke-direct {v9, v3, v1, v10, v4}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$1;)V

    move-object v4, v9

    .line 1004
    .local v4, "infoSnapshot":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$l0oslVb5YyQhsmr7OXWV2whbXYU;

    invoke-direct {v10, v0, v4}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$l0oslVb5YyQhsmr7OXWV2whbXYU;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1006
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1007
    return-object v4

    .line 1013
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ActivityManager:ReportingFullyDrawn "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v14, 0x40

    invoke-static {v14, v15, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1016
    new-instance v9, Landroid/metrics/LogMaker;

    const/16 v10, 0x442

    invoke-direct {v9, v10}, Landroid/metrics/LogMaker;-><init>(I)V

    move-object v13, v9

    .line 1017
    .local v13, "builder":Landroid/metrics/LogMaker;
    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v9}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 1018
    const/16 v9, 0x367

    iget-object v10, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1019
    const/16 v9, 0x443

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v13, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1020
    if-eqz v2, :cond_4

    .line 1021
    const/16 v9, 0xd

    goto :goto_1

    .line 1022
    :cond_4
    const/16 v9, 0xc

    .line 1020
    :goto_1
    invoke-virtual {v13, v9}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1023
    const/16 v9, 0x144

    .line 1024
    iget-boolean v10, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1023
    invoke-virtual {v13, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1025
    iget-object v9, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v9, v13}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1026
    const/16 v9, 0x32

    iget-object v10, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1030
    if-eqz v2, :cond_5

    .line 1031
    const/4 v12, 0x1

    goto :goto_2

    .line 1032
    :cond_5
    const/4 v12, 0x2

    :goto_2
    iget-object v14, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v14, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-boolean v15, v3, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    .line 1026
    move-object/from16 v17, v13

    .end local v13    # "builder":Landroid/metrics/LogMaker;
    .local v17, "builder":Landroid/metrics/LogMaker;
    move-object v13, v14

    const-wide/16 v18, 0x40

    move v14, v15

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZJ)V

    .line 1039
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1042
    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyReportFullyDrawn(Lcom/android/server/wm/ActivityRecord;J)V

    .line 1044
    return-object v4
.end method

.method logWindowState()V
    .locals 8

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 404
    .local v0, "now":J
    iget v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 408
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object v5, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    aget-object v2, v5, v2

    iget-wide v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v5, v0, v5

    long-to-int v5, v5

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 411
    :cond_0
    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 413
    iput v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 414
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 415
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 416
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v2, :cond_1

    .line 417
    return-void

    .line 420
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    .line 421
    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 422
    return-void

    .line 425
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 426
    .local v3, "windowingMode":I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 427
    iget-object v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/RootWindowContainer;->findStackBehind(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 428
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 433
    :cond_3
    sget-boolean v6, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v6, :cond_4

    .line 434
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_4

    .line 435
    iput v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 436
    return-void

    .line 440
    :cond_4
    const/4 v6, 0x1

    if-eq v3, v6, :cond_9

    if-eq v3, v4, :cond_8

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    const/4 v6, 0x5

    if-eq v3, v6, :cond_7

    const/4 v5, 0x6

    if-eq v3, v5, :cond_6

    .line 455
    if-nez v3, :cond_5

    goto :goto_0

    .line 456
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown windowing mode for stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " windowingMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 452
    :cond_6
    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 453
    goto :goto_0

    .line 449
    :cond_7
    iput v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 450
    goto :goto_0

    .line 446
    :cond_8
    iput v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 447
    goto :goto_0

    .line 442
    :cond_9
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 443
    nop

    .line 460
    :goto_0
    return-void
.end method

.method notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ILcom/android/server/wm/ActivityRecord;)V
    .locals 7
    .param p1, "launchingState"    # Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .param p2, "resultCode"    # I
    .param p3, "launchedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 545
    if-nez p3, :cond_0

    .line 547
    const/4 v0, 0x0

    const-string v1, "nothing launched"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    .line 548
    return-void

    .line 551
    :cond_0
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    :goto_0
    nop

    .line 556
    .local v0, "processRecord":Lcom/android/server/wm/WindowProcessController;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 561
    .local v3, "processRunning":Z
    :goto_1
    if-eqz v3, :cond_4

    .line 562
    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowProcessController;->hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    :goto_2
    nop

    .line 564
    .local v1, "processSwitch":Z
    :goto_3
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v2

    .line 565
    .local v2, "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    const-string v5, "ActivityTaskManager"

    if-eqz v4, :cond_5

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyActivityLaunched resultCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " launchedActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " processRunning="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " processSwitch="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " info="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_5
    iget-boolean v4, p3, Lcom/android/server/wm/ActivityRecord;->mDrawn:Z

    if-eqz v4, :cond_6

    .line 573
    const-string v4, "launched activity already visible"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    .line 574
    return-void

    .line 577
    :cond_6
    if-eqz v2, :cond_8

    iget-object v4, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, p3, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v4, v6, :cond_8

    .line 582
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v4, :cond_7

    const-string v4, "notifyActivityLaunched update launched activity"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_7
    invoke-virtual {v2, p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->setLatestLaunchedActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 585
    return-void

    .line 588
    :cond_8
    invoke-static {p3, p1, v3, v1, p2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->create(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ZZI)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v4

    .line 590
    .local v4, "newInfo":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    if-nez v4, :cond_9

    .line 591
    const-string v5, "unrecognized launch"

    invoke-direct {p0, v2, v5}, Lcom/android/server/wm/ActivityMetricsLogger;->abort(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;)V

    .line 592
    return-void

    .line 595
    :cond_9
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v6, :cond_a

    const-string v6, "notifyActivityLaunched successful"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_a
    iget-object v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v5, p3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    invoke-direct {p0, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->startLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    .line 600
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->isInterestingToLoggerAndObserver()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 601
    invoke-direct {p0, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    goto :goto_4

    .line 604
    :cond_b
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentFailed()V

    .line 606
    :goto_4
    return-void
.end method

.method notifyActivityLaunching(Landroid/content/Intent;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 481
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v0

    return-object v0
.end method

.method notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "caller"    # Lcom/android/server/wm/ActivityRecord;

    .line 491
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v0

    return-object v0
.end method

.method notifyActivityRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 679
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionInfo:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    return-void
.end method

.method notifyBindApplication(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 752
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 753
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mTransitionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 756
    .local v1, "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-ne v2, p1, :cond_0

    .line 757
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateCurrentDelay()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    .line 752
    .end local v1    # "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 760
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method notifyStartingWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 637
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v0

    .line 638
    .local v0, "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedStartingWindowDrawn:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStartingWindowDrawn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedStartingWindowDrawn:Z

    .line 643
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    .line 644
    return-void

    .line 639
    :cond_2
    :goto_0
    return-void
.end method

.method notifyTransitionStarting(Landroid/util/ArrayMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 653
    .local p1, "activityToReason":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    const-string v0, "notifyTransitionStarting"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    .line 656
    .local v8, "timestampNs":J
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_4

    .line 657
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/wm/WindowContainer;

    .line 658
    .local v11, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-direct {p0, v11}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v12

    .line 659
    .local v12, "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    if-eqz v12, :cond_3

    iget-boolean v2, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    if-eqz v2, :cond_1

    .line 661
    goto :goto_1

    .line 663
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v2, :cond_2

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyTransitionStarting activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_2
    invoke-virtual {v12, v8, v9}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result v2

    iput v2, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mCurrentTransitionDelayMs:I

    .line 668
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    .line 669
    iput-boolean v10, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    .line 670
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->allDrawn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 671
    const/4 v3, 0x0

    const-string v5, "notifyTransitionStarting - all windows drawn"

    move-object v2, p0

    move-object v4, v12

    move-wide v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    .line 656
    .end local v11    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v12    # "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 675
    .end local v0    # "index":I
    :cond_4
    return-void
.end method

.method notifyVisibilityChanged(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 688
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v0

    .line 689
    .local v0, "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    if-nez v0, :cond_0

    .line 690
    return-void

    .line 692
    :cond_0
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v1, :cond_1

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVisibilityChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " finishing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 693
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_3

    .line 697
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->removePendingDrawActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 699
    :cond_3
    iget-object v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, p1, :cond_4

    .line 700
    return-void

    .line 704
    :cond_4
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$9gqV7SOtv0dBXWMri6Jpu47OdLc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$9gqV7SOtv0dBXWMri6Jpu47OdLc;

    .line 705
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 704
    invoke-static {v2, p0, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 706
    return-void
.end method

.method notifyWindowsDrawn(Lcom/android/server/wm/ActivityRecord;J)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
    .locals 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "timestampNs"    # J

    .line 616
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWindowsDrawn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-result-object v0

    .line 619
    .local v0, "info":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->allDrawn()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 624
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    .line 625
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->removePendingDrawActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 626
    new-instance v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    invoke-direct {v1, v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    .line 627
    .local v1, "infoSnapshot":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedTransitionStarting:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->allDrawn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 628
    const/4 v3, 0x0

    const-string v5, "notifyWindowsDrawn - all windows drawn"

    move-object v2, p0

    move-object v4, v0

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivityMetricsLogger;->done(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Ljava/lang/String;J)V

    .line 630
    :cond_2
    return-object v1

    .line 620
    .end local v1    # "infoSnapshot":Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
    :cond_3
    :goto_0
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v3, :cond_4

    const-string v3, "notifyWindowsDrawn no activity to be drawn"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_4
    return-object v2
.end method
