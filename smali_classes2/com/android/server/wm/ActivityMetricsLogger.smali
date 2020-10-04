.class Lcom/android/server/wm/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;,
        Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;,
        Lcom/android/server/wm/ActivityMetricsLogger$H;
    }
.end annotation


# static fields
.field private static final INVALID_DELAY:I = -0x1

.field private static final INVALID_START_TIME:J = -0x1L

.field private static final INVALID_TRANSITION_TYPE:I = -0x1

.field static final LAUNCH_OBSERVER_ACTIVITY_RECORD_PROTO_CHUNK_SIZE:I = 0x200
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MSG_CHECK_VISIBILITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

.field private static final WINDOW_STATE_ASSISTANT:I = 0x3

.field private static final WINDOW_STATE_FREEFORM:I = 0x2

.field private static final WINDOW_STATE_INVALID:I = -0x1

.field private static final WINDOW_STATE_SIDE_BY_SIDE:I = 0x1

.field private static final WINDOW_STATE_STANDARD:I

.field private static mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

.field public static mPerfFirstDraw:Landroid/util/BoostFramework;

.field public static mUxPerf:Landroid/util/BoostFramework;


# instance fields
.field private mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTransitionDelayMs:I

.field private mCurrentTransitionDeviceUptime:I

.field private mCurrentTransitionStartTime:J

.field private final mHandler:Lcom/android/server/wm/ActivityMetricsLogger$H;

.field private mLastLogTimeSecs:J

.field private mLastTransitionStartTime:J

.field private final mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

.field private mLoggedTransitionStarting:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mWindowState:I

