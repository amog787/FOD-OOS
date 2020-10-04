.class public Lcom/android/server/am/ActivityManagerServiceInjector;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceInjector$DockDividerVisibilityListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_PROCESS_ADJ_CONTROL:Z

.field private static final IS_HIDE_PCB_FEATURE:Z

.field public static final KILL_HIGH_CONSUMPT_TIMEOUT:J = 0x1d4c0L

.field private static final PROCESS_ADJ_CONTROL_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "ActivityManagerServiceInjector"

.field private static final TURN_OFF_DEVICE_CHECK_TIME:I = 0x2bf20

.field private static final TURN_OFF_DEVICE_TIMEOUT:I = 0x1b7740

.field public static final UPDATE_PROCESS_DURATION_MSG:I = 0x457

.field public static final UPDATE_PROCESS_LAUNCH_TIMES_MSG:I = 0x458

.field private static mAmsInjector:Lcom/android/server/am/ActivityManagerServiceInjector;

.field public static mHighConsumptionAppPid:I

.field public static mHighConsumptionTime:J

.field private static opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

.field private static opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

.field private static rmTaskSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sRestartWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private class1:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private items:Ljava/lang/Object;

.field mAllowLaunchBackground:Z

.field private mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;

.field private mContext:Landroid/content/Context;

.field private mDockDividerVisibilityListener:Lcom/android/server/am/ActivityManagerServiceInjector$DockDividerVisibilityListener;

.field private mHandler:Landroid/os/Handler;

.field private mHidePcbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHidePcbWindow:Z

.field private mInputMethodVisible:Z

.field private mIsMultiWindowMode:Z

.field private mLastInputEvent:J

.field mLaunchPackageName:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mPcbView:Landroid/view/View;

.field private mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field private mPointerEventListenerRegistered:Z

.field private mResetAllowLaunchBackground:Ljava/lang/Runnable;

.field private mTurnOffScreenIfSetupIdle:Ljava/lang/Runnable;

.field private mWmService:Lcom/android/server/wm/WindowManagerService;

.field private pcb:Ljava/lang/String;

