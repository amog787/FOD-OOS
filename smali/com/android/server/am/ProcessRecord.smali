.class Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"

# interfaces
.implements Lcom/android/server/wm/WindowProcessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessRecord$ErrorDialogController;,
        Lcom/android/server/am/ProcessRecord$PackageList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final VALUE_FALSE:I = 0x0

.field private static final VALUE_INVALID:I = -0x1

.field private static final VALUE_TRUE:I = 0x1


# instance fields
.field adjSeq:I

.field adjSource:Ljava/lang/Object;

.field adjSourceProcState:I

.field adjTarget:Ljava/lang/Object;

.field adjType:Ljava/lang/String;

.field adjTypeCode:I

.field final appZygote:Z

.field bad:Z

.field baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

.field bindMountPending:Z

.field compat:Landroid/content/res/CompatibilityInfo;

.field completedAdjSeq:I

.field final conProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field connectionGroup:I

.field connectionImportance:I

.field connectionService:Lcom/android/server/am/ServiceRecord;

.field final connections:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field containsCycle:Z

.field crashHandler:Ljava/lang/Runnable;

.field crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field curAdj:I

.field curCapability:I

.field curCpuTime:J

.field curCpuTimeBgMonitor:J

.field curProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field final curReceivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field empty:Z

.field errorReportReceiver:Landroid/content/ComponentName;

.field execServicesFg:Z

.field final executingServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field forceCrashReport:Z

.field forcingToImportant:Ljava/lang/Object;

.field forkTime:J

.field freezeUnfreezeTime:J

.field frozen:Z