.field private final mWindowingModeTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 131
    const-string v0, "window_time_0"

    const-string v1, "window_time_1"

    const-string v2, "window_time_2"

    const-string v3, "window_time_3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->mPerfFirstDraw:Landroid/util/BoostFramework;

    .line 163
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityMetricsLogger;->mUxPerf:Landroid/util/BoostFramework;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4
    .param p1, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 138
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 142
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 143
    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionStartTime:J

    .line 152
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 276
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 277
    iput-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    .line 278
    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger$H;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/ActivityMetricsLogger$H;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mHandler:Lcom/android/server/wm/ActivityMetricsLogger$H;

    .line 279
    new-instance v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-direct {v0, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger;
    .param p1, "x1"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "x2"    # Lcom/android/server/wm/ActivityRecord;

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->checkVisibility(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityRecord;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    return-object v0
.end method

.method private allWindowsDrawn()Z
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 611
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 612
    const/4 v1, 0x0

    return v1

    .line 610
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 615
    .end local v0    # "index":I
    :cond_1
    return v1
.end method

.method private calculateCurrentDelay()I
    .locals 4

    .line 650
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private calculateDelay(J)I
    .locals 2
    .param p1, "timestamp"    # J

    .line 655
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method private checkVisibility(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 4
    .param p1, "t"    # Lcom/android/server/wm/TaskRecord;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 553
    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 560
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 561
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    .line 560
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 567
    .local v1, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-nez v1, :cond_1

    .line 568
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 573
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eq v2, p2, :cond_2

    .line 574
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 580
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->hasVisibleNonFinishingActivity(Lcom/android/server/wm/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 581
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 585
    :cond_3
    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 586
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 587
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 588
    const/4 v2, 0x1

    const-string v3, "notifyVisibilityChanged to invisible"

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 590
    .end local v1    # "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 591
    return-void

    .line 590
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 554
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkVisibility skip for t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void
.end method

.method static convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B
    .locals 4
    .param p0, "record"    # Lcom/android/server/wm/ActivityRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1136
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:convertActivityRecordToProto"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1141
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    .line 1144
    .local v2, "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 1145
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    .line 1147
    .local v3, "bytes":[B
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1149
    return-object v3
.end method

.method private convertAppStartTransitionType(I)I
    .locals 1
    .param p1, "tronType"    # I

    .line 835
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 836
    const/4 v0, 0x3

    return v0

    .line 838
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 839
    const/4 v0, 0x1

    return v0

    .line 841
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 842
    const/4 v0, 0x2

    return v0

    .line 844
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static convertTransitionTypeToLaunchObserverTemperature(I)I
    .locals 1
    .param p0, "transitionType"    # I

    .line 1154
    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    .line 1162
    const/4 v0, -0x1

    return v0

    .line 1158
    :cond_0
    const/4 v0, 0x3

    return v0

    .line 1156
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 1160
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private findProcessForActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;
    .locals 3
    .param p1, "launchedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1012
    if-eqz p1, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    goto :goto_0

    .line 1015
    :cond_0
    const/4 v0, 0x0

    .line 1012
    :goto_0
    return-object v0
.end method

.method private getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-nez v0, :cond_0

    .line 1023
    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/dex/ArtManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    return-object v0
.end method

.method private getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .locals 2
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 970
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 971
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_0

    .line 972
    const/16 v0, 0x8

    return v0

    .line 973
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 974
    const/16 v0, 0x9

    return v0

    .line 976
    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 977
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 982
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 980
    :cond_3
    :goto_0
    const/4 v0, 0x7

    return v0
.end method

.method private hasVisibleNonFinishingActivity(Lcom/android/server/wm/TaskRecord;)Z
    .locals 4
    .param p1, "t"    # Lcom/android/server/wm/TaskRecord;

    .line 541
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 542
    iget-object v2, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 543
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_0

    .line 544
    return v1

    .line 541
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 547
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isAnyTransitionActive()Z
    .locals 4

    .line 619
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 620
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 619
    :goto_0
    return v0
.end method

.method private isLoggableResultCode(I)Z
    .locals 1
    .param p1, "resultCode"    # I

    .line 448
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 1106
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunchCancelled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1110
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1112
    .local v2, "activityRecordProto":[B
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchCancelled([B)V

    .line 1114
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1115
    return-void
.end method

.method private launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 1122
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunchFinished"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1125
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 1126
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v3

    .line 1125
    invoke-virtual {v2, v3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunchFinished([B)V

    .line 1128
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1129
    return-void
.end method

.method private launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 1088
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyActivityLaunched"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1091
    nop

    .line 1092
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/wm/ActivityMetricsLogger;->convertTransitionTypeToLaunchObserverTemperature(I)I

    move-result v2

    .line 1095
    .local v2, "temperature":I
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/ActivityMetricsLogger;->convertActivityRecordToProto(Lcom/android/server/wm/ActivityRecord;)[B

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onActivityLaunched([BI)V

    .line 1098
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1099
    return-void
.end method

.method private launchObserverNotifyIntentFailed()V
    .locals 3

    .line 1075
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyIntentFailed"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1078
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentFailed()V

    .line 1080
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1081
    return-void
.end method

.method private launchObserverNotifyIntentStarted(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1060
    const-wide/16 v0, 0x40

    const-string v2, "MetricsLogger:launchObserverNotifyIntentStarted"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1064
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->onIntentStarted(Landroid/content/Intent;)V

    .line 1066
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1067
    return-void
.end method

.method private logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 9
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 787
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 788
    return-void

    .line 791
    :cond_0
    const/16 v0, 0x7539

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->userId:I

    .line 792
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->activityRecordIdHashCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v5, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    aput-object v5, v1, v2

    iget v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 793
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 791
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 795
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 796
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 797
    const-string v1, "Displayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 804
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    iget v7, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    iget-object v8, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-static {v1, v2, v6, v7, v8}, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->reportActivityDisplayed(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 809
    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_1

    .line 810
    iget-object v2, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-virtual {v1, v5, v3, v2, v6}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 813
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    sget-object v1, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isAppInfoGame()I

    move-result v1

    .line 816
    .local v1, "isGame":I
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_2

    .line 817
    const/4 v5, 0x5

    iget-object v6, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v6, v1}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 820
    :cond_2
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mPerfFirstDraw:Landroid/util/BoostFramework;

    if-nez v2, :cond_3

    .line 821
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    sput-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mPerfFirstDraw:Landroid/util/BoostFramework;

    .line 824
    :cond_3
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mPerfFirstDraw:Landroid/util/BoostFramework;

    if-eqz v2, :cond_4

    .line 825
    const/16 v3, 0x1042

    iget-object v5, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 828
    :cond_4
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    if-lez v2, :cond_5

    .line 829
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    sget-object v3, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    invoke-virtual {v2, v3}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    .line 830
    sget-object v2, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    .line 832
    :cond_5
    return-void
.end method

.method private logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 3
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 894
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 895
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 899
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 900
    const-string v1, "Fully drawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    iget-object v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    iget v1, p1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 904
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void
.end method

.method private logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 19
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 986
    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    if-nez v1, :cond_0

    .line 988
    return-void

    .line 991
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1

    .line 992
    .local v1, "pid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 993
    .local v2, "uid":I
    invoke-static {v2, v1}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v15

    .line 994
    .local v15, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    if-nez v15, :cond_1

    .line 996
    return-void

    .line 999
    :cond_1
    const/16 v3, 0x37

    iget-object v5, v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget-wide v7, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v9, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v11, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v13, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    move/from16 v17, v1

    .end local v1    # "pid":I
    .local v17, "pid":I
    iget-wide v0, v15, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    move v4, v2

    move-object/from16 v18, v15

    .end local v15    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .local v18, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    move-wide v15, v0

    invoke-static/range {v3 .. v16}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJJJ)I

    .line 1009
    return-void
.end method

.method private logAppTransition(IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 24
    .param p1, "currentTransitionDeviceUptime"    # I
    .param p2, "currentTransitionDelayMs"    # I
    .param p3, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 716
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x2f9

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 717
    .local v2, "builder":Landroid/metrics/LogMaker;
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 718
    iget v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 719
    iget-object v3, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    const/16 v4, 0x367

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 720
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    .line 721
    .local v3, "isInstantApp":Z
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 722
    const/16 v4, 0x388

    .line 723
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    .line 722
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 725
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1600(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v14

    .line 726
    .local v14, "launchToken":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 727
    const/16 v4, 0x387

    invoke-virtual {v2, v4, v14}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 729
    :cond_1
    const/16 v4, 0x389

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 730
    const/16 v4, 0x145

    .line 731
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 730
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 732
    const/16 v4, 0x13f

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 733
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 734
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 735
    const/16 v4, 0x141

    .line 736
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 735
    invoke-virtual {v2, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 738
    :cond_2
    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    if-eq v4, v5, :cond_3

    .line 739
    const/16 v4, 0x3b1

    iget v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    .line 740
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 739
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 742
    :cond_3
    const/16 v4, 0x142

    iget v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 743
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityMetricsLogger;->getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;

    move-result-object v10

    .line 745
    .local v10, "artManagerInternal":Landroid/content/pm/dex/ArtManagerInternal;
    if-eqz v10, :cond_5

    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 747
    :cond_4
    nop

    .line 748
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 749
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    .line 747
    invoke-virtual {v10, v4, v5}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v4

    goto :goto_1

    .line 746
    :cond_5
    :goto_0
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v4

    .line 747
    :goto_1
    move-object/from16 v21, v4

    .line 750
    .local v21, "packageOptimizationInfo":Landroid/content/pm/dex/PackageOptimizationInfo;
    const/16 v4, 0x529

    .line 751
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 750
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 752
    const/16 v4, 0x528

    .line 753
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 752
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 754
    iget-object v4, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 755
    const/16 v4, 0x30

    .line 757
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    .line 759
    invoke-direct {v0, v7}, Lcom/android/server/wm/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v7

    iget-object v8, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 761
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v9

    move/from16 v15, p1

    mul-int/lit16 v11, v15, 0x3e8

    int-to-long v11, v11

    .line 764
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v13

    .line 766
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v16

    move/from16 v15, v16

    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    move/from16 v16, v4

    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    move/from16 v17, v4

    .line 770
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v19

    .line 771
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v20

    .line 755
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

    invoke-static/range {v4 .. v20}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZJIIIIILjava/lang/String;II)I

    .line 783
    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppStartMemoryStateCapture(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    .line 784
    return-void
.end method

.method private logAppTransitionCancel(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 659
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    .line 660
    .local v0, "type":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 661
    return-void

    .line 663
    :cond_0
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x478

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 664
    .local v1, "builder":Landroid/metrics/LogMaker;
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 665
    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 666
    const/16 v2, 0x367

    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 667
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 668
    const/16 v2, 0x31

    .line 670
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 671
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 672
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v5

    .line 673
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 668
    invoke-static {v2, v3, v4, v5, v6}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;)I

    .line 681
    return-void
.end method

.method private logAppTransitionMultiEvents()V
    .locals 9

    .line 685
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 686
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 687
    .local v1, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v2

    .line 688
    .local v2, "type":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 694
    return-void

    .line 697
    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    sput-object v3, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 701
    new-instance v3, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    .line 703
    .local v3, "infoSnapshot":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    iget v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    .line 704
    .local v5, "currentTransitionDeviceUptime":I
    iget v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 705
    .local v6, "currentTransitionDelayMs":I
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;

    invoke-direct {v8, p0, v5, v6, v3}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$0lYHhsj1ibZMP6eUAxlwT_URn-4;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 707
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$DGh4oiUM74EvEwFf0Up59dk2u_I;

    invoke-direct {v8, p0, v3}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$DGh4oiUM74EvEwFf0Up59dk2u_I;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 709
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v4, v7, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 685
    .end local v1    # "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .end local v2    # "type":I
    .end local v3    # "infoSnapshot":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .end local v5    # "currentTransitionDeviceUptime":I
    .end local v6    # "currentTransitionDelayMs":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 711
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method private notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 8
    .param p1, "resultCode"    # I
    .param p2, "launchedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "processRunning"    # Z
    .param p4, "processSwitch"    # Z

    .line 392
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 393
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    goto :goto_0

    .line 394
    :cond_0
    move v1, v0

    :goto_0
    nop

    .line 395
    .local v1, "windowingMode":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 396
    .local v2, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    iget-wide v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 398
    return-void

    .line 401
    :cond_1
    const/4 v3, 0x1

    if-eqz p2, :cond_2

    iget-boolean v4, p2, Lcom/android/server/wm/ActivityRecord;->mDrawn:Z

    if-eqz v4, :cond_2

    .line 403
    const-string v0, "launched activity already visible"

    invoke-direct {p0, v3, v2, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 404
    return-void

    .line 407
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v2, :cond_3

    .line 412
    invoke-static {v2, p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$102(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 413
    return-void

    .line 416
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 417
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_4

    if-nez v2, :cond_4

    move v0, v3

    .line 418
    .local v0, "otherWindowModesLaunching":Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->isLoggableResultCode(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    if-nez v1, :cond_6

    :cond_5
    if-nez v0, :cond_6

    .line 421
    const-string v4, "failed to launch or not a process switch"

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 422
    return-void

    .line 423
    :cond_6
    if-eqz v0, :cond_7

    .line 425
    return-void

    .line 432
    :cond_7
    new-instance v3, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    .line 433
    .local v3, "newInfo":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    invoke-static {v3, p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$102(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 434
    invoke-static {v3, p3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$902(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 435
    invoke-static {v3, p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1002(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 436
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    .line 439
    invoke-direct {p0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->startTraces(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 440
    invoke-direct {p0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 441
    return-void
.end method

.method private reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "abort"    # Z
    .param p2, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p3, "cause"    # Ljava/lang/String;

    .line 625
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionMultiEvents()V

    .line 628
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 631
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    if-eqz p1, :cond_1

    .line 634
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchCancelled(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    goto :goto_0

    .line 636
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyActivityLaunchFinished(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    goto :goto_0

    .line 639
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentFailed()V

    .line 642
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 643
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 646
    return-void
.end method

.method private startTraces(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 1034
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1035
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2200(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1038
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1038
    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1040
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2202(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 1041
    return-void

    .line 1036
    :cond_1
    :goto_0
    return-void
.end method

.method private stopLaunchTrace(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 1044
    if-nez p1, :cond_0

    .line 1045
    return-void

    .line 1047
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2200(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    const-wide/16 v0, 0x40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-static {p1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1048
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1050
    invoke-static {p1, v3}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2202(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 1052
    :cond_1
    return-void
.end method


# virtual methods
.method public getLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLaunchObserver:Lcom/android/server/wm/LaunchObserverRegistryImpl;

    return-object v0
.end method

.method public synthetic lambda$logAppTransitionMultiEvents$0$ActivityMetricsLogger(IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0
    .param p1, "currentTransitionDeviceUptime"    # I
    .param p2, "currentTransitionDelayMs"    # I
    .param p3, "infoSnapshot"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 705
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransition(IILcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method public synthetic lambda$logAppTransitionMultiEvents$1$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0
    .param p1, "infoSnapshot"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 707
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppDisplayed(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method public synthetic lambda$logAppTransitionReportedDrawn$2$ActivityMetricsLogger(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0
    .param p1, "infoSnapshot"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 889
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppFullyDrawn(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

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

    .line 914
    move-object v0, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 915
    .local v1, "nowElapsed":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 916
    .local v3, "nowUptime":J
    new-instance v5, Landroid/metrics/LogMaker;

    const/16 v6, 0x5e9

    invoke-direct {v5, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 917
    .local v5, "builder":Landroid/metrics/LogMaker;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    .line 918
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x5ea

    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 919
    const/16 v6, 0x5eb

    move-object/from16 v7, p4

    invoke-virtual {v5, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 920
    nop

    .line 921
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 920
    const/16 v8, 0x5ec

    invoke-virtual {v5, v8, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 922
    nop

    .line 923
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 922
    const/16 v8, 0x5ed

    invoke-virtual {v5, v8, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 924
    const/16 v6, 0x5ee

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 925
    const/16 v6, 0x5ef

    .line 926
    invoke-static/range {p8 .. p8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 925
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 927
    const/16 v6, 0x5f0

    .line 928
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 927
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 929
    const/16 v6, 0x5f7

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 930
    if-eqz p1, :cond_0

    .line 931
    const/16 v6, 0x5f8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 932
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 933
    .local v6, "component":Landroid/content/ComponentName;
    if-eqz v6, :cond_0

    .line 934
    const/16 v8, 0x5f6

    .line 935
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    .line 934
    invoke-virtual {v5, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 938
    .end local v6    # "component":Landroid/content/ComponentName;
    :cond_0
    if-eqz v0, :cond_3

    .line 939
    const/16 v6, 0x5f9

    iget-object v8, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 940
    const/16 v6, 0x5fa

    .line 941
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getCurrentProcState()I

    move-result v8

    invoke-static {v8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 940
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 942
    const/16 v6, 0x5fb

    .line 943
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasClientActivities()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 942
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 944
    const/16 v6, 0x5fc

    .line 945
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 944
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 946
    const/16 v6, 0x5fd

    .line 947
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasForegroundActivities()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 946
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 948
    const/16 v6, 0x5fe

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasTopUi()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 949
    const/16 v6, 0x5ff

    .line 950
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasOverlayUi()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 949
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 951
    const/16 v6, 0x600

    .line 952
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasPendingUiClean()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 951
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 953
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1

    .line 954
    const/16 v6, 0x601

    .line 955
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getInteractionEventTime()J

    move-result-wide v8

    sub-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 954
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 957
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2

    .line 958
    const/16 v6, 0x602

    .line 959
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getFgInteractionTime()J

    move-result-wide v8

    sub-long v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 958
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 961
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-eqz v6, :cond_3

    .line 962
    const/16 v6, 0x603

    .line 963
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getWhenUnimportant()J

    move-result-wide v8

    sub-long v8, v3, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 962
    invoke-virtual {v5, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 966
    :cond_3
    move-object v6, p0

    iget-object v8, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v8, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 967
    return-void
.end method

.method logAppTransitionReportedDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .locals 20
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "restoredFromBundle"    # Z

    .line 849
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 850
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 849
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 851
    .local v8, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-nez v8, :cond_0

    .line 852
    const/4 v0, 0x0

    return-object v0

    .line 858
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityManager:ReportingFullyDrawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 861
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v3, 0x442

    invoke-direct {v0, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    move-object v9, v0

    .line 862
    .local v9, "builder":Landroid/metrics/LogMaker;
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 863
    const/16 v0, 0x367

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v0, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 864
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v10, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionStartTime:J

    sub-long v10, v3, v10

    .line 865
    .local v10, "startupTimeMs":J
    const/16 v0, 0x443

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 866
    if-eqz p2, :cond_1

    .line 867
    const/16 v0, 0xd

    goto :goto_0

    .line 868
    :cond_1
    const/16 v0, 0xc

    .line 866
    :goto_0
    invoke-virtual {v9, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 869
    const/16 v0, 0x144

    .line 870
    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 869
    invoke-virtual {v9, v0, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 871
    iget-object v0, v6, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v9}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 872
    const/16 v12, 0x32

    .line 874
    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 875
    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v14, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 876
    if-eqz p2, :cond_2

    .line 877
    const/4 v0, 0x1

    move v15, v0

    goto :goto_1

    .line 878
    :cond_2
    const/4 v0, 0x2

    move v15, v0

    .line 879
    :goto_1
    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 880
    invoke-static {v8}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v17

    .line 872
    move-object/from16 v16, v0

    move-wide/from16 v18, v10

    invoke-static/range {v12 .. v19}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZJ)I

    .line 885
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 887
    new-instance v12, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    long-to-int v4, v10

    const/4 v5, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$1;)V

    .line 889
    .local v0, "infoSnapshot":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$xxgDrxthXaC_M25gC-YvHOsQ6yE;

    invoke-direct {v2, v6, v0}, Lcom/android/server/wm/-$$Lambda$ActivityMetricsLogger$xxgDrxthXaC_M25gC-YvHOsQ6yE;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 890
    return-object v0
.end method

.method logWindowState()V
    .locals 7

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 284
    .local v0, "now":J
    iget v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 288
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/wm/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    aget-object v2, v5, v2

    iget-wide v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v5, v0, v5

    long-to-int v5, v5

    invoke-static {v4, v2, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 291
    :cond_0
    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 293
    iput v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 294
    iget-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 295
    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 296
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v2, :cond_1

    .line 297
    return-void

    .line 300
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    .line 301
    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 302
    return-void

    .line 305
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 306
    .local v3, "windowingMode":I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 307
    iget-object v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/RootActivityContainer;->findStackBehind(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 310
    :cond_3
    const/4 v6, 0x1

    if-eq v3, v6, :cond_7

    if-eq v3, v4, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    .line 322
    if-nez v3, :cond_4

    goto :goto_0

    .line 323
    :cond_4
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

    .line 319
    :cond_5
    iput v5, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 320
    goto :goto_0

    .line 316
    :cond_6
    iput v6, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 317
    goto :goto_0

    .line 312
    :cond_7
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowState:I

    .line 313
    nop

    .line 327
    :goto_0
    return-void
.end method

.method notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "launchedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 357
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 358
    .local v0, "processRecord":Lcom/android/server/wm/WindowProcessController;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 364
    .local v3, "processRunning":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowProcessController;->hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    nop

    .line 367
    .local v1, "processSwitch":Z
    :goto_2
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;ZZ)V

    .line 368
    return-void
.end method

.method notifyActivityLaunching(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 340
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 343
    iget-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastTransitionStartTime:J

    .line 345
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->launchObserverNotifyIntentStarted(Landroid/content/Intent;)V

    .line 347
    :cond_0
    return-void
.end method

.method notifyBindApplication(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 599
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 600
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 603
    .local v1, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    invoke-static {v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-ne v2, p1, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateCurrentDelay()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$402(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 599
    .end local v1    # "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 607
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method notifyStartingWindowDrawn(IJ)V
    .locals 2
    .param p1, "windowingMode"    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p2, "timestamp"    # J

    .line 476
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 477
    .local v0, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1300(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1302(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 481
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$302(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 482
    return-void

    .line 478
    :cond_1
    :goto_0
    return-void
.end method

.method notifyTransitionStarting(Landroid/util/SparseIntArray;J)V
    .locals 6
    .param p1, "windowingModeToReason"    # Landroid/util/SparseIntArray;
    .param p2, "timestamp"    # J

    .line 491
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v0, :cond_0

    goto :goto_3

    .line 498
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 501
    const/4 v1, 0x0

    .line 502
    .local v1, "foundInfo":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_2

    .line 503
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 504
    .local v3, "windowingMode":I
    iget-object v4, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 506
    .local v4, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-nez v4, :cond_1

    .line 507
    goto :goto_1

    .line 509
    :cond_1
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$202(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 510
    move-object v1, v4

    .line 502
    .end local v3    # "windowingMode":I
    .end local v4    # "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 512
    .end local v2    # "index":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->allWindowsDrawn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 514
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 515
    .local v0, "abortMetrics":Z
    :goto_2
    const-string v2, "notifyTransitionStarting - all windows drawn"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 517
    .end local v0    # "abortMetrics":Z
    :cond_4
    return-void

    .line 495
    .end local v1    # "foundInfo":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    :cond_5
    :goto_3
    return-void
.end method

.method notifyVisibilityChanged(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 526
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 525
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 527
    .local v0, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-nez v0, :cond_0

    .line 528
    return-void

    .line 530
    :cond_0
    invoke-static {v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 531
    return-void

    .line 533
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 534
    .local v1, "t":Lcom/android/server/wm/TaskRecord;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 535
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 536
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 537
    iget-object v3, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mHandler:Lcom/android/server/wm/ActivityMetricsLogger$H;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/ActivityMetricsLogger$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 538
    return-void
.end method

.method notifyWindowsDrawn(IJ)Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .locals 4
    .param p1, "windowingMode"    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p2, "timestamp"    # J

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 459
    .local v0, "info":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$502(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 463
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1102(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 464
    new-instance v2, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V

    move-object v1, v2

    .line 466
    .local v1, "infoSnapshot":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger;->allWindowsDrawn()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v2, :cond_1

    .line 467
    const/4 v2, 0x0

    const-string v3, "notifyWindowsDrawn - all windows drawn"

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->reset(ZLcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Ljava/lang/String;)V

    .line 469
    :cond_1
    return-object v1

    .line 460
    .end local v1    # "infoSnapshot":Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    :cond_2
    :goto_0
    return-object v1
.end method
