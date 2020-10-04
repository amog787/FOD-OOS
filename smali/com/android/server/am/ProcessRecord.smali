.class Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"

# interfaces
.implements Lcom/android/server/wm/WindowProcessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessRecord$PackageList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field adjSeq:I

.field adjSource:Ljava/lang/Object;

.field adjSourceProcState:I

.field adjTarget:Ljava/lang/Object;

.field adjType:Ljava/lang/String;

.field adjTypeCode:I

.field anrDialog:Landroid/app/Dialog;

.field final appZygote:Z

.field bad:Z

.field baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

.field cached:Z

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

.field crashDialog:Landroid/app/Dialog;

.field crashHandler:Ljava/lang/Runnable;

.field crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field createReason:Ljava/lang/String;

.field curAdj:I

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

.field deathReason:Ljava/lang/String;

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

.field gids:[I

.field hasAboveClient:Z

.field hasShownUi:Z

.field hasStartedServices:Z

.field hostingRecord:Lcom/android/server/am/HostingRecord;

.field public inFullBackup:Z

.field final info:Landroid/content/pm/ApplicationInfo;

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

.field private mCrashing:Z

.field private mCurProcState:I

.field private mCurRawAdj:I

.field private mCurRawProcState:I

.field private mCurSchedGroup:I

.field private mDebugging:Z

.field private mFgInteractionTime:J

.field private mFgServiceTypes:I

.field private mHasClientActivities:Z

.field private mHasForegroundActivities:Z

.field private mHasForegroundServices:Z

.field private mHasOverlayUi:Z

.field private mHasTopUi:Z

.field private mInstr:Lcom/android/server/am/ActiveInstrumentation;

.field private mInteractionEventTime:J

.field private mNotResponding:Z

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private mPendingUiClean:Z

.field private mPersistent:Z

.field private mRepFgServiceTypes:I

.field private mRepProcState:I

.field private mRequiredAbi:Ljava/lang/String;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

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

.field final services:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field setAdj:I

.field setProcState:I

.field setRawAdj:I

.field setSchedGroup:I

.field shortStringName:Ljava/lang/String;

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

.field waitDialog:Landroid/app/Dialog;

.field waitedForDebugger:Z

.field waitingToKill:Ljava/lang/String;

.field whitelistManager:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 11
    .param p1, "_service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "_processName"    # Ljava/lang/String;
    .param p4, "_uid"    # I

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessRecord$PackageList;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 161
    new-instance v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-direct {v0}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 190
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->lastRxBytes:[J

    .line 191
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->lastTxBytes:[J

    .line 212
    const/16 v1, 0x15

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    .line 213
    iput v1, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 214
    iput v1, p0, Lcom/android/server/am/ProcessRecord;->mCurRawProcState:I

    .line 215
    iput v1, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 216
    iput v1, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 276
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    .line 281
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    .line 310
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    .line 312
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    .line 314
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    .line 316
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    .line 318
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    .line 323
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    .line 325
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 643
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 644
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 645
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 646
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const v3, 0x15f90

    if-lt v0, v3, :cond_1

    .line 647
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const v3, 0x182b7

    if-gt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    .line 648
    iput p4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 649
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 650
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 651
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 652
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    .line 653
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->verifiedAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 654
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 655
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 656
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    .line 659
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    .line 660
    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    .line 663
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    .line 665
    new-instance v0, Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v8, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object v3, v0

    move-object v9, p0

    move-object v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/wm/WindowProcessController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/wm/WindowProcessListener;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 667
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-wide v3, p2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 670
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->forkTime:J

    .line 672
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/wm/WindowProcessController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ProcessRecord;

    .line 104
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method

.method private getShowBackground()Z
    .locals 3

    .line 1853
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "anr_show_background"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private makeAppNotRespondingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;

    .line 1754
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->setNotResponding(Z)V

    .line 1757
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    if-eqz v0, :cond_0

    .line 1758
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

    .line 1762
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->startAppProblemLocked()V

    .line 1763
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 1764
    return-void
.end method


# virtual methods
.method addAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V
    .locals 2
    .param p1, "entity"    # Landroid/os/Binder;

    .line 1330
    if-nez p1, :cond_0

    return-void

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1332
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setAllowBackgroundActivityStarts(Z)V

    .line 1333
    return-void
.end method

.method addBoundClientUid(I)V
    .locals 2
    .param p1, "clientUid"    # I

    .line 1343
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1344
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1345
    return-void
.end method

.method addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V
    .locals 6
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;

    .line 1371
    if-nez p1, :cond_0

    .line 1372
    return-void

    .line 1374
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1375
    .local v0, "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "conni":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1376
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1377
    .local v2, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1378
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget v5, v5, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1377
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1375
    .end local v2    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1381
    .end local v1    # "conni":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1382
    return-void
.end method

.method public addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 1036
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1037
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 1039
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v1, p4

    move-object v2, v0

    move-object v3, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1042
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1043
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, v2, :cond_1

    .line 1044
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_0

    .line 1047
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1049
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1051
    .end local v0    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public appDied()V
    .locals 2

    .line 1499
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1500
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1501
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1502
    return-void

    .line 1501
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V
    .locals 30
    .param p1, "activityShortComponentName"    # Ljava/lang/String;
    .param p2, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "parentShortComponentName"    # Ljava/lang/String;
    .param p4, "parentProcess"    # Lcom/android/server/wm/WindowProcessController;
    .param p5, "aboveSystem"    # Z
    .param p6, "annotation"    # Ljava/lang/String;

    .line 1543
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v11, p6

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    .line 1544
    .local v10, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    move-object v9, v0

    .line 1548
    .local v9, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    if-lez v0, :cond_0

    .line 1549
    return-void

    .line 1554
    :cond_0
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    new-instance v2, Lcom/android/server/am/-$$Lambda$ProcessRecord$1qn6-pj5yWgiSnKANZpVz3gwd30;

    invoke-direct {v2, v12}, Lcom/android/server/am/-$$Lambda$ProcessRecord$1qn6-pj5yWgiSnKANZpVz3gwd30;-><init>(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v0, v11, v2}, Lcom/android/server/wm/WindowProcessController;->appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1556
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1557
    .local v7, "anrTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isMonitorCpuUsage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1558
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1561
    :cond_1
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1563
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_2

    .line 1564
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

    .line 1565
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1624
    :catchall_0
    move-exception v0

    move-object/from16 v4, p2

    move/from16 v5, p5

    move-wide/from16 v28, v7

    move-object/from16 v21, v9

    move-object/from16 v24, v10

    move-object v14, v11

    goto/16 :goto_13

    .line 1566
    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v0, :cond_3

    .line 1567
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

    .line 1568
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1569
    :cond_3
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v0, :cond_4

    .line 1570
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

    .line 1571
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1572
    :cond_4
    :try_start_6
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->killedByAm:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v0, :cond_5

    .line 1573
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

    .line 1574
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1575
    :cond_5
    :try_start_8
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->killed:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v0, :cond_6

    .line 1576
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

    .line 1577
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1582
    :cond_6
    const/4 v0, 0x1

    :try_start_a
    invoke-virtual {v12, v0}, Lcom/android/server/am/ProcessRecord;->setNotResponding(Z)V

    .line 1585
    const/16 v3, 0x7538

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v1, v6

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v1, v6

    const/4 v4, 0x4

    aput-object v11, v1, v4

    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1589
    iget v1, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    const-string/jumbo v1, "persist.sys.assert.enable"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1595
    .local v1, "isAssert":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_12

    .line 1597
    :cond_7
    iget v3, v12, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1598
    .local v3, "parentPid":I
    if-eqz v15, :cond_8

    :try_start_b
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v4

    if-lez v4, :cond_8

    .line 1599
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move v3, v4

    .line 1601
    :cond_8
    :try_start_c
    iget v4, v12, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eq v3, v4, :cond_9

    :try_start_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1603
    :cond_9
    :try_start_e
    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v6, v12, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eq v4, v6, :cond_a

    :try_start_f
    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v3, :cond_a

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1605
    :cond_a
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getLruProcessList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    sub-int/2addr v4, v0

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_11

    .line 1606
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getLruProcessList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 1607
    .local v6, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v6, :cond_f

    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_f

    .line 1608
    iget v0, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1609
    .local v0, "myPid":I
    if-lez v0, :cond_e

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v5, :cond_e

    if-eq v0, v3, :cond_e

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v5, :cond_e

    .line 1610
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1611
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1612
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v5, :cond_b

    const-string v5, "ActivityManager"

    move/from16 v19, v1

    .end local v1    # "isAssert":Z
    .local v19, "isAssert":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v3

    .end local v3    # "parentPid":I
    .local v20, "parentPid":I
    const-string v3, "Adding persistent proc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v19    # "isAssert":Z
    .end local v20    # "parentPid":I
    .restart local v1    # "isAssert":Z
    .restart local v3    # "parentPid":I
    :cond_b
    move/from16 v19, v1

    move/from16 v20, v3

    .end local v1    # "isAssert":Z
    .end local v3    # "parentPid":I
    .restart local v19    # "isAssert":Z
    .restart local v20    # "parentPid":I
    goto :goto_1

    .line 1613
    .end local v19    # "isAssert":Z
    .end local v20    # "parentPid":I
    .restart local v1    # "isAssert":Z
    .restart local v3    # "parentPid":I
    :cond_c
    move/from16 v19, v1

    move/from16 v20, v3

    .end local v1    # "isAssert":Z
    .end local v3    # "parentPid":I
    .restart local v19    # "isAssert":Z
    .restart local v20    # "parentPid":I
    iget-boolean v1, v6, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v1, :cond_d

    .line 1614
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v1, :cond_10

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding likely IME: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1617
    :cond_d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1618
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v1, :cond_10

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding ANR proc: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_1

    .line 1609
    .end local v19    # "isAssert":Z
    .end local v20    # "parentPid":I
    .restart local v1    # "isAssert":Z
    .restart local v3    # "parentPid":I
    :cond_e
    move/from16 v19, v1

    move/from16 v20, v3

    .end local v1    # "isAssert":Z
    .end local v3    # "parentPid":I
    .restart local v19    # "isAssert":Z
    .restart local v20    # "parentPid":I
    goto :goto_1

    .line 1607
    .end local v0    # "myPid":I
    .end local v19    # "isAssert":Z
    .end local v20    # "parentPid":I
    .restart local v1    # "isAssert":Z
    .restart local v3    # "parentPid":I
    :cond_f
    move/from16 v19, v1

    move/from16 v20, v3

    .line 1605
    .end local v1    # "isAssert":Z
    .end local v3    # "parentPid":I
    .end local v6    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v19    # "isAssert":Z
    .restart local v20    # "parentPid":I
    :cond_10
    :goto_1
    add-int/lit8 v4, v4, -0x1

    move/from16 v1, v19

    move/from16 v3, v20

    const/4 v0, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .end local v19    # "isAssert":Z
    .end local v20    # "parentPid":I
    .restart local v1    # "isAssert":Z
    .restart local v3    # "parentPid":I
    :cond_11
    move/from16 v19, v1

    move/from16 v20, v3

    .line 1624
    .end local v1    # "isAssert":Z
    .end local v3    # "parentPid":I
    .end local v4    # "i":I
    :cond_12
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 1628
    .local v6, "info":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1629
    const-string v0, "ANR in "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    if-eqz v13, :cond_13

    .line 1631
    const-string v0, " ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    :cond_13
    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    const-string v0, "PID: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    if-eqz v11, :cond_14

    .line 1636
    const-string v0, "Reason: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    :cond_14
    if-eqz v14, :cond_15

    .line 1639
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1640
    const-string v0, "Parent: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    :cond_15
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v5, v0

    .line 1646
    .local v5, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    const/4 v0, 0x0

    .line 1647
    .local v0, "nativeProcs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1648
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 1649
    sget-object v2, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1650
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    move-object v0, v3

    .line 1651
    goto :goto_3

    .line 1648
    :cond_16
    const/4 v4, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    const/4 v4, 0x0

    .end local v1    # "i":I
    :goto_3
    move-object/from16 v18, v0

    goto :goto_4

    .line 1655
    :cond_18
    const/4 v4, 0x0

    sget-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1658
    .end local v0    # "nativeProcs":[Ljava/lang/String;
    .local v18, "nativeProcs":[Ljava/lang/String;
    :goto_4
    if-nez v18, :cond_19

    const/4 v1, 0x0

    goto :goto_5

    :cond_19
    invoke-static/range {v18 .. v18}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    :goto_5
    move-object v3, v1

    .line 1659
    .local v3, "pids":[I
    const/4 v1, 0x0

    .line 1661
    .local v1, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_1b

    .line 1662
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, v3

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v2

    .line 1663
    array-length v0, v3

    move v2, v4

    :goto_6
    if-ge v2, v0, :cond_1a

    aget v20, v3, v2

    .line 1664
    .local v20, "i":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    .end local v20    # "i":I
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    goto :goto_6

    :cond_1a
    move-object v4, v1

    goto :goto_7

    .line 1661
    :cond_1b
    move-object v4, v1

    .line 1670
    .end local v1    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v4, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_7
    nop

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    goto :goto_8

    :cond_1c
    move-object v0, v5

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_9

    :cond_1d
    move-object v1, v9

    .line 1670
    :goto_9
    invoke-static {v10, v0, v1, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v20

    .line 1674
    .local v20, "tracesFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 1675
    .local v1, "cpuInfo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isMonitorCpuUsage()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1676
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1677
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v2

    .line 1678
    :try_start_13
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1679
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1680
    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v1

    goto :goto_a

    .line 1679
    :catchall_1
    move-exception v0

    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    throw v0

    .line 1675
    :cond_1e
    move-object/from16 v22, v1

    .line 1684
    .end local v1    # "cpuInfo":Ljava/lang/String;
    .local v22, "cpuInfo":Ljava/lang/String;
    :goto_a
    invoke-virtual {v5, v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    if-nez v20, :cond_1f

    .line 1689
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 1692
    :cond_1f
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1693
    if-nez v13, :cond_20

    const-string/jumbo v17, "unknown"

    goto :goto_b

    :cond_20
    move-object/from16 v17, v13

    .line 1695
    :goto_b
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1696
    const/16 v21, 0x2

    goto :goto_c

    .line 1697
    :cond_21
    const/16 v21, 0x1

    goto :goto_c

    .line 1698
    :cond_22
    const/16 v21, 0x0

    .line 1699
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1700
    const/16 v24, 0x2

    goto :goto_d

    .line 1701
    :cond_23
    const/16 v24, 0x1

    .line 1702
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v25

    .line 1703
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_24

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_e

    :cond_24
    const-string v1, ""

    :goto_e
    move-object/from16 v26, v1

    .line 1692
    const/16 v1, 0x4f

    move-object/from16 v23, v3

    .end local v3    # "pids":[I
    .local v23, "pids":[I
    move-object v3, v0

    move-object/from16 v27, v4

    .end local v4    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v27, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v4, v17

    move-object/from16 v17, v5

    .end local v5    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v17, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    move-object/from16 v5, p6

    move-object/from16 v16, v6

    const/4 v0, 0x2

    .end local v6    # "info":Ljava/lang/StringBuilder;
    .local v16, "info":Ljava/lang/StringBuilder;
    move/from16 v6, v21

    move-wide/from16 v28, v7

    .end local v7    # "anrTime":J
    .local v28, "anrTime":J
    move/from16 v7, v24

    move/from16 v8, v25

    move-object/from16 v21, v9

    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v21, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    move-object/from16 v9, v26

    invoke-static/range {v1 .. v9}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)I

    .line 1704
    if-eqz v15, :cond_25

    .line 1705
    iget-object v1, v15, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    move-object v7, v1

    goto :goto_f

    :cond_25
    const/4 v7, 0x0

    .line 1706
    .local v7, "parentPr":Lcom/android/server/am/ProcessRecord;
    :goto_f
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/16 v19, 0x0

    const-string v2, "anr"

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    move-object/from16 v9, v22

    move-object/from16 v24, v10

    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v24, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v10, v20

    move-object v14, v11

    move-object/from16 v11, v19

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1709
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/-$$Lambda$ProcessRecord$Cb3MKja7_iTlaFQrvQTzPvLyoT8;

    invoke-direct {v3, v12}, Lcom/android/server/am/-$$Lambda$ProcessRecord$Cb3MKja7_iTlaFQrvQTzPvLyoT8;-><init>(Lcom/android/server/am/ProcessRecord;)V

    new-instance v4, Lcom/android/server/am/-$$Lambda$ProcessRecord$2DImTokd0AWNTECl3WgBxJkOOqs;

    invoke-direct {v4, v12}, Lcom/android/server/am/-$$Lambda$ProcessRecord$2DImTokd0AWNTECl3WgBxJkOOqs;-><init>(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowProcessController;->appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1715
    return-void

    .line 1718
    :cond_26
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1721
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    if-eqz v2, :cond_27

    .line 1722
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    .line 1725
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v2

    if-nez v2, :cond_28

    .line 1726
    const-string v0, "bg anr"

    const/4 v2, 0x1

    invoke-virtual {v12, v0, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1727
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1731
    :cond_28
    nop

    .line 1732
    if-eqz v14, :cond_29

    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_29
    const-string v2, "ANR"

    :goto_10
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1731
    invoke-direct {v12, v13, v2, v3}, Lcom/android/server/am/ProcessRecord;->makeAppNotRespondingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2a

    .line 1738
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1739
    .local v2, "msg":Landroid/os/Message;
    iput v0, v2, Landroid/os/Message;->what:I

    .line 1740
    new-instance v3, Lcom/android/server/am/AppNotRespondingDialog$Data;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    move-object/from16 v4, p2

    move/from16 v5, p5

    :try_start_17
    invoke-direct {v3, v12, v4, v5}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;Z)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1742
    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_11

    .line 1736
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2a
    move-object/from16 v4, p2

    move/from16 v5, p5

    .line 1747
    :goto_11
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v2, v3, v6, v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->sendApplicationStop(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V

    .line 1750
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1751
    return-void

    .line 1750
    :catchall_2
    move-exception v0

    move-object/from16 v4, p2

    move/from16 v5, p5

    :goto_12
    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_12

    .line 1624
    .end local v16    # "info":Ljava/lang/StringBuilder;
    .end local v17    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v18    # "nativeProcs":[Ljava/lang/String;
    .end local v20    # "tracesFile":Ljava/io/File;
    .end local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v22    # "cpuInfo":Ljava/lang/String;
    .end local v23    # "pids":[I
    .end local v24    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v28    # "anrTime":J
    .local v7, "anrTime":J
    .restart local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v4, p2

    move/from16 v5, p5

    move-wide/from16 v28, v7

    move-object/from16 v21, v9

    move-object/from16 v24, v10

    move-object v14, v11

    .end local v7    # "anrTime":J
    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v24    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v28    # "anrTime":J
    :goto_13
    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_13
.end method

.method clearBoundClientUids()V
    .locals 2

    .line 1385
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1386
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1387
    return-void
.end method

.method public clearProfilerIfNeeded()V
    .locals 2

    .line 1411
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1412
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    .line 1413
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$ProfileData;->getProfilerInfo()Landroid/app/ProfilerInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    .line 1414
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$ProfileData;->getProfileProc()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eq v1, p0, :cond_0

    goto :goto_0

    .line 1417
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->clearProfilerLocked()V

    .line 1418
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1419
    return-void

    .line 1415
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1418
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 389
    .local v0, "nowUptime":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "user #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 390
    const-string v2, " uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 391
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v3, :cond_0

    .line 392
    const-string v2, " ISOLATED uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 394
    :cond_0
    const-string v2, " gids={"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    const-string v3, ", "

    if-eqz v2, :cond_2

    .line 396
    const/4 v2, 0x0

    .local v2, "gi":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 397
    if-eqz v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 398
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    aget v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    .end local v2    # "gi":I
    :cond_2
    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mRequiredAbi="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    const-string v4, " instructionSet="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->instructionSet:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 406
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "class="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 409
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "manageSpaceActivityName="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "dir="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    const-string v4, " publicDir="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    const-string v4, " data="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "packageList={"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 418
    if-lez v4, :cond_5

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 421
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    if-eqz v4, :cond_9

    .line 423
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "packageDependencies={"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 425
    if-lez v4, :cond_7

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    :cond_7
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 428
    .end local v4    # "i":I
    :cond_8
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "compat="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 431
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v2, :cond_a

    .line 432
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mInstr="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 434
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "thread="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 435
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " starting="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->starting:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 437
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastActivityTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 439
    const-string v2, " lastPssTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 441
    const-string v2, " pssStatType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pssStatType:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 442
    const-string v2, " nextPssTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 444
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 445
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "adjSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 446
    const-string v2, " lruSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 447
    const-string v2, " lastPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 448
    const-string v2, " lastSwapPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastSwapPss:J

    mul-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 449
    const-string v2, " lastCachedPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    mul-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 450
    const-string v2, " lastCachedSwapPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastCachedSwapPss:J

    mul-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 451
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 452
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "procStateMemTracker: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->dumpLine(Ljava/io/PrintWriter;)V

    .line 454
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "cached="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 455
    const-string v2, " empty="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->empty:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 456
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v2, :cond_b

    .line 457
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "serviceb="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 458
    const-string v2, " serviceHighRam="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 460
    :cond_b
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    if-eqz v2, :cond_c

    .line 461
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "notCachedSinceIdle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 462
    const-string v2, " initialIdlePss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 464
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "oom: max="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 465
    const-string v2, " curRaw="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 466
    const-string v2, " setRaw="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 467
    const-string v2, " cur="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 468
    const-string v2, " set="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 469
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastCompactTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 470
    const-string v2, " lastCompactAction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 471
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mCurSchedGroup="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 472
    const-string v2, " setSchedGroup="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 473
    const-string v2, " systemNoUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 474
    const-string v2, " trimMemoryLevel="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 475
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "curProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 476
    const-string v2, " mRepProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 477
    const-string v2, " pssProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 478
    const-string v2, " setProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 479
    const-string v2, " lastStateTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 481
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 482
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v2, :cond_e

    .line 483
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasShownUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 484
    const-string v2, " pendingUiClean="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 485
    const-string v2, " hasAboveClient="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 486
    const-string v2, " treatLikeActivity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 488
    :cond_e
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    if-nez v2, :cond_f

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v2, :cond_10

    .line 489
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "connectionGroup="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 490
    const-string v2, " Importance="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 491
    const-string v2, " Service="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connectionService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 493
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v2

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-eqz v2, :cond_12

    .line 494
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasTopUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 495
    const-string v2, " hasOverlayUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 496
    const-string v2, " runningRemoteAnimation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 498
    :cond_12
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    if-eqz v2, :cond_14

    .line 499
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mHasForegroundServices="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 500
    const-string v2, " forcingToImportant="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 502
    :cond_14
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    const-wide/16 v3, 0x0

    if-nez v2, :cond_15

    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_18

    .line 503
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "reportedInteraction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 504
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 505
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_16

    .line 506
    const-string v2, " time="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 507
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 509
    :cond_16
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_17

    .line 510
    const-string v2, " fgInteractionTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 511
    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 513
    :cond_17
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 515
    :cond_18
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v2, :cond_19

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v2, :cond_1a

    .line 516
    :cond_19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "persistent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 517
    const-string v2, " removed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 519
    :cond_1a
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    const-string v5, ")"

    if-nez v2, :cond_1b

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    if-nez v2, :cond_1b

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    if-eqz v2, :cond_1c

    .line 520
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasClientActivities="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 521
    const-string v2, " foregroundActivities="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 522
    const-string v2, " (rep="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    :cond_1c
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    cmp-long v2, v6, v3

    if-lez v2, :cond_1d

    .line 525
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastProviderTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 526
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 527
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 529
    :cond_1d
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    cmp-long v2, v6, v3

    if-lez v2, :cond_1e

    .line 530
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastTopTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 531
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 532
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 534
    :cond_1e
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v2, :cond_1f

    .line 535
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasStartedServices="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 537
    :cond_1f
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-eqz v2, :cond_20

    .line 538
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pendingStart="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 540
    :cond_20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "startSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 541
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mountMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v2, Lcom/android/internal/os/Zygote;

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->mountMode:I

    .line 542
    const-string v7, "MOUNT_EXTERNAL_"

    invoke-static {v2, v7, v6}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v6, 0xb

    if-le v2, v6, :cond_22

    .line 544
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastCpuTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 545
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    cmp-long v2, v6, v3

    if-lez v2, :cond_21

    .line 546
    const-string v2, " timeUsed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 547
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 549
    :cond_21
    const-string v2, " whenUnimportant="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 550
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->mWhenUnimportant:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 551
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 553
    :cond_22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastRequestedGc="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 554
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastRequestedGc:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 555
    const-string v2, " lastLowMemory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 556
    iget-wide v2, p0, Lcom/android/server/am/ProcessRecord;->lastLowMemory:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 557
    const-string v2, " reportLowMemory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->reportLowMemory:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 558
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v2, :cond_23

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v2, :cond_24

    .line 559
    :cond_23
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "killed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 560
    const-string v2, " killedByAm="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 561
    const-string v2, " waitingToKill="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    :cond_24
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    if-nez v2, :cond_25

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-nez v2, :cond_25

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-nez v2, :cond_25

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    if-eqz v2, :cond_27

    .line 565
    :cond_25
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDebugging="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 566
    const-string v2, " mCrashing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 567
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 568
    const-string v3, " mNotResponding="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 569
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 570
    const-string v2, " bad="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 573
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v2, :cond_26

    .line 574
    const-string v2, " errorReportReceiver="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 575
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 577
    :cond_26
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 579
    :cond_27
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    if-eqz v2, :cond_28

    .line 580
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "whitelistManager="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 582
    :cond_28
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    if-eqz v2, :cond_2a

    .line 583
    :cond_29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isolatedEntryPoint="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isolatedEntryPointArgs="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 585
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    :cond_2a
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowProcessController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 588
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const-string v3, "  - "

    if-lez v2, :cond_2b

    .line 589
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Services:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_2b

    .line 591
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 590
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 594
    .end local v2    # "i":I
    :cond_2b
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_2c

    .line 595
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Executing Services (fg="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_2c

    .line 598
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 597
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 601
    .end local v2    # "i":I
    :cond_2c
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_2d

    .line 602
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Connections:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_2d

    .line 604
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 603
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 607
    .end local v2    # "i":I
    :cond_2d
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_2e

    .line 608
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Published Providers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_2e

    .line 610
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    -> "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 609
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 614
    .end local v2    # "i":I
    :cond_2e
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2f

    .line 615
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Connected Providers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2f

    .line 617
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {v4}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 620
    .end local v2    # "i":I
    :cond_2f
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30

    .line 621
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Current Receivers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_30

    .line 623
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 622
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 626
    .end local v2    # "i":I
    :cond_30
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_31

    .line 627
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Receivers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_31

    .line 629
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 628
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 632
    .end local v2    # "i":I
    :cond_31
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_32

    .line 633
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Background activity start whitelist tokens:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_32

    .line 635
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 636
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 634
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 639
    .end local v2    # "i":I
    :cond_32
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .locals 8
    .param p1, "newState"    # I

    .line 1064
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    if-le v0, p1, :cond_0

    .line 1065
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 1066
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1067
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1068
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ipkg":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1069
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1070
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 1071
    invoke-static {v5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1072
    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1069
    invoke-static/range {v1 .. v7}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 1068
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1075
    .end local v0    # "ipkg":I
    :cond_0
    return-void
.end method

.method getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;
    .locals 1

    .line 1397
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    return-object v0
.end method

.method public getCpuTime()J
    .locals 2

    .line 1473
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getCurProcState()I
    .locals 1

    .line 1159
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    return v0
.end method

.method getCurRawAdj()I
    .locals 1

    .line 1406
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    return v0
.end method

.method getCurRawProcState()I
    .locals 1

    .line 1167
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurRawProcState:I

    return v0
.end method

.method getCurrentSchedulingGroup()I
    .locals 1

    .line 1150
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    return v0
.end method

.method getFgInteractionTime()J
    .locals 2

    .line 1299
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    return-wide v0
.end method

.method getForegroundServiceTypes()I
    .locals 1

    .line 1237
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

    .line 1505
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method getInteractionEventTime()J
    .locals 2

    .line 1290
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    return-wide v0
.end method

.method getLruProcessList()Ljava/util/List;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 1531
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPackageList()[Ljava/lang/String;
    .locals 4

    .line 1117
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    .line 1118
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 1119
    const/4 v1, 0x0

    return-object v1

    .line 1121
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    .line 1122
    .local v1, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1123
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1125
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

    .line 1129
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    .line 1130
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 1131
    const/4 v1, 0x0

    return-object v1

    .line 1133
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1134
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1135
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

    .line 1134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1137
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public getPid()I
    .locals 1

    .line 1871
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    return v0
.end method

.method public getProcessClassEnum()I
    .locals 2

    .line 1509
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_0

    .line 1510
    const/4 v0, 0x3

    return v0

    .line 1512
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    .line 1513
    const/4 v0, 0x0

    return v0

    .line 1515
    :cond_1
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 1516
    :cond_2
    nop

    .line 1515
    :goto_0
    return v1
.end method

.method getReportedForegroundServiceTypes()I
    .locals 1

    .line 1241
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mRepFgServiceTypes:I

    return v0
.end method

.method getReportedProcState()I
    .locals 1

    .line 1182
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    return v0
.end method

.method getRequiredAbi()Ljava/lang/String;
    .locals 1

    .line 1218
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getSetAdjWithServices()I
    .locals 2

    .line 1055
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_0

    .line 1056
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v0, :cond_0

    .line 1057
    const/16 v0, 0x320

    return v0

    .line 1060
    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1864
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    return v0
.end method

.method getWhenUnimportant()J
    .locals 2

    .line 1308
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mWhenUnimportant:J

    return-wide v0
.end method

.method getWindowProcessController()Lcom/android/server/wm/WindowProcessController;
    .locals 1

    .line 1141
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method

.method hasActivities()Z
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    return v0
.end method

.method hasActivitiesOrRecentTasks()Z
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivitiesOrRecentTasks()Z

    move-result v0

    return v0
.end method

.method hasClientActivities()Z
    .locals 1

    .line 1263
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    return v0
.end method

.method hasForegroundActivities()Z
    .locals 1

    .line 1254
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    return v0
.end method

.method hasForegroundServices()Z
    .locals 1

    .line 1228
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    return v0
.end method

.method hasLocationForegroundServices()Z
    .locals 1

    .line 1232
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

    .line 1281
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasOverlayUi:Z

    return v0
.end method

.method hasPendingUiClean()Z
    .locals 1

    .line 1437
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    return v0
.end method

.method hasRecentTasks()Z
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result v0

    return v0
.end method

.method hasTopUi()Z
    .locals 1

    .line 1272
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mHasTopUi:Z

    return v0
.end method

.method isCrashing()Z
    .locals 1

    .line 1191
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    return v0
.end method

.method isDebugging()Z
    .locals 1

    .line 1317
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    return v0
.end method

.method protected isInterestingForBackgroundTraces()Z
    .locals 3

    .line 1789
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1790
    return v2

    .line 1805
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingTopLocked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1809
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1810
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

    .line 1805
    :goto_1
    return v2
.end method

.method public isInterestingToUserLocked()Z
    .locals 5

    .line 784
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInterestingToUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 785
    return v1

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 789
    .local v0, "servicesSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 793
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 794
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->isForeground:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 795
    return v1

    .line 799
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_1
    goto :goto_1

    .line 797
    :catch_0
    move-exception v3

    .line 798
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 789
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 802
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public isInterestingTopLocked()Z
    .locals 1

    .line 1820
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInterestingToUser()Z

    move-result v0

    return v0
.end method

.method isMonitorCpuUsage()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1537
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x1

    return v0
.end method

.method isNotResponding()Z
    .locals 1

    .line 1200
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    return v0
.end method

.method isPersistent()Z
    .locals 1

    .line 1209
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 1464
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    return v0
.end method

.method isSilentAnr()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1525
    invoke-direct {p0}, Lcom/android/server/am/ProcessRecord;->getShowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingForBackgroundTraces()Z

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

    .line 1326
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    return v0
.end method

.method kill(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "noisy"    # Z

    .line 883
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_5

    .line 884
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "kill"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 885
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    .line 886
    .local v2, "ux_perf":Landroid/util/BoostFramework;
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_1

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    if-ne v3, v4, :cond_1

    .line 887
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Killing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
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

    .line 887
    const-string v6, "ActivityManager"

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 891
    :cond_1
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v3, :cond_2

    .line 892
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

    .line 893
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 894
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3, v7}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    goto :goto_0

    .line 896
    :cond_2
    iput-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 901
    :goto_0
    invoke-static {v6, p0, p1}, Lcom/android/server/am/OpAppBootManagerInjector;->trackProcess(ZLcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 906
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3, v7, v6}, Lcom/oneplus/android/server/am/SmartBoostInjector;->notifyRamBoost(Ljava/lang/String;IZ)V

    .line 909
    iget-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v3, :cond_3

    .line 910
    iput-boolean v5, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    .line 911
    iput-boolean v5, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 914
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->mForceStopKill:Z

    if-nez v3, :cond_4

    .line 915
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4, v6, v3, v6}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    goto :goto_1

    .line 917
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    sput-boolean v6, Lcom/android/server/am/ActivityManagerService;->mForceStopKill:Z

    .line 919
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 921
    .end local v2    # "ux_perf":Landroid/util/BoostFramework;
    :cond_5
    return-void
.end method

.method public synthetic lambda$appNotResponding$0$ProcessRecord()V
    .locals 2

    .line 1554
    const-string v0, "anr"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$appNotResponding$1$ProcessRecord()V
    .locals 2

    .line 1709
    const-string v0, "anr"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$appNotResponding$2$ProcessRecord()V
    .locals 2

    .line 1711
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1712
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1713
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1714
    return-void

    .line 1713
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

    .line 683
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

    .line 685
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",systemNoUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curSchedGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",setProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killedByAm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isDebugging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "seempStr":Ljava/lang/String;
    const/16 v1, 0x182

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 695
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_4

    .line 696
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 697
    .local v1, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_1

    .line 698
    const/4 v3, -0x1

    .line 699
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 698
    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 700
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "ipkg":I
    :goto_0
    if-ltz v2, :cond_0

    .line 701
    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 702
    invoke-virtual {v6, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v6

    .line 703
    const/4 v7, -0x1

    invoke-static {v7}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 704
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 701
    invoke-static/range {v3 .. v9}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 700
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 706
    .end local v2    # "ipkg":I
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 708
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

    .line 710
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 711
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 712
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v3

    .line 713
    .local v3, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v4, v1, :cond_2

    .line 714
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 716
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

    .line 718
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v4, v5, :cond_3

    .line 719
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 711
    .end local v3    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 723
    .end local v1    # "origBase":Lcom/android/internal/app/procstats/ProcessState;
    .end local v2    # "i":I
    :cond_4
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 724
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 725
    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .locals 4

    .line 1007
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1029
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1008
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1009
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1010
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v2, v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "{null}"

    if-eqz v2, :cond_2

    .line 1011
    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1012
    :cond_2
    if-eqz v1, :cond_3

    .line 1013
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1015
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    :goto_1
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v2, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_4

    .line 1019
    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1022
    :cond_4
    if-eqz v1, :cond_5

    .line 1023
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1025
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .locals 11
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 728
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

    .line 730
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",systemNoUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curSchedGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",setProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killedByAm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isDebugging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "seempStr":Ljava/lang/String;
    const/16 v1, 0x183

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 740
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 741
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 742
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 743
    .local v2, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v2, :cond_2

    .line 744
    nop

    .line 745
    const/4 v4, -0x1

    .line 746
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 745
    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 747
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ipkg":I
    :goto_0
    if-ltz v3, :cond_0

    .line 748
    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 749
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v7

    .line 750
    const/4 v8, -0x1

    invoke-static {v8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 751
    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v9

    iget-wide v9, v9, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 748
    invoke-static/range {v4 .. v10}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 747
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 753
    .end local v3    # "ipkg":I
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 755
    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 756
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 757
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v4

    .line 758
    .local v4, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v5, v2, :cond_1

    .line 759
    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 761
    :cond_1
    iput-object v1, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 762
    iput-object v1, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 756
    .end local v4    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 765
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method modifyRawOomAdj(I)I
    .locals 1
    .param p1, "adj"    # I

    .line 836
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-eqz v0, :cond_5

    .line 842
    if-gez p1, :cond_0

    goto :goto_0

    .line 844
    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 845
    const/16 p1, 0x64

    goto :goto_0

    .line 846
    :cond_1
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_2

    .line 847
    const/16 p1, 0xc8

    goto :goto_0

    .line 848
    :cond_2
    const/16 v0, 0xfa

    if-ge p1, v0, :cond_3

    .line 849
    const/16 p1, 0xfa

    goto :goto_0

    .line 850
    :cond_3
    const/16 v0, 0x384

    if-ge p1, v0, :cond_4

    .line 851
    const/16 p1, 0x384

    goto :goto_0

    .line 852
    :cond_4
    const/16 v0, 0x3e7

    if-ge p1, v0, :cond_5

    .line 853
    add-int/lit8 p1, p1, 0x1

    .line 856
    :cond_5
    :goto_0
    return p1
.end method

.method public onStartActivity(IZLjava/lang/String;J)V
    .locals 3
    .param p1, "topProcessState"    # I
    .param p2, "setProfileProc"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # J

    .line 1479
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1480
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 1481
    if-eqz p2, :cond_0

    .line 1482
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProfileData:Lcom/android/server/am/ActivityManagerService$ProfileData;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityManagerService$ProfileData;->setProfileProc(Lcom/android/server/am/ProcessRecord;)V

    .line 1484
    :cond_0
    if-eqz p3, :cond_1

    .line 1485
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p0, p3, p4, p5, v1}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1489
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/server/am/ProcessRecord;->updateProcessInfo(ZZZ)V

    .line 1491
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 1492
    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1493
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1494
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1495
    return-void

    .line 1494
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

    .line 1832
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    .line 1833
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    const-string v1, "ActivityManager"

    if-gez v0, :cond_0

    .line 1837
    const-string/jumbo v0, "negative perRequestCount! reset to zero"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    .line 1843
    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    if-nez v0, :cond_1

    .line 1844
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Lcom/android/server/am/OpBGFrozenInjector;->permRequestDecEvent(I)V

    .line 1848
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

    .line 1849
    return-void
.end method

.method public permRequestInc()V
    .locals 2

    .line 1827
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    .line 1828
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

    .line 1829
    return-void
.end method

.method removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V
    .locals 2
    .param p1, "entity"    # Landroid/os/Binder;

    .line 1336
    if-nez p1, :cond_0

    return-void

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1338
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mAllowBackgroundActivityStartsTokens:Landroid/util/ArraySet;

    .line 1339
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    .line 1338
    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setAllowBackgroundActivityStarts(Z)V

    .line 1340
    return-void
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .locals 19
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 1081
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v1

    .line 1082
    .local v1, "N":I
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1083
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1084
    .local v10, "now":J
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v5, -0x1

    .line 1085
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 1084
    move-wide v7, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 1086
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "ipkg":I
    :goto_0
    if-ltz v2, :cond_0

    .line 1087
    const/4 v12, 0x3

    iget v13, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1088
    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v15

    .line 1089
    const/4 v4, -0x1

    invoke-static {v4}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v16

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1090
    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1087
    move-wide/from16 v17, v4

    invoke-static/range {v12 .. v18}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 1086
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1092
    .end local v2    # "ipkg":I
    :cond_0
    if-eq v1, v3, :cond_4

    .line 1093
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1094
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v3

    .line 1095
    .local v3, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v4, v5, :cond_1

    .line 1096
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 1093
    .end local v3    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1100
    .end local v2    # "i":I
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->clear()V

    .line 1101
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v3, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 1103
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

    .line 1105
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1106
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v3, v4, :cond_4

    .line 1107
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_2

    .line 1110
    .end local v2    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .end local v10    # "now":J
    :cond_3
    if-eq v1, v3, :cond_4

    .line 1111
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord$PackageList;->clear()V

    .line 1112
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v4, v5, v6}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessRecord$PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    goto :goto_3

    .line 1110
    :cond_4
    :goto_2
    nop

    .line 1114
    :goto_3
    return-void
.end method

.method scheduleCrash(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .line 862
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1

    .line 864
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 865
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "scheduleCrash: trying to crash system process!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void

    .line 868
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 870
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 877
    goto :goto_2

    .line 876
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 871
    :catch_0
    move-exception v2

    .line 874
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

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 876
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 880
    .end local v0    # "ident":J
    :cond_1
    :goto_2
    return-void
.end method

.method setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V
    .locals 5
    .param p1, "instr"    # Lcom/android/server/am/ActiveInstrumentation;

    .line 1390
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 1391
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1392
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

    .line 1394
    return-void
.end method

.method setCrashing(Z)V
    .locals 1
    .param p1, "crashing"    # Z

    .line 1186
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mCrashing:Z

    .line 1187
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCrashing(Z)V

    .line 1188
    return-void
.end method

.method setCurProcState(I)V
    .locals 2
    .param p1, "curProcState"    # I

    .line 1154
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    .line 1155
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->mCurProcState:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setCurrentProcState(I)V

    .line 1156
    return-void
.end method

.method setCurRawAdj(I)V
    .locals 2
    .param p1, "curRawAdj"    # I

    .line 1401
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurRawAdj:I

    .line 1402
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    const/16 v1, 0xc8

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setPerceptible(Z)V

    .line 1403
    return-void
.end method

.method setCurRawProcState(I)V
    .locals 0
    .param p1, "curRawProcState"    # I

    .line 1163
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurRawProcState:I

    .line 1164
    return-void
.end method

.method setCurrentSchedulingGroup(I)V
    .locals 1
    .param p1, "curSchedGroup"    # I

    .line 1145
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mCurSchedGroup:I

    .line 1146
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCurrentSchedulingGroup(I)V

    .line 1147
    return-void
.end method

.method setDebugging(Z)V
    .locals 1
    .param p1, "debugging"    # Z

    .line 1312
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    .line 1313
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setDebugging(Z)V

    .line 1314
    return-void
.end method

.method setFgInteractionTime(J)V
    .locals 1
    .param p1, "fgInteractionTime"    # J

    .line 1294
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mFgInteractionTime:J

    .line 1295
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setFgInteractionTime(J)V

    .line 1296
    return-void
.end method

.method setHasClientActivities(Z)V
    .locals 1
    .param p1, "hasClientActivities"    # Z

    .line 1258
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasClientActivities:Z

    .line 1259
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasClientActivities(Z)V

    .line 1260
    return-void
.end method

.method setHasForegroundActivities(Z)V
    .locals 1
    .param p1, "hasForegroundActivities"    # Z

    .line 1249
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundActivities:Z

    .line 1250
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasForegroundActivities(Z)V

    .line 1251
    return-void
.end method

.method setHasForegroundServices(ZI)V
    .locals 1
    .param p1, "hasForegroundServices"    # Z
    .param p2, "fgServiceTypes"    # I

    .line 1222
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasForegroundServices:Z

    .line 1223
    iput p2, p0, Lcom/android/server/am/ProcessRecord;->mFgServiceTypes:I

    .line 1224
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasForegroundServices(Z)V

    .line 1225
    return-void
.end method

.method setHasOverlayUi(Z)V
    .locals 1
    .param p1, "hasOverlayUi"    # Z

    .line 1276
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasOverlayUi:Z

    .line 1277
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasOverlayUi(Z)V

    .line 1278
    return-void
.end method

.method setHasTopUi(Z)V
    .locals 1
    .param p1, "hasTopUi"    # Z

    .line 1267
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mHasTopUi:Z

    .line 1268
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasTopUi(Z)V

    .line 1269
    return-void
.end method

.method setInteractionEventTime(J)V
    .locals 1
    .param p1, "interactionEventTime"    # J

    .line 1285
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mInteractionEventTime:J

    .line 1286
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setInteractionEventTime(J)V

    .line 1287
    return-void
.end method

.method setNotResponding(Z)V
    .locals 1
    .param p1, "notResponding"    # Z

    .line 1195
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mNotResponding:Z

    .line 1196
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setNotResponding(Z)V

    .line 1197
    return-void
.end method

.method public setPendingUiClean(Z)V
    .locals 2
    .param p1, "pendingUiClean"    # Z

    .line 1430
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1431
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPendingUiClean:Z

    .line 1432
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessController;->setPendingUiClean(Z)V

    .line 1433
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1434
    return-void

    .line 1433
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

    .line 1442
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1443
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1444
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1445
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1446
    return-void

    .line 1445
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

    .line 1204
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 1205
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setPersistent(Z)V

    .line 1206
    return-void
.end method

.method public setPid(I)V
    .locals 2
    .param p1, "_pid"    # I

    .line 675
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 676
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setPid(I)V

    .line 677
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->procStatFile:Ljava/lang/String;

    .line 678
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    .line 679
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    .line 680
    return-void
.end method

.method setReportedForegroundServiceTypes(I)V
    .locals 0
    .param p1, "foregroundServiceTypes"    # I

    .line 1245
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRepFgServiceTypes:I

    .line 1246
    return-void
.end method

.method setReportedProcState(I)V
    .locals 8
    .param p1, "repProcState"    # I

    .line 1171
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 1172
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "ipkg":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1173
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1174
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->mRepProcState:I

    .line 1175
    invoke-static {v5}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 1176
    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1173
    invoke-static/range {v1 .. v7}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)I

    .line 1172
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1178
    .end local v0    # "ipkg":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setReportedProcState(I)V

    .line 1179
    return-void
.end method

.method public setRequiredAbi(Ljava/lang/String;)V
    .locals 1
    .param p1, "requiredAbi"    # Ljava/lang/String;

    .line 1213
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    .line 1214
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setRequiredAbi(Ljava/lang/String;)V

    .line 1215
    return-void
.end method

.method setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;J)V
    .locals 0
    .param p1, "startUid"    # I
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "seInfo"    # Ljava/lang/String;
    .param p4, "startTime"    # J

    .line 380
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->startUid:I

    .line 381
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 382
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->seInfo:Ljava/lang/String;

    .line 383
    iput-wide p4, p0, Lcom/android/server/am/ProcessRecord;->startTime:J

    .line 384
    return-void
.end method

.method setUsingWrapper(Z)V
    .locals 1
    .param p1, "usingWrapper"    # Z

    .line 1321
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    .line 1322
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setUsingWrapper(Z)V

    .line 1323
    return-void
.end method

.method setWhenUnimportant(J)V
    .locals 1
    .param p1, "whenUnimportant"    # J

    .line 1303
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mWhenUnimportant:J

    .line 1304
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setWhenUnimportant(J)V

    .line 1305
    return-void
.end method

.method startAppProblemLocked()V
    .locals 7

    .line 1769
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 1771
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 1772
    .local v3, "userId":I
    iget v4, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v3, :cond_0

    .line 1773
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 1771
    .end local v3    # "userId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1777
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1778
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 948
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 949
    return-object v0

    .line 951
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 952
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 953
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    return-object v1
.end method

.method toShortString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 957
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 958
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 959
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 961
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 962
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 964
    :cond_0
    const/16 v0, 0x75

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 965
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 966
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 967
    .local v0, "appId":I
    if-lt v0, v1, :cond_1

    .line 968
    const/16 v1, 0x61

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 969
    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 971
    :cond_1
    const/16 v1, 0x73

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 974
    :goto_0
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v2, :cond_2

    .line 975
    const/16 v1, 0x69

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 976
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const v2, 0x182b8

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 981
    .end local v0    # "appId":I
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/server/am/OpAppBootManagerInjector;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 982
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    .line 983
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_3

    .line 984
    const-string v0, "#sys-app"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 986
    :cond_3
    const-string v0, "#data-app"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    :cond_4
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 995
    return-object v0

    .line 997
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 998
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 1002
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unlinkDeathRecipient()V
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1

    .line 807
    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 810
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->deathReason:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->removeProcess(ILjava/lang/String;)V

    .line 815
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->killReason:I

    if-nez v0, :cond_0

    .line 816
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->killReason:I

    .line 818
    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {p0, v0}, Lcom/android/server/am/OpAppRecordInjector;->processDie(Lcom/android/server/am/ProcessRecord;I)V

    .line 821
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 822
    return-void
.end method

.method updateBoundClientUids()V
    .locals 9

    .line 1348
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->clearBoundClientUids()V

    .line 1350
    return-void

    .line 1353
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1354
    .local v0, "boundClientUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1355
    .local v1, "K":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1356
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    .line 1357
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1358
    .local v3, "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1359
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "conni":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 1360
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1361
    .local v6, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 1362
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    iget v8, v8, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1361
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1359
    .end local v6    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v7    # "i":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1355
    .end local v3    # "conns":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v4    # "N":I
    .end local v5    # "conni":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1366
    .end local v2    # "j":I
    :cond_3
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 1367
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    .line 1368
    return-void
.end method

.method updateHasAboveClientLocked()V
    .locals 4

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 826
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 827
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 828
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v3, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 829
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 830
    goto :goto_1

    .line 826
    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 833
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

    .line 1451
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1452
    if-eqz p1, :cond_0

    .line 1453
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1455
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1456
    if-eqz p3, :cond_1

    .line 1457
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_activityChange"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 1459
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1460
    return-void

    .line 1459
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

    .line 1423
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1424
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1425
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1426
    return-void

    .line 1425
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 925
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 926
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "lruIndex"    # I

    .line 929
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 930
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 931
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 932
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 933
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_0

    .line 934
    const-wide v2, 0x10500000004L

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 935
    const-wide v2, 0x10500000005L

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 937
    :cond_0
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v3, :cond_1

    .line 938
    const-wide v2, 0x10500000006L

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 940
    :cond_1
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 941
    if-ltz p4, :cond_2

    .line 942
    const-wide v2, 0x10500000008L

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 944
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 945
    return-void
.end method