.field gids:[I

.field hasAboveClient:Z

.field hasShownUi:Z

.field hasStartedServices:Z

.field hostingRecord:Lcom/android/server/am/HostingRecord;

.field public inFullBackup:Z

.field volatile info:Landroid/content/pm/ApplicationInfo;

.field initialIdlePss:J

.field instructionSet:Ljava/lang/String;

.field final isolated:Z

.field isolatedEntryPoint:Ljava/lang/String;

.field isolatedEntryPointArgs:[Ljava/lang/String;

.field killReason:I

.field killed:Z

.field killedByAm:Z

.field lastActivityTime:J

.field lastCachedPss:J

.field lastCachedSwapPss:J

.field lastCompactAction:I

.field lastCompactTime:J

.field lastContactProviderTime:J

.field lastCpuTime:J

.field lastCpuTimeBgMonitor:[J

.field lastLightIdleRxBytes:J

.field lastLightIdleTxBytes:J

.field lastLowMemory:J

.field lastMemInfo:Landroid/os/Debug$MemoryInfo;

.field lastMemInfoTime:J

.field lastProviderTime:J

.field lastPss:J

.field lastPssTime:J

.field lastRequestedGc:J

.field lastRxBytes:[J

.field lastSkipTime:J

.field lastStateTime:J

.field lastSwapPss:J

.field lastTopTime:J

.field lastTxBytes:[J

.field lruSeq:I

.field final mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field private mBoundClientUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCached:Z

.field mCachedAdj:I

.field mCachedForegroundActivities:Z

.field private mCachedHasActivities:I

.field private mCachedHasRecentTasks:I

.field private mCachedHasVisibleActivities:I

.field private mCachedIsHeavyWeight:I

.field private mCachedIsHomeProcess:I

.field private mCachedIsPreviousProcess:I

.field private mCachedIsReceivingBroadcast:I

.field mCachedProcState:I

.field mCachedSchedGroup:I

.field private mCrashing:Z

.field private mCurProcState:I

.field private mCurRawAdj:I

.field private mCurRawProcState:I

.field private mCurSchedGroup:I

.field private mDebugging:Z

.field private final mDialogController:Lcom/android/server/am/ProcessRecord$ErrorDialogController;

.field mDisabledCompatChanges:[J

.field private mFgInteractionTime:J

.field private mFgServiceTypes:I

.field private mHasClientActivities:Z

.field private mHasForegroundActivities:Z

.field private mHasForegroundServices:Z

.field private mHasOverlayUi:Z

.field private mHasTopUi:Z

.field private mInstr:Lcom/android/server/am/ActiveInstrumentation;

.field private mInteractionEventTime:J

.field mLastRss:J

.field private mNotResponding:Z

.field private mPendingUiClean:Z

.field private mPersistent:Z

.field volatile mPrecedence:Lcom/android/server/am/ProcessRecord;

.field mReachable:Z

.field private mRepFgServiceTypes:I

.field private mRepProcState:I

.field private mRequiredAbi:Ljava/lang/String;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field final mServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field volatile mSuccessor:Lcom/android/server/am/ProcessRecord;

.field private mUsingWrapper:Z

.field private mWhenUnimportant:J

.field private final mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

.field maxAdj:I

.field mountMode:I

.field nextPssTime:J

.field notCachedSinceIdle:Z

.field notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field pendingStart:Z

.field permRequestCount:I

.field pid:I

.field pkgDeps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

.field procStatFile:Ljava/lang/String;

.field procStateChanged:Z

.field final procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

.field final processInfo:Landroid/content/pm/ProcessInfo;

.field final processName:Ljava/lang/String;

.field pssProcState:I

.field pssStatType:I

.field final pubProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field final receivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field volatile removed:Z

.field renderThreadTid:I

.field repForegroundActivities:Z

.field reportLowMemory:Z

.field reportedInteraction:Z

.field reqCompactAction:I

.field runningRemoteAnimation:Z

.field savedPriority:I

.field seInfo:Ljava/lang/String;

.field serviceHighRam:Z

.field serviceb:Z

.field setAdj:I

.field setCapability:I

.field setProcState:I

.field setRawAdj:I

.field setSchedGroup:I

.field shortStringName:Ljava/lang/String;

.field shouldNotFreeze:Z

.field startSeq:J

.field startTime:J

.field startUid:I

.field starting:Z

.field stringName:Ljava/lang/String;

.field systemNoUi:Z

.field thread:Landroid/app/IApplicationThread;

.field treatLikeActivity:Z

.field trimMemoryLevel:I

.field final uid:I

.field uidRecord:Lcom/android/server/am/UidRecord;

.field unlocked:Z

.field final userId:I

.field verifiedAdj:I

.field waitedForDebugger:Z

.field waitingToKill:Ljava/lang/String;

.field whitelistManager:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 15
    .param p1, "_service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "_processName"    # Ljava/lang/String;
    .param p4, "_uid"    # I

    .line 695
    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessRecord$PackageList;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 153
    new-instance v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-direct {v0}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;-><init>()V

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 182
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, v8, Lcom/android/server/am/ProcessRecord;->lastRxBytes:[J

    .line 183
    new-array v1, v0, [J

    iput-object v1, v8, Lcom/android/server/am/ProcessRecord;->lastTxBytes:[J

    .line 210
    const/16 v1, 0x14

    iput v1, v8, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    .line 211
    iput v1, v8, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 212
    iput v1, v8, Lcom/android/server/am/ProcessRecord;->mCurRawProcState:I

    .line 213
    iput v1, v8, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 214
    iput v1, v8, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 277
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v8, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    .line 282
    new-array v0, v0, [J

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    .line 310
    new-instance v0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->mDialogController:Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    .line 321
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    .line 325
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    .line 327
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    .line 329
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    .line 331
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    .line 336
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    .line 338
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 398
    const/4 v0, -0x1

    iput v0, v8, Lcom/android/server/am/ProcessRecord;->mCachedHasActivities:I

    .line 399
    iput v0, v8, Lcom/android/server/am/ProcessRecord;->mCachedIsHeavyWeight:I

    .line 400
    iput v0, v8, Lcom/android/server/am/ProcessRecord;->mCachedHasVisibleActivities:I

    .line 401
    iput v0, v8, Lcom/android/server/am/ProcessRecord;->mCachedIsHomeProcess:I

    .line 402
    iput v0, v8, Lcom/android/server/am/ProcessRecord;->mCachedIsPreviousProcess:I

    .line 403
    iput v0, v8, Lcom/android/server/am/ProcessRecord;->mCachedHasRecentTasks:I

    .line 404
    iput v0, v8, Lcom/android/server/am/ProcessRecord;->mCachedIsReceivingBroadcast:I

    .line 405
    const/16 v1, -0x2710

    iput v1, v8, Lcom/android/server/am/ProcessRecord;->mCachedAdj:I

    .line 406
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mCachedForegroundActivities:Z

    .line 407
    const/16 v3, 0x13

    iput v3, v8, Lcom/android/server/am/ProcessRecord;->mCachedProcState:I

    .line 408
    iput v2, v8, Lcom/android/server/am/ProcessRecord;->mCachedSchedGroup:I

    .line 696
    iput-object v9, v8, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 697
    iput-object v10, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 698
    const/4 v3, 0x0

    .line 699
    .local v3, "procInfo":Landroid/content/pm/ProcessInfo;
    iget-object v4, v9, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    if-eqz v4, :cond_0

    .line 700
    iget-object v4, v9, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 701
    invoke-virtual {v4, v12}, Landroid/content/pm/PackageManagerInternal;->getProcessesForUid(I)Landroid/util/ArrayMap;

    move-result-object v4

    .line 702
    .local v4, "processes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ProcessInfo;>;"
    if-eqz v4, :cond_0

    .line 703
    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Landroid/content/pm/ProcessInfo;

    .line 704
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-nez v5, :cond_0

    iget v5, v3, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-ne v5, v0, :cond_0

    .line 708
    const/4 v3, 0x0

    move-object v13, v3

    goto :goto_0

    .line 712
    .end local v4    # "processes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ProcessInfo;>;"
    :cond_0
    move-object v13, v3

    .end local v3    # "procInfo":Landroid/content/pm/ProcessInfo;
    .local v13, "procInfo":Landroid/content/pm/ProcessInfo;
    :goto_0
    iput-object v13, v8, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 713
    iget v0, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x1

    if-eq v0, v12, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, v8, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 714
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const v4, 0x15f90

    if-lt v0, v4, :cond_2

    .line 715
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const v4, 0x182b7

    if-gt v0, v4, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iput-boolean v3, v8, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    .line 716
    iput v12, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 717
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 718
    iput-object v11, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 719
    const/16 v0, 0x3e9

    iput v0, v8, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 720
    iput v1, v8, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    iput v1, v8, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    .line 721
    iput v1, v8, Lcom/android/server/am/ProcessRecord;->verifiedAdj:I

    iput v1, v8, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iput v1, v8, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 722
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 723
    iput-boolean v2, v8, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 724
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    iput-wide v0, v8, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    iput-wide v0, v8, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    iput-wide v0, v8, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTime:J

    .line 727
    const-wide/16 v0, 0x0

    iput-wide v0, v8, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    .line 728
    iput-wide v0, v8, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    .line 731
    iput v2, v8, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    .line 733
    new-instance v14, Lcom/android/server/wm/WindowProcessController;

    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v5, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object v0, v14

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowProcessController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/wm/WindowProcessListener;)V

    iput-object v14, v8, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 735
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-wide v3, v10, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 738
    iget-wide v0, v8, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    iput-wide v0, v8, Lcom/android/server/am/ProcessRecord;->forkTime:J

    .line 740
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/wm/WindowProcessController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ProcessRecord;

    .line 100
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ProcessRecord;

    .line 100
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private getShowBackground()Z
    .locals 3

    .line 2023
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "anr_show_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isInterestingForBackgroundTraces()Z
    .locals 3

    .line 1959
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1960
    return v2

    .line 1975
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingTopLocked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1979
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1980
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    nop

    .line 1975
    :goto_1
    return v2
.end method

.method private makeAppNotRespondingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;

    .line 1931
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->setNotResponding(Z)V

    .line 1934
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    if-eqz v0, :cond_0

    .line 1935
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 1939
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->startAppProblemLocked()V

    .line 1940
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 1941
    return-void
.end method


# virtual methods
.method addAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V
    .locals 2
    .param p1, "entity"    # Landroid/os/Binder;

    .line 1461
    if-nez p1, :cond_0

    return-void

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1463
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setAllowBackgroundActivityStarts(Z)V

    .line 1464
    return-void
.end method

.method addBoundClientUid(I)V
    .locals 2
    .param p1, "clientUid"    # I

    .line 1474
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1475
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1476
    return-void
.end method

.method addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V
    .locals 6
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;

    .line 1502
    if-nez p1, :cond_0

    .line 1503
    return-void

    .line 1505
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1506
    .local v0, "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1507
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1508
    .local v2, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1509
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget v5, v5, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1508
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1506
    .end local v2    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1512
    .end local v1    # "conni":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1513
    return-void
.end method

.method public addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 1163
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1164
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 1166
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v1, p4

    move-object v2, v0

    move-object v3, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1169
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1170
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, v2, :cond_1

    .line 1171
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_0

    .line 1174
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1176
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1178
    .end local v0    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public appDied(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 1630
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1631
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1632
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1633
    return-void

    .line 1632
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;Z)V
    .locals 38
    .param p1, "activityShortComponentName"    # Ljava/lang/String;
    .param p2, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "parentShortComponentName"    # Ljava/lang/String;
    .param p4, "parentProcess"    # Lcom/android/server/wm/WindowProcessController;
    .param p5, "aboveSystem"    # Z
    .param p6, "annotation"    # Ljava/lang/String;
    .param p7, "onlyDumpSelf"    # Z

    .line 1693
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v11, p6

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    .line 1694
    .local v10, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    move-object v9, v0

    .line 1698
    .local v9, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    if-lez v0, :cond_0

    .line 1699
    return-void

    .line 1704
    :cond_0
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    new-instance v2, Lcom/android/server/am/-$$Lambda$ProcessRecord$1qn6-pj5yWgiSnKANZpVz3gwd30;

    invoke-direct {v2, v12}, Lcom/android/server/am/-$$Lambda$ProcessRecord$1qn6-pj5yWgiSnKANZpVz3gwd30;-><init>(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v11, v2}, Lcom/android/server/wm/WindowProcessController;->appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1707
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1708
    .local v7, "anrTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isMonitorCpuUsage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1709
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1713
    :cond_1
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1715
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_2

    .line 1716
    :try_start_1
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "During shutdown skipping ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1779
    :catchall_0
    move-exception v0

    move-object/from16 v4, p2

    move/from16 v5, p5

    move-wide/from16 v32, v7

    move-object/from16 v24, v9

    move-object/from16 v26, v10

    move-object v14, v11

    goto/16 :goto_19

    .line 1718
    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v0, :cond_3

    .line 1719
    :try_start_3
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping duplicate ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1721
    :cond_3
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v0, :cond_4

    .line 1722
    :try_start_5
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashing app skipping ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1724
    :cond_4
    :try_start_6
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->killedByAm:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v0, :cond_5

    .line 1725
    :try_start_7
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App already killed by AM skipping ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1727
    :cond_5
    :try_start_8
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->killed:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v0, :cond_6

    .line 1728
    :try_start_9
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping died app ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1734
    :cond_6
    const/4 v0, 0x1

    :try_start_a
    invoke-virtual {v12, v0}, Lcom/android/server/am/ProcessRecord;->setNotResponding(Z)V

    .line 1737
    const/16 v3, 0x7538

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v1, v6

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v1, v5

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    const/4 v4, 0x4

    aput-object v11, v1, v4

    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1741
    iget v1, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1744
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v1

    move/from16 v23, v1

    .line 1749
    .local v23, "isSilentAnr":Z
    const-string/jumbo v1, "persist.sys.assert.enable"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1750
    .local v1, "isAssert":Z
    if-nez v23, :cond_7

    if-eqz p7, :cond_8

    :cond_7
    if-eqz v1, :cond_13

    .line 1752
    :cond_8
    :try_start_b
    iget v3, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1753
    .local v3, "parentPid":I
    if-eqz v15, :cond_9

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v4

    if-lez v4, :cond_9

    .line 1754
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v4

    move v3, v4

    .line 1756
    :cond_9
    iget v4, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v3, v4, :cond_a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    :cond_a
    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v4, v5, :cond_b

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v3, :cond_b

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1760
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getLruProcessList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_12

    .line 1761
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getLruProcessList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 1762
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v5, :cond_10

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_10

    .line 1763
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1764
    .local v0, "myPid":I
    if-lez v0, :cond_f

    iget v6, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v6, :cond_f

    if-eq v0, v3, :cond_f

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v6, :cond_f

    .line 1765
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1766
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v6, :cond_c

    const-string v6, "ActivityManager"

    move/from16 v16, v1

    .end local v1    # "isAssert":Z
    .local v16, "isAssert":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v3

    .end local v3    # "parentPid":I
    .local v17, "parentPid":I
    const-string v3, "Adding persistent proc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v16    # "isAssert":Z
    .end local v17    # "parentPid":I
    .restart local v1    # "isAssert":Z
    .restart local v3    # "parentPid":I
    :cond_c
    move/from16 v16, v1

    move/from16 v17, v3

    .end local v1    # "isAssert":Z
    .end local v3    # "parentPid":I
    .restart local v16    # "isAssert":Z
    .restart local v17    # "parentPid":I
    goto :goto_1

    .line 1768
    .end local v16    # "isAssert":Z
    .end local v17    # "parentPid":I
    .restart local v1    # "isAssert":Z
    .restart local v3    # "parentPid":I
    :cond_d
    move/from16 v16, v1

    move/from16 v17, v3

    .end local v1    # "isAssert":Z
    .end local v3    # "parentPid":I
    .restart local v16    # "isAssert":Z
    .restart local v17    # "parentPid":I
    iget-boolean v1, v5, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v1, :cond_e

    .line 1769
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v1, :cond_11

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding likely IME: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1772
    :cond_e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1773
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v1, :cond_11

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding ANR proc: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 1764
    .end local v16    # "isAssert":Z
    .end local v17    # "parentPid":I
    .restart local v1    # "isAssert":Z
    .restart local v3    # "parentPid":I
    :cond_f
    move/from16 v16, v1

    move/from16 v17, v3

    .end local v1    # "isAssert":Z
    .end local v3    # "parentPid":I
    .restart local v16    # "isAssert":Z
    .restart local v17    # "parentPid":I
    goto :goto_1

    .line 1762
    .end local v0    # "myPid":I
    .end local v16    # "isAssert":Z
    .end local v17    # "parentPid":I
    .restart local v1    # "isAssert":Z
    .restart local v3    # "parentPid":I
    :cond_10
    move/from16 v16, v1

    move/from16 v17, v3

    .line 1760
    .end local v1    # "isAssert":Z
    .end local v3    # "parentPid":I
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "isAssert":Z
    .restart local v17    # "parentPid":I
    :cond_11
    :goto_1
    add-int/lit8 v4, v4, -0x1

    move/from16 v1, v16

    move/from16 v3, v17

    const/4 v0, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    .end local v16    # "isAssert":Z
    .end local v17    # "parentPid":I
    .restart local v1    # "isAssert":Z
    .restart local v3    # "parentPid":I
    :cond_12
    move/from16 v16, v1

    move/from16 v17, v3

    .end local v1    # "isAssert":Z
    .end local v3    # "parentPid":I
    .restart local v16    # "isAssert":Z
    .restart local v17    # "parentPid":I
    goto :goto_2

    .line 1750
    .end local v4    # "i":I
    .end local v16    # "isAssert":Z
    .end local v17    # "parentPid":I
    .restart local v1    # "isAssert":Z
    :cond_13
    move/from16 v16, v1

    .line 1779
    .end local v1    # "isAssert":Z
    :goto_2
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 1783
    .local v6, "info":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1784
    const-string v0, "ANR in "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    if-eqz v13, :cond_14

    .line 1786
    const-string v0, " ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1788
    :cond_14
    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    const-string v0, "PID: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    if-eqz v11, :cond_15

    .line 1791
    const-string v0, "Reason: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    :cond_15
    if-eqz v14, :cond_16

    .line 1794
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1795
    const-string v0, "Parent: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1798
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    .line 1799
    .local v5, "report":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/MemoryPressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v4, v0

    .line 1801
    .local v4, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    const/4 v0, 0x0

    .line 1804
    .local v0, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1805
    .local v1, "nativeProc":[Ljava/lang/String;
    const/16 v26, 0x0

    if-nez v23, :cond_18

    if-eqz p7, :cond_17

    goto :goto_3

    .line 1820
    :cond_17
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v27, v0

    move-object/from16 v28, v1

    goto :goto_9

    .line 1806
    :cond_18
    :goto_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    sget-object v3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1a

    .line 1807
    sget-object v3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v3, v3, v2

    move-object/from16 v16, v0

    .end local v0    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v16, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1808
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v0, v3, v17

    move-object v1, v3

    .line 1809
    goto :goto_5

    .line 1806
    :cond_19
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    goto :goto_4

    .end local v16    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v0    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1a
    move-object/from16 v16, v0

    .line 1812
    .end local v0    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    .restart local v16    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_5
    if-nez v1, :cond_1b

    move-object/from16 v0, v26

    goto :goto_6

    :cond_1b
    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    .line 1813
    .local v0, "pid":[I
    :goto_6
    if-eqz v0, :cond_1d

    .line 1814
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1815
    .end local v16    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v2, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, v0

    move-object/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "nativeProc":[Ljava/lang/String;
    .local v17, "nativeProc":[Ljava/lang/String;
    :goto_7
    if-ge v1, v3, :cond_1c

    aget v16, v0, v1

    .line 1816
    .local v16, "i":I
    move-object/from16 v18, v0

    .end local v0    # "pid":[I
    .local v18, "pid":[I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1815
    .end local v16    # "i":I
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v18

    goto :goto_7

    .end local v18    # "pid":[I
    .restart local v0    # "pid":[I
    :cond_1c
    move-object/from16 v18, v0

    .end local v0    # "pid":[I
    .restart local v18    # "pid":[I
    move-object v0, v2

    goto :goto_8

    .line 1813
    .end local v2    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "nativeProc":[Ljava/lang/String;
    .end local v18    # "pid":[I
    .restart local v0    # "pid":[I
    .restart local v1    # "nativeProc":[Ljava/lang/String;
    .local v16, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1d
    move-object/from16 v18, v0

    move-object/from16 v17, v1

    .end local v0    # "pid":[I
    .end local v1    # "nativeProc":[Ljava/lang/String;
    .restart local v17    # "nativeProc":[Ljava/lang/String;
    .restart local v18    # "pid":[I
    move-object/from16 v0, v16

    .line 1819
    .end local v16    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "pid":[I
    .local v0, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_8
    move-object/from16 v27, v0

    move-object/from16 v28, v17

    .line 1825
    .end local v0    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "nativeProc":[Ljava/lang/String;
    .local v27, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v28, "nativeProc":[Ljava/lang/String;
    :goto_9
    new-instance v20, Ljava/io/StringWriter;

    invoke-direct/range {v20 .. v20}, Ljava/io/StringWriter;-><init>()V

    .line 1827
    .local v20, "tracesFileException":Ljava/io/StringWriter;
    const/4 v0, 0x2

    new-array v3, v0, [J

    .line 1836
    .local v3, "offsets":[J
    const-string/jumbo v1, "sys.debug.watchdog"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 1837
    .local v22, "isAgingVersion":Z
    nop

    .line 1838
    if-nez v23, :cond_1f

    if-eqz v22, :cond_1e

    goto :goto_a

    :cond_1e
    move-object/from16 v17, v4

    goto :goto_b

    :cond_1f
    :goto_a
    move-object/from16 v17, v26

    :goto_b
    if-nez v23, :cond_21

    if-eqz v22, :cond_20

    goto :goto_c

    :cond_20
    move-object/from16 v18, v9

    goto :goto_d

    :cond_21
    :goto_c
    move-object/from16 v18, v26

    .line 1839
    :goto_d
    if-eqz v22, :cond_22

    move-object/from16 v19, v26

    goto :goto_e

    :cond_22
    move-object/from16 v19, v27

    .line 1837
    :goto_e
    move-object/from16 v16, v10

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v21}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;[J)Ljava/io/File;

    move-result-object v16

    .line 1842
    .local v16, "tracesFile":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isMonitorCpuUsage()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1843
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1844
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 1845
    :try_start_d
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2, v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1847
    invoke-virtual {v4}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1848
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1846
    :catchall_1
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v0

    .line 1850
    :cond_23
    :goto_f
    invoke-virtual/range {v20 .. v20}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 1852
    invoke-virtual {v4, v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    if-nez v16, :cond_24

    .line 1857
    iget v1, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Process;->sendSignal(II)V

    const/16 v18, 0x0

    goto :goto_10

    .line 1858
    :cond_24
    const/4 v1, 0x1

    aget-wide v17, v3, v1

    const-wide/16 v1, 0x0

    cmp-long v1, v17, v1

    if-lez v1, :cond_25

    .line 1860
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1861
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v32

    const/16 v18, 0x0

    aget-wide v34, v3, v18

    const/16 v19, 0x1

    aget-wide v36, v3, v19

    .line 1860
    move-object/from16 v29, v1

    move/from16 v30, v2

    move/from16 v31, v0

    move-object/from16 v33, v16

    invoke-virtual/range {v29 .. v37}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V

    goto :goto_10

    .line 1858
    :cond_25
    const/16 v18, 0x0

    .line 1864
    :goto_10
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1865
    if-nez v13, :cond_26

    const-string/jumbo v19, "unknown"

    goto :goto_11

    :cond_26
    move-object/from16 v19, v13

    .line 1867
    :goto_11
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_28

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1868
    const/16 v24, 0x2

    goto :goto_12

    .line 1869
    :cond_27
    const/16 v24, 0x1

    goto :goto_12

    .line 1870
    :cond_28
    move/from16 v24, v18

    .line 1871
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1872
    const/16 v25, 0x2

    goto :goto_13

    .line 1873
    :cond_29
    const/16 v25, 0x1

    .line 1874
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v29

    .line 1875
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2a

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_14

    :cond_2a
    const-string v1, ""

    :goto_14
    move-object/from16 v30, v1

    .line 1864
    const/16 v1, 0x4f

    move-object/from16 v21, v3

    .end local v3    # "offsets":[J
    .local v21, "offsets":[J
    move-object v3, v0

    move-object/from16 v31, v4

    .end local v4    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v31, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    move-object/from16 v4, v19

    move-object/from16 v17, v5

    const/4 v0, 0x2

    .end local v5    # "report":Ljava/lang/StringBuilder;
    .local v17, "report":Ljava/lang/StringBuilder;
    move-object/from16 v5, p6

    move/from16 v19, v18

    move-object/from16 v18, v6

    .end local v6    # "info":Ljava/lang/StringBuilder;
    .local v18, "info":Ljava/lang/StringBuilder;
    move/from16 v6, v24

    move-wide/from16 v32, v7

    .end local v7    # "anrTime":J
    .local v32, "anrTime":J
    move/from16 v7, v25

    move/from16 v8, v29

    move-object/from16 v24, v9

    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v24, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    move-object/from16 v9, v30

    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 1876
    if-eqz v15, :cond_2b

    .line 1877
    iget-object v1, v15, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    move-object v7, v1

    goto :goto_15

    :cond_2b
    move-object/from16 v7, v26

    .line 1878
    .local v7, "parentPr":Lcom/android/server/am/ProcessRecord;
    :goto_15
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1879
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v25, 0x0

    .line 1878
    const-string v2, "anr"

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    move-object/from16 v26, v10

    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v26, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v10, v16

    move-object v14, v11

    move-object/from16 v11, v25

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1882
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/-$$Lambda$ProcessRecord$Cb3MKja7_iTlaFQrvQTzPvLyoT8;

    invoke-direct {v3, v12}, Lcom/android/server/am/-$$Lambda$ProcessRecord$Cb3MKja7_iTlaFQrvQTzPvLyoT8;-><init>(Lcom/android/server/am/ProcessRecord;)V

    new-instance v4, Lcom/android/server/am/-$$Lambda$ProcessRecord$2DImTokd0AWNTECl3WgBxJkOOqs;

    invoke-direct {v4, v12}, Lcom/android/server/am/-$$Lambda$ProcessRecord$2DImTokd0AWNTECl3WgBxJkOOqs;-><init>(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowProcessController;->appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1889
    return-void

    .line 1892
    :cond_2c
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1895
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    if-eqz v2, :cond_2d

    .line 1896
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    .line 1899
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1900
    const-string v0, "bg anr"

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v12, v0, v2, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    .line 1901
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1905
    :cond_2e
    nop

    .line 1906
    if-eqz v14, :cond_2f

    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_2f
    const-string v2, "ANR"

    :goto_16
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1905
    invoke-direct {v12, v13, v2, v3}, Lcom/android/server/am/ProcessRecord;->makeAppNotRespondingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_30

    .line 1912
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1913
    .local v2, "msg":Landroid/os/Message;
    iput v0, v2, Landroid/os/Message;->what:I

    .line 1914
    new-instance v3, Lcom/android/server/am/AppNotRespondingDialog$Data;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-object/from16 v4, p2

    move/from16 v5, p5

    :try_start_11
    invoke-direct {v3, v12, v4, v5}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;Z)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1916
    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_17

    .line 1910
    .end local v2    # "msg":Landroid/os/Message;
    :cond_30
    move-object/from16 v4, p2

    move/from16 v5, p5

    .line 1921
    :goto_17
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v2, 0x49

    aput v2, v3, v19

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-nez v2, :cond_31

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0xb7

    aput v3, v2, v19

    .line 1922
    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1923
    :cond_31
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v2, v3, v6, v0}, Lcom/oneplus/android/server/carrier/OpCarrierManagerInjector;->sendApplicationStop(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V

    .line 1927
    :cond_32
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1928
    return-void

    .line 1927
    :catchall_2
    move-exception v0

    move-object/from16 v4, p2

    move/from16 v5, p5

    :goto_18
    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_18

    .line 1779
    .end local v16    # "tracesFile":Ljava/io/File;
    .end local v17    # "report":Ljava/lang/StringBuilder;
    .end local v18    # "info":Ljava/lang/StringBuilder;
    .end local v20    # "tracesFileException":Ljava/io/StringWriter;
    .end local v21    # "offsets":[J
    .end local v22    # "isAgingVersion":Z
    .end local v23    # "isSilentAnr":Z
    .end local v24    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v26    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v28    # "nativeProc":[Ljava/lang/String;
    .end local v31    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v32    # "anrTime":J
    .local v7, "anrTime":J
    .restart local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v4, p2

    move/from16 v5, p5

    move-wide/from16 v32, v7

    move-object/from16 v24, v9

    move-object/from16 v26, v10

    move-object v14, v11

    .end local v7    # "anrTime":J
    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v26    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v32    # "anrTime":J
    :goto_19
    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_19
.end method

.method clearBoundClientUids()V
    .locals 2

    .line 1516
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1517
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1518
    return-void
.end method

.method public clearProfilerIfNeeded()V
    .locals 2

    .line 1542
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1543
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    .line 1544
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    .line 1545
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eq v1, p0, :cond_0

    goto :goto_0

    .line 1548
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->clearProfilerLocked()V

    .line 1549
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1550
    return-void

    .line 1546
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1549
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZIIIII)V
    .locals 11
    .param p1, "callback"    # Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
    .param p2, "adj"    # I
    .param p3, "foregroundActivities"    # Z
    .param p4, "procState"    # I
    .param p5, "schedGroup"    # I
    .param p6, "appUid"    # I
    .param p7, "logUid"    # I
    .param p8, "processCurTop"    # I

    .line 2105
    move-object v9, p0

    move-object v10, p1

    iget v0, v9, Lcom/android/server/am/ProcessRecord;->mCachedAdj:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 2106
    return-void

    .line 2108
    :cond_0
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->initialize(Lcom/android/server/am/ProcessRecord;IZIIIII)V

    .line 2110
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const/16 v1, 0x63

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowProcessController;->computeOomAdjFromActivities(ILcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I

    move-result v0

    .line 2113
    .local v0, "minLayer":I
    iget v1, v10, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iput v1, v9, Lcom/android/server/am/ProcessRecord;->mCachedAdj:I

    .line 2114
    iget-boolean v1, v10, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iput-boolean v1, v9, Lcom/android/server/am/ProcessRecord;->mCachedForegroundActivities:Z

    .line 2115
    iget v1, v10, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iput v1, v9, Lcom/android/server/am/ProcessRecord;->mCachedProcState:I

    .line 2116
    iget v1, v10, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    iput v1, v9, Lcom/android/server/am/ProcessRecord;->mCachedSchedGroup:I

    .line 2118
    iget v1, v9, Lcom/android/server/am/ProcessRecord;->mCachedAdj:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 2119
    add-int/2addr v1, v0

    iput v1, v9, Lcom/android/server/am/ProcessRecord;->mCachedAdj:I

    .line 2121
    :cond_1
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 423
    .local v0, "nowUptime":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "user #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 424
    const-string v2, " uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 425
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v3, :cond_0

    .line 426
    const-string v2, " ISOLATED uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 428
    :cond_0
    const-string v2, " gids={"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    const-string v3, ", "

    if-eqz v2, :cond_2

    .line 430
    const/4 v2, 0x0

    .local v2, "gi":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 431
    if-eqz v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    aget v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "gi":I
    :cond_2
    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v4, :cond_4

    .line 438
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "processInfo:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v4, v4, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v4, :cond_3

    .line 440
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v5, v5, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 441
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  deny: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v5, v5, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 445
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v4, v4, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 446
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  gwpAsanMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v5, v5, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mRequiredAbi="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    const-string v4, " instructionSet="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->instructionSet:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 452
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "class="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 455
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "manageSpaceActivityName="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 456
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "dir="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 460
    const-string v4, " publicDir="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    const-string v4, " data="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "packageList={"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 464
    if-lez v4, :cond_7

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    :cond_7
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 467
    .end local v4    # "i":I
    :cond_8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    if-eqz v4, :cond_b

    .line 469
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "packageDependencies={"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 471
    if-lez v4, :cond_9

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    :cond_9
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 474
    .end local v4    # "i":I
    :cond_a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "compat="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 477
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v2, :cond_c

    .line 478
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mInstr="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 480
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "thread="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 481
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " starting="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 482
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->starting:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 483
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastActivityTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 484
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 485
    const-string v2, " lastPssTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 486
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 487
    const-string v2, " pssStatType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pssStatType:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 488
    const-string v2, " nextPssTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 489
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 490
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 491
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 492
    const-string v2, " lastSwapPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastSwapPss:J

    mul-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 493
    const-string v2, " lastCachedPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    mul-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 494
    const-string v2, " lastCachedSwapPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastCachedSwapPss:J

    mul-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 496
    const-string v2, " lastRss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->mLastRss:J

    mul-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 497
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 498
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "procStateMemTracker: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 499
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->dumpLine(Ljava/io/PrintWriter;)V

    .line 500
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "adjSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 501
    const-string v2, " lruSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 502
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "oom adj: max="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 503
    const-string v2, " curRaw="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 504
    const-string v2, " setRaw="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 505
    const-string v2, " cur="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 506
    const-string v2, " set="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 507
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastCompactTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 508
    const-string v2, " lastCompactAction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 509
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mCurSchedGroup="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 510
    const-string v2, " setSchedGroup="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 511
    const-string v2, " systemNoUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 512
    const-string v2, " trimMemoryLevel="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 513
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "curProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 514
    const-string v2, " mRepProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 515
    const-string v2, " pssProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 516
    const-string v2, " setProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 517
    const-string v2, " lastStateTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 518
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 519
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 520
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "curCapability="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 521
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curCapability:I

    invoke-static {p1, v2}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 522
    const-string v2, " setCapability="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 523
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setCapability:I

    invoke-static {p1, v2}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 524
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 525
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v2, :cond_e

    .line 526
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasShownUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 527
    const-string v2, " pendingUiClean="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 528
    const-string v2, " hasAboveClient="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 529
    const-string v2, " treatLikeActivity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 531
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "cached="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mCached:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 532
    const-string v2, " empty="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->empty:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 533
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v2, :cond_f

    .line 534
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "serviceb="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 535
    const-string v2, " serviceHighRam="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 537
    :cond_f
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    if-eqz v2, :cond_10

    .line 538
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "notCachedSinceIdle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 539
    const-string v2, " initialIdlePss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 541
    :cond_10
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    if-nez v2, :cond_11

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v2, :cond_12

    .line 542
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "connectionGroup="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 543
    const-string v2, " Importance="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 544
    const-string v2, " Service="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 546
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v2

    if-nez v2, :cond_13

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-eqz v2, :cond_14

    .line 547
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasTopUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 548
    const-string v2, " hasOverlayUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 549
    const-string v2, " runningRemoteAnimation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 551
    :cond_14
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    if-eqz v2, :cond_16

    .line 552
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mHasForegroundServices="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 553
    const-string v2, " forcingToImportant="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 555
    :cond_16
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    const-wide/16 v3, 0x0

    if-nez v2, :cond_17

    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1a

    .line 556
    :cond_17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "reportedInteraction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 557
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 558
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_18

    .line 559
    const-string v2, " time="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 560
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 562
    :cond_18
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_19

    .line 563
    const-string v2, " fgInteractionTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 564
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 566
    :cond_19
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 568
    :cond_1a
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v2, :cond_1b

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v2, :cond_1c

    .line 569
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "persistent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 570
    const-string v2, " removed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 572
    :cond_1c
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    const-string v5, ")"

    if-nez v2, :cond_1d

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    if-nez v2, :cond_1d

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    if-eqz v2, :cond_1e

    .line 573
    :cond_1d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasClientActivities="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 574
    const-string v2, " foregroundActivities="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 575
    const-string v2, " (rep="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    :cond_1e
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    cmp-long v2, v6, v3

    if-lez v2, :cond_1f

    .line 578
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastProviderTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 579
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 580
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 582
    :cond_1f
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    cmp-long v2, v6, v3

    if-lez v2, :cond_20

    .line 583
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastTopTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 585
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 587
    :cond_20
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v2, :cond_21

    .line 588
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasStartedServices="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 590
    :cond_21
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-eqz v2, :cond_22

    .line 591
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pendingStart="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 593
    :cond_22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "startSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 594
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mountMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v2, Lcom/android/internal/os/Zygote;

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->mountMode:I

    .line 595
    const-string v7, "MOUNT_EXTERNAL_"

    invoke-static {v2, v7, v6}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v6, 0xa

    if-le v2, v6, :cond_24

    .line 597
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastCpuTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 598
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    cmp-long v2, v6, v3

    if-lez v2, :cond_23

    .line 599
    const-string v2, " timeUsed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 602
    :cond_23
    const-string v2, " whenUnimportant="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->mWhenUnimportant:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 604
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 606
    :cond_24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastRequestedGc="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 607
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastRequestedGc:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 608
    const-string v2, " lastLowMemory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 609
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastLowMemory:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 610
    const-string v2, " reportLowMemory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->reportLowMemory:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 611
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v2, :cond_25

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v2, :cond_26

    .line 612
    :cond_25
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "killed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 613
    const-string v2, " killedByAm="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 614
    const-string v2, " waitingToKill="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    :cond_26
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    if-nez v2, :cond_27

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mDialogController:Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->hasCrashDialogs()Z

    move-result v2

    if-nez v2, :cond_27

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mDialogController:Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    .line 617
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->hasAnrDialogs()Z

    move-result v2

    if-nez v2, :cond_27

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    if-eqz v2, :cond_29

    .line 618
    :cond_27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDebugging="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mCrashing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mDialogController:Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    invoke-static {v4}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->access$100(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mNotResponding="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mDialogController:Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    invoke-static {v3}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->access$200(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bad="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v2, :cond_28

    .line 627
    const-string v2, " errorReportReceiver="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    :cond_28
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 632
    :cond_29
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    if-eqz v2, :cond_2a

    .line 633
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "whitelistManager="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 635
    :cond_2a
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 636
    :cond_2b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isolatedEntryPoint="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isolatedEntryPointArgs="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    :cond_2c
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowProcessController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 641
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const-string v3, "  - "

    if-lez v2, :cond_2d

    .line 642
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Services:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_2d

    .line 644
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 643
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 647
    .end local v2    # "i":I
    :cond_2d
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_2e

    .line 648
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Executing Services (fg="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 649
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_2e

    .line 651
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 650
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 654
    .end local v2    # "i":I
    :cond_2e
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_2f

    .line 655
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Connections:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_2f

    .line 657
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 656
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 660
    .end local v2    # "i":I
    :cond_2f
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_30

    .line 661
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Published Providers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_30

    .line 663
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    -> "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 662
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 667
    .end local v2    # "i":I
    :cond_30
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_31

    .line 668
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Connected Providers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_31

    .line 670
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {v4}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 673
    .end local v2    # "i":I
    :cond_31
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    .line 674
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Current Receivers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_32

    .line 676
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 675
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 679
    .end local v2    # "i":I
    :cond_32
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_33

    .line 680
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Receivers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_33

    .line 682
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 681
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 685
    .end local v2    # "i":I
    :cond_33
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_34

    .line 686
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Background activity start whitelist tokens:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_34

    .line 688
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 689
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 687
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 692
    .end local v2    # "i":I
    :cond_34
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1064
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1065
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "lruIndex"    # I

    .line 1068
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1069
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1070
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1071
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1072
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_0

    .line 1073
    const-wide v2, 0x10500000004L

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1074
    const-wide v2, 0x10500000005L

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1076
    :cond_0
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v3, :cond_1

    .line 1077
    const-wide v2, 0x10500000006L

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1079
    :cond_1
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1080
    if-ltz p4, :cond_2

    .line 1081
    const-wide v2, 0x10500000008L

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1083
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1084
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .locals 8
    .param p1, "newState"    # I

    .line 1191
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    if-le v0, p1, :cond_0

    .line 1192
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 1193
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1194
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1195
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ipkg":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1196
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1197
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 1198
    invoke-static {v5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1199
    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1196
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    .line 1195
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1202
    .end local v0    # "ipkg":I
    :cond_0
    return-void
.end method

.method getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;
    .locals 1

    .line 1528
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    return-object v0
.end method

.method getCachedHasActivities()Z
    .locals 4

    .line 2042
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedHasActivities:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 2043
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    .line 2044
    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedHasActivities:I

    .line 2046
    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedHasActivities:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedHasRecentTasks()Z
    .locals 4

    .line 2082
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedHasRecentTasks:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 2083
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2084
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedHasRecentTasks:I

    .line 2086
    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedHasRecentTasks:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedHasVisibleActivities()Z
    .locals 4

    .line 2058
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedHasVisibleActivities:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 2059
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2060
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedHasVisibleActivities:I

    .line 2062
    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedHasVisibleActivities:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedIsHeavyWeight()Z
    .locals 4

    .line 2050
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsHeavyWeight:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 2051
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2052
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 2051
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isHeavyWeightProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2052
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsHeavyWeight:I

    .line 2054
    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsHeavyWeight:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedIsHomeProcess()Z
    .locals 4

    .line 2066
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsHomeProcess:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 2067
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2068
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsHomeProcess:I

    .line 2070
    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsHomeProcess:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedIsPreviousProcess()Z
    .locals 4

    .line 2074
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsPreviousProcess:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 2075
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isPreviousProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsPreviousProcess:I

    .line 2078
    :cond_1
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsPreviousProcess:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method getCachedIsReceivingBroadcast(Landroid/util/ArraySet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;)Z"
        }
    .end annotation

    .line 2090
    .local p1, "tmpQueue":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/BroadcastQueue;>;"
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsReceivingBroadcast:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 2091
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 2092
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/ActivityManagerService;->isReceivingBroadcastLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2093
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsReceivingBroadcast:I

    .line 2094
    if-ne v0, v2, :cond_2

    .line 2095
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2096
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedSchedGroup:I

    .line 2099
    :cond_2
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsReceivingBroadcast:I

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public getCpuTime()J
    .locals 2

    .line 1604
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getCurProcState()I
    .locals 1

    .line 1286
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    return v0
.end method

.method getCurRawAdj()I
    .locals 1

    .line 1537
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    return v0
.end method

.method getCurRawProcState()I
    .locals 1

    .line 1294
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurRawProcState:I

    return v0
.end method

.method getCurrentSchedulingGroup()I
    .locals 1

    .line 1277
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    return v0
.end method

.method getDialogController()Lcom/android/server/am/ProcessRecord$ErrorDialogController;
    .locals 1

    .line 2124
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDialogController:Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    return-object v0
.end method

.method getFgInteractionTime()J
    .locals 2

    .line 1430
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    return-wide v0
.end method

.method getForegroundServiceTypes()I
    .locals 1

    .line 1368
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mFgServiceTypes:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInputDispatchingTimeout()J
    .locals 2

    .line 1655
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method getInteractionEventTime()J
    .locals 2

    .line 1421
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    return-wide v0
.end method

.method getLruProcessList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 1681
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPackageList()[Ljava/lang/String;
    .locals 4

    .line 1244
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    .line 1245
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 1246
    const/4 v1, 0x0

    return-object v1

    .line 1248
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    .line 1249
    .local v1, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1250
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1252
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public getPackageListWithVersionCode()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 1256
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    .line 1257
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 1258
    const/4 v1, 0x0

    return-object v1

    .line 1260
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1261
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1262
    new-instance v3, Landroid/content/pm/VersionedPackage;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    invoke-direct {v3, v4, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1264
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public getPid()I
    .locals 1

    .line 2313
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    return v0
.end method

.method public getProcessClassEnum()I
    .locals 2

    .line 1659
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_0

    .line 1660
    const/4 v0, 0x3

    return v0

    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    .line 1663
    const/4 v0, 0x0

    return v0

    .line 1665
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 1666
    :cond_2
    nop

    .line 1665
    :goto_0
    return v1
.end method

.method getReportedForegroundServiceTypes()I
    .locals 1

    .line 1372
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mRepFgServiceTypes:I

    return v0
.end method

.method getReportedProcState()I
    .locals 1

    .line 1309
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    return v0
.end method

.method getRequiredAbi()Ljava/lang/String;
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    return-object v0
.end method

.method getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;
    .locals 1
    .param p1, "index"    # I

    .line 886
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    return-object v0
.end method

.method public getSetAdjWithServices()I
    .locals 2

    .line 1182
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_0

    .line 1183
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v0, :cond_0

    .line 1184
    const/16 v0, 0x320

    return v0

    .line 1187
    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 2306
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    return v0
.end method

.method getWhenUnimportant()J
    .locals 2

    .line 1439
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mWhenUnimportant:J

    return-wide v0
.end method

.method getWindowProcessController()Lcom/android/server/wm/WindowProcessController;
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method

.method hasActivities()Z
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    return v0
.end method

.method hasActivitiesOrRecentTasks()Z
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivitiesOrRecentTasks()Z

    move-result v0

    return v0
.end method

.method hasClientActivities()Z
    .locals 1

    .line 1394
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    return v0
.end method

.method hasForegroundActivities()Z
    .locals 1

    .line 1385
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    return v0
.end method

.method hasForegroundServices()Z
    .locals 1

    .line 1355
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    return v0
.end method

.method hasLocationCapability()Z
    .locals 2

    .line 1364
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setCapability:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method hasLocationForegroundServices()Z
    .locals 1

    .line 1359
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mFgServiceTypes:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasOverlayUi()Z
    .locals 1

    .line 1412
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasOverlayUi:Z

    return v0
.end method

.method hasPendingUiClean()Z
    .locals 1

    .line 1568
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    return v0
.end method

.method hasRecentTasks()Z
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result v0

    return v0
.end method

.method hasTopUi()Z
    .locals 1

    .line 1403
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasTopUi:Z

    return v0
.end method

.method public isCached()Z
    .locals 1

    .line 898
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mCached:Z

    return v0
.end method

.method isCrashing()Z
    .locals 1

    .line 1318
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    return v0
.end method

.method isDebugging()Z
    .locals 1

    .line 1448
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    return v0
.end method

.method public isInterestingToUserLocked()Z
    .locals 7

    .line 918
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInterestingToUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 919
    return v1

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 923
    .local v0, "servicesSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    .line 929
    const/4 v4, 0x0

    .line 931
    .local v4, "r":Lcom/android/server/am/ServiceRecord;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 935
    .end local v4    # "r":Lcom/android/server/am/ServiceRecord;
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    nop

    .line 945
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v4, :cond_1

    .line 946
    return v1

    .line 923
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 932
    .restart local v4    # "r":Lcom/android/server/am/ServiceRecord;
    :catch_0
    move-exception v1

    .line 933
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "ActivityManager"

    const-string/jumbo v6, "isInterestingToUserLocked value at exception"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    return v3

    .line 950
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v4    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_2
    return v3
.end method

.method public isInterestingTopLocked()Z
    .locals 1

    .line 1990
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInterestingToUser()Z

    move-result v0

    return v0
.end method

.method isMonitorCpuUsage()Z
    .locals 1

    .line 1687
    const/4 v0, 0x1

    return v0
.end method

.method isNotResponding()Z
    .locals 1

    .line 1327
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    return v0
.end method

.method isPersistent()Z
    .locals 1

    .line 1336
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 1595
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    return v0
.end method

.method isSilentAnr()Z
    .locals 1

    .line 1675
    invoke-direct {p0}, Lcom/android/server/am/ProcessRecord;->getShowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingForBackgroundTraces()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUsingWrapper()Z
    .locals 1

    .line 1457
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    return v0
.end method

.method kill(Ljava/lang/String;IIZ)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonCode"    # I
    .param p3, "subReason"    # I
    .param p4, "noisy"    # Z

    .line 1031
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_5

    .line 1032
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "kill"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1033
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    .line 1034
    .local v2, "ux_perf":Landroid/util/BoostFramework;
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_1

    if-nez p4, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    if-ne v3, v4, :cond_1

    .line 1035
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Killing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (adj "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1035
    const-string v6, "ActivityManager"

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1039
    :cond_1
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v3, :cond_2

    .line 1040
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3, p0, p2, p3, p1}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 1041
    const/16 v3, 0x7547

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    iget v8, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object p1, v7, v4

    invoke-static {v3, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1042
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 1043
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3, v7}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    goto :goto_0

    .line 1045
    :cond_2
    iput-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 1047
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v3, :cond_3

    .line 1048
    iput-boolean v5, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    .line 1049
    iput-boolean v5, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 1051
    :cond_3
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->mForceStopKill:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    if-nez v3, :cond_4

    .line 1052
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4, v6, v3, v6}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    goto :goto_1

    .line 1054
    :cond_4
    sput-boolean v6, Lcom/android/server/am/ActivityManagerService;->mForceStopKill:Z

    .line 1056
    :goto_1
    nop

    .line 1057
    const/16 v3, 0x1093

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1058
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1060
    .end local v2    # "ux_perf":Landroid/util/BoostFramework;
    :cond_5
    return-void
.end method

.method kill(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonCode"    # I
    .param p3, "noisy"    # Z

    .line 1027
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 1028
    return-void
.end method

.method public synthetic lambda$appNotResponding$0$ProcessRecord()V
    .locals 3

    .line 1704
    const-string v0, "anr"

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    return-void
.end method

.method public synthetic lambda$appNotResponding$1$ProcessRecord()V
    .locals 3

    .line 1882
    const-string v0, "anr"

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    return-void
.end method

.method public synthetic lambda$appNotResponding$2$ProcessRecord()V
    .locals 2

    .line 1885
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1886
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1887
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1888
    return-void

    .line 1887
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .locals 11
    .param p1, "_thread"    # Landroid/app/IApplicationThread;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",app_pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",oom_adj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",setAdj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hasShownUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mCached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",systemNoUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curSchedGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",setProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killedByAm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isDebugging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "seempStr":Ljava/lang/String;
    const/16 v1, 0x182

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 763
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_4

    .line 764
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 765
    .local v1, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_1

    .line 766
    const/4 v3, -0x1

    .line 767
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 766
    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 768
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "ipkg":I
    :goto_0
    if-ltz v2, :cond_0

    .line 769
    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 770
    invoke-virtual {v6, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v6

    .line 771
    const/4 v7, -0x1

    invoke-static {v7}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 772
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 769
    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    .line 768
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 774
    .end local v2    # "ipkg":I
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 776
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 778
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 779
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 780
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v3

    .line 781
    .local v3, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v4, v1, :cond_2

    .line 782
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 784
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v8, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v4, p2

    move-object v5, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 786
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v4, v5, :cond_3

    .line 787
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 779
    .end local v3    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 791
    .end local v1    # "origBase":Lcom/android/internal/app/procstats/ProcessState;
    .end local v2    # "i":I
    :cond_4
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 792
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 793
    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .locals 4

    .line 1134
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1156
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1135
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1136
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1137
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v2, v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "{null}"

    if-eqz v2, :cond_2

    .line 1138
    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1139
    :cond_2
    if-eqz v1, :cond_3

    .line 1140
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1142
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    :goto_1
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v2, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_4

    .line 1146
    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1149
    :cond_4
    if-eqz v1, :cond_5

    .line 1150
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1152
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .locals 11
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",app_pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",oom_adj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",setAdj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hasShownUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mCached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",systemNoUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curSchedGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",setProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killedByAm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isDebugging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "seempStr":Ljava/lang/String;
    const/16 v1, 0x183

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 808
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 809
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 810
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 811
    .local v2, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v2, :cond_3

    .line 812
    if-eqz v2, :cond_1

    .line 813
    const/4 v4, -0x1

    .line 814
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 813
    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 815
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ipkg":I
    :goto_0
    if-ltz v3, :cond_0

    .line 816
    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 817
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v7

    .line 818
    const/4 v8, -0x1

    invoke-static {v8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 819
    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v9

    iget-wide v9, v9, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 816
    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    .line 815
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 821
    .end local v3    # "ipkg":I
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 823
    :cond_1
    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 824
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 825
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v4

    .line 826
    .local v4, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v5, v2, :cond_2

    .line 827
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 829
    :cond_2
    iput-object v1, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 830
    iput-object v1, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 824
    .end local v4    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 833
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method modifyRawOomAdj(I)I
    .locals 1
    .param p1, "adj"    # I

    .line 979
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-eqz v0, :cond_5

    .line 985
    if-gez p1, :cond_0

    goto :goto_0

    .line 987
    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 988
    const/16 p1, 0x64

    goto :goto_0

    .line 989
    :cond_1
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_2

    .line 990
    const/16 p1, 0xc8

    goto :goto_0

    .line 991
    :cond_2
    const/16 v0, 0xfa

    if-ge p1, v0, :cond_3

    .line 992
    const/16 p1, 0xfa

    goto :goto_0

    .line 993
    :cond_3
    const/16 v0, 0x384

    if-ge p1, v0, :cond_4

    .line 994
    const/16 p1, 0x384

    goto :goto_0

    .line 995
    :cond_4
    const/16 v0, 0x3e7

    if-ge p1, v0, :cond_5

    .line 996
    add-int/lit8 p1, p1, 0x1

    .line 999
    :cond_5
    :goto_0
    return p1
.end method

.method numberOfRunningServices()I
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method public onStartActivity(IZLjava/lang/String;J)V
    .locals 3
    .param p1, "topProcessState"    # I
    .param p2, "setProfileProc"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # J

    .line 1610
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1611
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 1612
    if-eqz p2, :cond_0

    .line 1613
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityManagerService$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 1615
    :cond_0
    if-eqz p3, :cond_1

    .line 1616
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p0, p3, p4, p5, v1}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1620
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/server/am/ProcessRecord;->updateProcessInfo(ZZZ)V

    .line 1622
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 1623
    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1624
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1625
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1626
    return-void

    .line 1625
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public permRequestDec()V
    .locals 3

    .line 2002
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    .line 2003
    const-string v1, "ActivityManager"

    if-gez v0, :cond_0

    .line 2007
    const-string/jumbo v0, "negative perRequestCount! reset to zero"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    .line 2013
    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    if-nez v0, :cond_1

    .line 2014
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Lcom/android/server/am/OpBGFrozenInjector;->permRequestDecEvent(I)V

    .line 2018
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "permRequestCountDec: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    return-void
.end method

.method public permRequestInc()V
    .locals 2

    .line 1997
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "permRequestCountInc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    return-void
.end method

.method removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V
    .locals 2
    .param p1, "entity"    # Landroid/os/Binder;

    .line 1467
    if-nez p1, :cond_0

    return-void

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1469
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    .line 1470
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    .line 1469
    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setAllowBackgroundActivityStarts(Z)V

    .line 1471
    return-void
.end method

.method resetCachedInfo()V
    .locals 2

    .line 2028
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedHasActivities:I

    .line 2029
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsHeavyWeight:I

    .line 2030
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedHasVisibleActivities:I

    .line 2031
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsHomeProcess:I

    .line 2032
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsPreviousProcess:I

    .line 2033
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedHasRecentTasks:I

    .line 2034
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedIsReceivingBroadcast:I

    .line 2035
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedAdj:I

    .line 2036
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedForegroundActivities:Z

    .line 2037
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->mCachedProcState:I

    .line 2038
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCachedSchedGroup:I

    .line 2039
    return-void
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .locals 19
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 1208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v1

    .line 1209
    .local v1, "N":I
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1211
    .local v10, "now":J
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v5, -0x1

    .line 1212
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 1211
    move-wide v7, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 1213
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "ipkg":I
    :goto_0
    if-ltz v2, :cond_0

    .line 1214
    const/4 v12, 0x3

    iget v13, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1215
    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v15

    .line 1216
    const/4 v4, -0x1

    invoke-static {v4}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v16

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1217
    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1214
    move-wide/from16 v17, v4

    invoke-static/range {v12 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    .line 1213
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1219
    .end local v2    # "ipkg":I
    :cond_0
    if-eq v1, v3, :cond_4

    .line 1220
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1221
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v3

    .line 1222
    .local v3, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v4, v5, :cond_1

    .line 1223
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 1220
    .end local v3    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1227
    .end local v2    # "i":I
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->clear()V

    .line 1228
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v3, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 1230
    .local v2, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v3, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v12, p1

    move-object v13, v2

    move-wide/from16 v16, v3

    move-object/from16 v18, v5

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1232
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1233
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v3, v4, :cond_4

    .line 1234
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_2

    .line 1237
    .end local v2    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .end local v10    # "now":J
    :cond_3
    if-eq v1, v3, :cond_4

    .line 1238
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->clear()V

    .line 1239
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v4, v5, v6}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    goto :goto_3

    .line 1237
    :cond_4
    :goto_2
    nop

    .line 1241
    :goto_3
    return-void
.end method

.method scheduleCrash(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .line 1005
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1

    .line 1007
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1008
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "scheduleCrash: trying to crash system process!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-void

    .line 1011
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1013
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1021
    goto :goto_2

    .line 1020
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1014
    :catch_0
    move-exception v2

    .line 1017
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleCrash for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1020
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1021
    throw v2

    .line 1024
    .end local v0    # "ident":J
    :cond_1
    :goto_2
    return-void
.end method

.method setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V
    .locals 5
    .param p1, "instr"    # Lcom/android/server/am/ActiveInstrumentation;

    .line 1521
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 1522
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1523
    .local v2, "isInstrumenting":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_1

    iget-boolean v4, p1, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/WindowProcessController;->setInstrumenting(ZZ)V

    .line 1525
    return-void
.end method

.method setCached(Z)V
    .locals 1
    .param p1, "cached"    # Z

    .line 890
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mCached:Z

    if-eq v0, p1, :cond_0

    .line 891
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mCached:Z

    .line 892
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->onProcCachedStateChanged(Z)V

    .line 894
    :cond_0
    return-void
.end method

.method setCrashing(Z)V
    .locals 1
    .param p1, "crashing"    # Z

    .line 1313
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    .line 1314
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCrashing(Z)V

    .line 1315
    return-void
.end method

.method setCurProcState(I)V
    .locals 1
    .param p1, "curProcState"    # I

    .line 1281
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    .line 1282
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCurrentProcState(I)V

    .line 1283
    return-void
.end method

.method setCurRawAdj(I)V
    .locals 2
    .param p1, "curRawAdj"    # I

    .line 1532
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    .line 1533
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    const/16 v1, 0xc8

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setPerceptible(Z)V

    .line 1534
    return-void
.end method

.method setCurRawProcState(I)V
    .locals 0
    .param p1, "curRawProcState"    # I

    .line 1290
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurRawProcState:I

    .line 1291
    return-void
.end method

.method setCurrentSchedulingGroup(I)V
    .locals 1
    .param p1, "curSchedGroup"    # I

    .line 1272
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    .line 1273
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCurrentSchedulingGroup(I)V

    .line 1274
    return-void
.end method

.method setDebugging(Z)V
    .locals 1
    .param p1, "debugging"    # Z

    .line 1443
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    .line 1444
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setDebugging(Z)V

    .line 1445
    return-void
.end method

.method setFgInteractionTime(J)V
    .locals 1
    .param p1, "fgInteractionTime"    # J

    .line 1425
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    .line 1426
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setFgInteractionTime(J)V

    .line 1427
    return-void
.end method

.method setHasClientActivities(Z)V
    .locals 1
    .param p1, "hasClientActivities"    # Z

    .line 1389
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    .line 1390
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasClientActivities(Z)V

    .line 1391
    return-void
.end method

.method setHasForegroundActivities(Z)V
    .locals 1
    .param p1, "hasForegroundActivities"    # Z

    .line 1380
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    .line 1381
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasForegroundActivities(Z)V

    .line 1382
    return-void
.end method

.method setHasForegroundServices(ZI)V
    .locals 1
    .param p1, "hasForegroundServices"    # Z
    .param p2, "fgServiceTypes"    # I

    .line 1349
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    .line 1350
    iput p2, p0, Lcom/android/server/am/ProcessRecord;->mFgServiceTypes:I

    .line 1351
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasForegroundServices(Z)V

    .line 1352
    return-void
.end method

.method setHasOverlayUi(Z)V
    .locals 1
    .param p1, "hasOverlayUi"    # Z

    .line 1407
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasOverlayUi:Z

    .line 1408
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasOverlayUi(Z)V

    .line 1409
    return-void
.end method

.method setHasTopUi(Z)V
    .locals 1
    .param p1, "hasTopUi"    # Z

    .line 1398
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasTopUi:Z

    .line 1399
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasTopUi(Z)V

    .line 1400
    return-void
.end method

.method setInteractionEventTime(J)V
    .locals 1
    .param p1, "interactionEventTime"    # J

    .line 1416
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    .line 1417
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setInteractionEventTime(J)V

    .line 1418
    return-void
.end method

.method setNotResponding(Z)V
    .locals 1
    .param p1, "notResponding"    # Z

    .line 1322
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    .line 1323
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setNotResponding(Z)V

    .line 1324
    return-void
.end method

.method public setPendingUiClean(Z)V
    .locals 2
    .param p1, "pendingUiClean"    # Z

    .line 1561
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1562
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    .line 1563
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessController;->setPendingUiClean(Z)V

    .line 1564
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1565
    return-void

    .line 1564
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPendingUiCleanAndForceProcessStateUpTo(I)V
    .locals 2
    .param p1, "newState"    # I

    .line 1573
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1574
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1575
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1576
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1577
    return-void

    .line 1576
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setPersistent(Z)V
    .locals 1
    .param p1, "persistent"    # Z

    .line 1331
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 1332
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setPersistent(Z)V

    .line 1333
    return-void
.end method

.method public setPid(I)V
    .locals 1
    .param p1, "_pid"    # I

    .line 743
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 744
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setPid(I)V

    .line 745
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->procStatFile:Ljava/lang/String;

    .line 746
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    .line 747
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    .line 748
    return-void
.end method

.method setReportedForegroundServiceTypes(I)V
    .locals 0
    .param p1, "foregroundServiceTypes"    # I

    .line 1376
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRepFgServiceTypes:I

    .line 1377
    return-void
.end method

.method setReportedProcState(I)V
    .locals 8
    .param p1, "repProcState"    # I

    .line 1298
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 1299
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ipkg":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1300
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1301
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 1302
    invoke-static {v5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1303
    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1300
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    .line 1299
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1305
    .end local v0    # "ipkg":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setReportedProcState(I)V

    .line 1306
    return-void
.end method

.method public setRequiredAbi(Ljava/lang/String;)V
    .locals 1
    .param p1, "requiredAbi"    # Ljava/lang/String;

    .line 1340
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    .line 1341
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setRequiredAbi(Ljava/lang/String;)V

    .line 1342
    return-void
.end method

.method public setRunningRemoteAnimation(Z)V
    .locals 4
    .param p1, "runningRemoteAnimation"    # Z

    .line 1637
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1638
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "system can\'t run remote animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    return-void

    .line 1641
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1642
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-ne v1, p1, :cond_1

    .line 1643
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1645
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    .line 1646
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_2

    .line 1647
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting runningRemoteAnimation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    const-string/jumbo v3, "updateOomAdj_uiVisibility"

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 1651
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1652
    return-void

    .line 1651
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;J)V
    .locals 0
    .param p1, "startUid"    # I
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "seInfo"    # Ljava/lang/String;
    .param p4, "startTime"    # J

    .line 414
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->startUid:I

    .line 415
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 416
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->seInfo:Ljava/lang/String;

    .line 417
    iput-wide p4, p0, Lcom/android/server/am/ProcessRecord;->startTime:J

    .line 418
    return-void
.end method

.method setUsingWrapper(Z)V
    .locals 1
    .param p1, "usingWrapper"    # Z

    .line 1452
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    .line 1453
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setUsingWrapper(Z)V

    .line 1454
    return-void
.end method

.method setWhenUnimportant(J)V
    .locals 1
    .param p1, "whenUnimportant"    # J

    .line 1434
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mWhenUnimportant:J

    .line 1435
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setWhenUnimportant(J)V

    .line 1436
    return-void
.end method

.method startAppProblemLocked()V
    .locals 7

    .line 1946
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 1948
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 1949
    .local v3, "userId":I
    iget v4, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v3, :cond_0

    .line 1950
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 1948
    .end local v3    # "userId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1954
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1955
    return-void
.end method

.method startService(Lcom/android/server/am/ServiceRecord;)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/am/ServiceRecord;

    .line 842
    if-nez p1, :cond_0

    .line 843
    const/4 v0, 0x0

    return v0

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 846
    .local v0, "added":Z
    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessController;->onServiceStarted(Landroid/content/pm/ServiceInfo;)V

    .line 849
    :cond_1
    return v0
.end method

.method stopAllServices()V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 867
    return-void
.end method

.method stopService(Lcom/android/server/am/ServiceRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/am/ServiceRecord;

    .line 859
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1088
    return-object v0

    .line 1090
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1091
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 1092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    return-object v1
.end method

.method toShortString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1096
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1097
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1098
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1100
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 1101
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1103
    :cond_0
    const/16 v0, 0x75

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1104
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1105
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1106
    .local v0, "appId":I
    if-lt v0, v1, :cond_1

    .line 1107
    const/16 v1, 0x61

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1108
    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1110
    :cond_1
    const/16 v1, 0x73

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1113
    :goto_0
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v2, :cond_2

    .line 1114
    const/16 v1, 0x69

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1115
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const v2, 0x182b8

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1118
    .end local v0    # "appId":I
    :cond_2
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1121
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1122
    return-object v0

    .line 1124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1125
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1128
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 1129
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unlinkDeathRecipient()V
    .locals 3

    .line 954
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1

    .line 955
    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 958
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->killReason:I

    if-nez v0, :cond_0

    .line 959
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->killReason:I

    .line 961
    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {p0, v0}, Lcom/android/server/am/OpAppRecordInjector;->processDie(Lcom/android/server/am/ProcessRecord;I)V

    .line 964
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 965
    return-void
.end method

.method updateBoundClientUids()V
    .locals 9

    .line 1479
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1480
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->clearBoundClientUids()V

    .line 1481
    return-void

    .line 1484
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1485
    .local v0, "boundClientUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1486
    .local v1, "serviceCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1487
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    .line 1488
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1489
    .local v3, "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1490
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "conni":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 1491
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1492
    .local v6, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 1493
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    iget v8, v8, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1492
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1490
    .end local v6    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v7    # "i":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1486
    .end local v3    # "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v4    # "N":I
    .end local v5    # "conni":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1497
    .end local v2    # "j":I
    :cond_3
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 1498
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1499
    return-void
.end method

.method updateHasAboveClientLocked()V
    .locals 4

    .line 968
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 969
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 970
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 971
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v3, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 972
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 973
    goto :goto_1

    .line 969
    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 976
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public updateProcessInfo(ZZZ)V
    .locals 3
    .param p1, "updateServiceConnectionActivities"    # Z
    .param p2, "activityChange"    # Z
    .param p3, "updateOomAdj"    # Z

    .line 1582
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1583
    if-eqz p1, :cond_0

    .line 1584
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1586
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1587
    if-eqz p3, :cond_1

    .line 1588
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_activityChange"

    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1590
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1591
    return-void

    .line 1590
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateServiceConnectionActivities()V
    .locals 2

    .line 1554
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1555
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1556
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1557
    return-void

    .line 1556
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