.field qcHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->DEBUG:Z

    .line 81
    const-string v0, "ActivityManagerServiceInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->DEBUG_PROCESS_ADJ_CONTROL:Z

    .line 83
    new-array v0, v1, [I

    const/16 v1, 0xcc

    aput v1, v0, v2

    .line 84
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->PROCESS_ADJ_CONTROL_ENABLED:Z

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    .line 86
    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sRestartWhiteList:Ljava/util/ArrayList;

    .line 117
    nop

    .line 118
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "msmnile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->IS_HIDE_PCB_FEATURE:Z

    .line 138
    sput v2, Lcom/android/server/am/ActivityManagerServiceInjector;->mHighConsumptionAppPid:I

    .line 139
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHighConsumptionTime:J

    .line 809
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->rmTaskSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastInputEvent:J

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListenerRegistered:Z

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.oneplus.factorymode/.touchscreen.TPCalibrationActivity"

    const-string v4, "com.oneplus.factorymode/.LCDtest.LCDColorTest"

    const-string v5, "com.oneplus.factorymode/.autoaging.LCDTest"

    const-string v6, "com.oneplus.factorymode/.manualtest.modeltest.ModelLcdColorTest"

    const-string v7, "com.oem.autotest/.lcd.LcdColorTestActivity"

    const-string v8, "com.oneplus.factorymode/.manualtest.LCMFrequencySwitchTest"

    const-string v9, "com.fingerprints.fingerprintsensortest"

    const-string v10, "com.oneplus.gallery"

    const-string v11, "com.oneplus.factorymode/.touchscreen.AutoTouchScreenTest"

    const-string v12, "com.oneplus.factorymode/.manualtest.modeltest.ModelTouchScreeen"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbList:Ljava/util/ArrayList;

    .line 133
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbWindow:Z

    .line 146
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLaunchPackageName:Ljava/lang/String;

    .line 150
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mIsMultiWindowMode:Z

    .line 151
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLock:Ljava/lang/Object;

    .line 152
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mInputMethodVisible:Z

    .line 153
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerServiceInjector$1;-><init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 176
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerServiceInjector$2;-><init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mTurnOffScreenIfSetupIdle:Ljava/lang/Runnable;

    .line 347
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->items:Ljava/lang/Object;

    .line 348
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->class1:Ljava/lang/Class;

    .line 349
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->pcb:Ljava/lang/String;

    .line 351
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerServiceInjector$3;-><init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->qcHandler:Landroid/os/Handler;

    .line 683
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$8;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerServiceInjector$8;-><init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResetAllowLaunchBackground:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityManagerServiceInjector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 77
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListenerRegistered:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/ActivityManagerServiceInjector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListenerRegistered:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 77
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 77
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->items:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/ActivityManagerServiceInjector;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->showPCBNo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/am/ActivityManagerServiceInjector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mIsMultiWindowMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityManagerServiceInjector;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 77
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 77
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 77
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mTurnOffScreenIfSetupIdle:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 77
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 77
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/ActivityManagerServiceInjector;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 77
    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastInputEvent:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 77
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->class1:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 77
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->pcb:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/am/ActivityManagerServiceInjector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceInjector;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->pcb:Ljava/lang/String;

    return-object p1
.end method

.method public static addRestartWhitelist()V
    .locals 1

    .line 608
    const-string v0, "com.oppo.qetest"

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->addRestartWhitelist(Ljava/lang/String;)V

    .line 609
    const-string v0, "com.oppo.qemonitor"

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->addRestartWhitelist(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method private static addRestartWhitelist(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 613
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sRestartWhiteList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 614
    :try_start_0
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sRestartWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sRestartWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_0
    monitor-exit v0

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static final checkRestart(Lcom/android/server/am/ProcessRecord;ZI)Z
    .locals 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "mAllowLowerMemLevel"    # Z
    .param p2, "lastMemoryLevel"    # I

    .line 274
    const/4 v0, 0x1

    .line 275
    .local v0, "needRestart":Z
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->isExcludedAPP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    return v0

    .line 279
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-lt p2, v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 281
    invoke-static {v1}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doIsHighUsedPackages(Ljava/lang/String;)Z

    move-result v1

    .line 282
    .local v1, "isImportant":Z
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 283
    const/4 v0, 0x0

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMS will block "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") autostart due to process is killed by lmk in low memory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManagerServiceInjector"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v1    # "isImportant":Z
    :cond_1
    return v0
.end method

.method public static cleanupProcessesByWatchdog(Lcom/android/server/am/ProcessList;JI)V
    .locals 9
    .param p0, "processList"    # Lcom/android/server/am/ProcessList;
    .param p1, "timeout"    # J
    .param p3, "myPid"    # I

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 546
    .local v0, "NP":I
    const/4 v1, 0x0

    .local v1, "ip":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 547
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 548
    .local v2, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v2, :cond_1

    .line 549
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 550
    .local v3, "NA":I
    const/4 v4, 0x0

    .local v4, "ia":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 551
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 552
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    invoke-static {v5, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceInjector;->isProcShouldBeKilled(Lcom/android/server/am/ProcessRecord;JI)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 553
    const-string v6, "ActivityManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CleanupProcesses, killProcessQuiet!, timeout = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", app = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget v6, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcessQuiet(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 546
    .end local v2    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "NA":I
    .end local v4    # "ia":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    .end local v0    # "NP":I
    .end local v1    # "ip":I
    :cond_2
    goto :goto_2

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/ActivityManagerServiceInjector;
    .locals 1

    .line 264
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAmsInjector:Lcom/android/server/am/ActivityManagerServiceInjector;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAmsInjector:Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 267
    :cond_0
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAmsInjector:Lcom/android/server/am/ActivityManagerServiceInjector;

    return-object v0
.end method

.method public static initProcessAdjControl(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 310
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->DEBUG_PROCESS_ADJ_CONTROL:Z

    const-string v1, "ActivityManagerServiceInjector"

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "initProcessAdjControl()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->PROCESS_ADJ_CONTROL_ENABLED:Z

    if-eqz v0, :cond_3

    .line 315
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    if-nez v0, :cond_1

    .line 316
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_process_adj_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 318
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpProcessAdjControl;

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    .line 322
    :cond_1
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    if-eqz v0, :cond_2

    .line 323
    invoke-interface {v0, p0}, Lcom/android/server/am/IOpProcessAdjControl;->init(Landroid/content/Context;)V

    goto :goto_0

    .line 325
    :cond_2
    const-string/jumbo v0, "opProcessAdjControl is null !"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_3
    :goto_0
    return-void
.end method

.method public static isDeepClean(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 331
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x60

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

    if-nez v0, :cond_0

    .line 333
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 335
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartPowerControl;

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

    .line 339
    :cond_0
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

    if-eqz v0, :cond_1

    .line 340
    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartPowerControl;->isDeepClean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 343
    :cond_1
    return v1
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 258
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 259
    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    nop

    .line 258
    :goto_0
    return v1
.end method

.method public static isExcludedAPP(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 298
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sRestartWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process package is in restart whitelist : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 305
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isProcShouldBeKilled(Lcom/android/server/am/ProcessRecord;JI)Z
    .locals 5
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "timeout"    # J
    .param p3, "myPid"    # I

    .line 571
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 572
    return v0

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 575
    return v0

    .line 577
    :cond_1
    const/4 v0, 0x1

    .line 582
    .local v0, "bKilled":Z
    const-wide/16 v1, 0x7530

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    .line 583
    const/4 v0, 0x0

    .line 585
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerServiceInjector;->mHighConsumptionAppPid:I

    if-ne v1, v2, :cond_5

    .line 587
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-nez v1, :cond_5

    .line 592
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/server/am/ActivityManagerServiceInjector;->mHighConsumptionTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1d4c0

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    .line 593
    const/4 v0, 0x1

    goto :goto_0

    .line 599
    :cond_3
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v1, p3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 600
    :cond_4
    const/4 v0, 0x0

    .line 603
    :cond_5
    :goto_0
    return v0
.end method

.method public static isRemoveTsk(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;

    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "isRemoveTsk":Z
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->rmTaskSet:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    const/4 v0, 0x1

    .line 818
    :cond_0
    return v0
.end method

.method public static recordProcesskillbyRMTsk(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .line 811
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->rmTaskSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 812
    return-void
.end method

.method public static removeTskPkg(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .line 821
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->rmTaskSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->rmTaskSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 824
    :cond_0
    return-void
.end method

.method public static sendApplicationFocusGain(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 492
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceInjector$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method

.method public static sendApplicationStart(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 502
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$5;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceInjector$5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 508
    return-void
.end method

.method public static sendApplicationStop(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopReason"    # I

    .line 513
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$6;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceInjector$6;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 519
    return-void
.end method

.method public static sendApplicationStopByForceStop(Landroid/os/Handler;Lcom/android/server/am/ProcessRecord;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 524
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$7;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceInjector$7;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    return-void
.end method

.method private shouldHidePCB(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 477
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 478
    .local v2, "hideName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    return v1

    .line 476
    .end local v2    # "hideName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 483
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final showPCBNo(Ljava/lang/String;)V
    .locals 4
    .param p1, "pcb"    # Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 433
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x50b0007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPcbView:Landroid/view/View;

    .line 434
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 435
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPcbView:Landroid/view/View;

    const v2, 0x5080093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 437
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    const-string v2, "PCB NO."

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 439
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 440
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 441
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 442
    const v2, 0x800053

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 443
    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 444
    const/16 v2, 0x18

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 447
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 448
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 449
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPcbView:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    return-void
.end method

.method public static final transact(ILandroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 6
    .param p0, "code"    # I
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .line 624
    const-string v0, "com.opos.ads"

    const-string v1, "enforce ia"

    const-string v2, "android.app.IActivityManager"

    const-string v3, "! REGISTER_APP_SWITCH_OBSERVER : "

    const-string v4, "ActivityManagerServiceInjector"

    const v5, 0x86d8

    if-ne p0, v5, :cond_2

    .line 625
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void

    .line 632
    :cond_0
    if-nez v1, :cond_1

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-void

    .line 636
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REGISTER_APP_SWITCH_OBSERVER : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    nop

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 637
    invoke-static {v0}, Lcom/android/server/wm/IOPAppSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/wm/IOPAppSwitchObserver;

    move-result-object v0

    .line 639
    .local v0, "observer":Lcom/android/server/wm/IOPAppSwitchObserver;
    sget-object v2, Lcom/color/app/ColorAppSwitchConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/app/ColorAppSwitchConfig;

    .line 640
    .local v2, "config":Lcom/color/app/ColorAppSwitchConfig;
    invoke-static {v1, v0, v2}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->registerAppSwitchObserver(Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Z

    move-result v3

    .line 641
    .local v3, "success":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 643
    .end local v0    # "observer":Lcom/android/server/wm/IOPAppSwitchObserver;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "config":Lcom/color/app/ColorAppSwitchConfig;
    .end local v3    # "success":Z
    goto :goto_0

    .line 644
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "pkgName1":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void

    .line 651
    :cond_3
    if-nez v1, :cond_4

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void

    .line 655
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNREGISTER_APP_SWITCH_OBSERVER : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    sget-object v0, Lcom/color/app/ColorAppSwitchConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/app/ColorAppSwitchConfig;

    .line 657
    .local v0, "config1":Lcom/color/app/ColorAppSwitchConfig;
    invoke-static {v1, v0}, Lcom/android/server/OPAppSwitchManagerServiceInjector;->unregisterAppSwitchObserver(Ljava/lang/String;Lcom/color/app/ColorAppSwitchConfig;)Z

    move-result v2

    .line 658
    .local v2, "success1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 661
    .end local v0    # "config1":Lcom/color/app/ColorAppSwitchConfig;
    .end local v1    # "pkgName1":Ljava/lang/String;
    .end local v2    # "success1":Z
    :goto_0
    return-void
.end method


# virtual methods
.method protected checkProcessExist(Lcom/android/server/am/ActivityManagerService;I)Z
    .locals 4
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "pid"    # I

    .line 694
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 696
    .local v0, "oldMode":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/oom_score_adj"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 697
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 698
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 699
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x45e

    iput v3, v2, Landroid/os/Message;->what:I

    .line 700
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 701
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    const/4 v3, 0x0

    .line 707
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 702
    return v3

    .line 704
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x1

    .line 707
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 704
    return v2

    .line 707
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public getInputMethodVisible()Z
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mInputMethodVisible:Z

    monitor-exit v0

    return v1

    .line 806
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPCBNumber(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 390
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 392
    :try_start_0
    const-string v0, "com.qualcomm.qcnvitems.QcNvItems"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->class1:Ljava/lang/Class;

    .line 393
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 394
    .local v1, "paramTypes":[Ljava/lang/Class;
    new-array v2, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 398
    .local v2, "params":[Ljava/lang/Object;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->class1:Ljava/lang/Class;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 400
    .local v4, "constructors":Ljava/lang/reflect/Constructor;
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->items:Ljava/lang/Object;

    .line 401
    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    .line 402
    .local v6, "cArgs":[Ljava/lang/Class;
    const-class v7, Landroid/os/Handler;

    aput-object v7, v6, v3

    .line 403
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    .line 404
    const-class v7, Ljava/lang/Object;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 406
    new-array v5, v5, [Ljava/lang/Object;

    .line 407
    .local v5, "obj2":[Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->qcHandler:Landroid/os/Handler;

    aput-object v7, v5, v3

    .line 408
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    .line 409
    const/4 v0, 0x0

    aput-object v0, v5, v8

    .line 410
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->class1:Ljava/lang/Class;

    const-string/jumbo v3, "registerOnServiceConnected"

    .line 411
    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 412
    .local v0, "getRegisterOnServiceConnected":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->items:Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    .line 421
    nop

    .end local v0    # "getRegisterOnServiceConnected":Ljava/lang/reflect/Method;
    .end local v5    # "obj2":[Ljava/lang/Object;
    .end local v6    # "cArgs":[Ljava/lang/Class;
    goto :goto_1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 417
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 415
    :catch_2
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 413
    :catch_3
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .line 421
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :goto_0
    nop

    .line 424
    :goto_1
    goto :goto_2

    .line 422
    .end local v4    # "constructors":Ljava/lang/reflect/Constructor;
    :catch_4
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    .line 427
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v1    # "paramTypes":[Ljava/lang/Class;
    .end local v2    # "params":[Ljava/lang/Object;
    :goto_2
    goto :goto_3

    .line 425
    :catch_5
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 429
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_3
    return-void
.end method

.method protected handleUntrackedProcessLocked(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 3
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "pid"    # I

    .line 712
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 713
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle untracked process die start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManagerServiceInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 717
    const-string v1, "Handle untracked process die end"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_0
    return-void
.end method

.method public initAutoShutdown(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 228
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 229
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHandler:Landroid/os/Handler;

    .line 230
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 231
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListenerRegistered:Z

    const-string v1, "ActivityManagerServiceInjector"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 234
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListenerRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in pointer handler. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 241
    .local v0, "powerManager":Landroid/os/PowerManager;
    nop

    .line 242
    const-string v4, "auto_shutdown"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;

    .line 243
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 245
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0x1b8ac8

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastInputEvent:J

    .line 247
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 248
    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPointerEventListenerRegistered:Z

    .line 249
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mTurnOffScreenIfSetupIdle:Ljava/lang/Runnable;

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    const-string v0, "AutoShutdown: init called"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public initOMMDockDividerVisibility()V
    .locals 3

    .line 722
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$DockDividerVisibilityListener;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerServiceInjector$DockDividerVisibilityListener;-><init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mDockDividerVisibilityListener:Lcom/android/server/am/ActivityManagerServiceInjector$DockDividerVisibilityListener;

    .line 724
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mDockDividerVisibilityListener:Lcom/android/server/am/ActivityManagerServiceInjector$DockDividerVisibilityListener;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManagerServiceInjector"

    const-string v2, "Failed to register docked stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 729
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public isAllowLaunchBackground(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 677
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLaunchPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAllowLaunchBackground:Z

    return v0

    .line 680
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isDockedApp(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 763
    const-string v0, "ActivityManagerServiceInjector"

    const/4 v1, 0x0

    .line 765
    .local v1, "isDockedApp":Z
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mIsMultiWindowMode:Z

    if-eqz v2, :cond_4

    .line 766
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x3

    .line 767
    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    .line 768
    .local v2, "primaryStackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v2, :cond_1

    .line 769
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 770
    .local v3, "primaryUserId":I
    iget v5, v2, Landroid/app/ActivityManager$StackInfo;->userId:I

    if-ne v3, v5, :cond_0

    if-eqz p1, :cond_0

    iget-object v5, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 771
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 772
    const/4 v1, 0x1

    .line 774
    .end local v3    # "primaryUserId":I
    :cond_0
    goto :goto_0

    .line 775
    :cond_1
    const-string/jumbo v3, "primaryStackInfo is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    const/4 v5, 0x4

    .line 779
    invoke-interface {v3, v5, v4}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    .line 780
    .local v3, "secondaryStackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v3, :cond_3

    .line 781
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 782
    .local v4, "secondaryUserId":I
    iget v5, v3, Landroid/app/ActivityManager$StackInfo;->userId:I

    if-ne v4, v5, :cond_2

    if-eqz p1, :cond_2

    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 783
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 784
    const/4 v0, 0x1

    move v1, v0

    .line 786
    .end local v4    # "secondaryUserId":I
    :cond_2
    goto :goto_1

    .line 787
    :cond_3
    const-string/jumbo v4, "secondaryStackInfo is null"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    .end local v2    # "primaryStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v3    # "secondaryStackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_4
    :goto_1
    goto :goto_2

    .line 791
    :catch_0
    move-exception v2

    .line 792
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return v1
.end method

.method public synthetic lambda$setPCBVisibility$0$ActivityManagerServiceInjector(Ljava/lang/String;)V
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;

    .line 461
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->shouldHidePCB(Ljava/lang/String;)Z

    move-result v0

    .line 462
    .local v0, "shouldHidePCB":Z
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbWindow:Z

    if-ne v1, v0, :cond_0

    .line 463
    return-void

    .line 465
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbWindow:Z

    .line 466
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mHidePcbWindow:Z

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPcbView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPcbView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :goto_0
    return-void
.end method

.method public setAllowLaunchBackground(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 668
    return-void

    .line 670
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mAllowLaunchBackground:Z

    .line 671
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLaunchPackageName:Ljava/lang/String;

    .line 672
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResetAllowLaunchBackground:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 673
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResetAllowLaunchBackground:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 674
    return-void
.end method

.method public setInputMethodVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 798
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mInputMethodVisible:Z

    .line 800
    monitor-exit v0

    .line 801
    return-void

    .line 800
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPCBVisibility(Ljava/lang/String;)V
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;

    .line 456
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->IS_HIDE_PCB_FEATURE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->mPcbView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector;->qcHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceInjector$33ZOH_tWFDFZtwS02gRRRCurytM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceInjector$33ZOH_tWFDFZtwS02gRRRCurytM;-><init>(Lcom/android/server/am/ActivityManagerServiceInjector;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    return-void

    .line 457
    :cond_1
    :goto_0
    return-void
.end method
