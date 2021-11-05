.class public Lcom/android/server/wm/WindowProcessController;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "WindowProcessController.java"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/ConfigurationContainer<",
        "Lcom/android/server/wm/ConfigurationContainer;",
        ">;",
        "Lcom/android/server/wm/ConfigurationContainerListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field public lastFgTime:J

.field private final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAllowBackgroundActivityStarts:Z

.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private volatile mBoundClientUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private volatile mCrashing:Z

.field private volatile mCurProcState:I

.field private volatile mCurSchedGroup:I

.field private volatile mDebugging:Z

.field private mDisplayId:I

.field private volatile mFgInteractionTime:J

.field private volatile mHasClientActivities:Z

.field private volatile mHasForegroundActivities:Z

.field private volatile mHasForegroundServices:Z

.field private volatile mHasImeService:Z

.field private volatile mHasOverlayUi:Z

.field private mHasPendingConfigurationChange:Z

.field private volatile mHasTopUi:Z

.field private final mHostActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mInfo:Landroid/content/pm/ApplicationInfo;

.field private volatile mInstrumenting:Z

.field private volatile mInstrumentingWithBackgroundActivityStartPrivileges:Z

.field private volatile mInteractionEventTime:J

.field private volatile mIsActivityConfigOverrideAllowed:Z

.field private mLastActivityFinishTime:J

.field private mLastActivityLaunchTime:J

.field private final mLastReportedConfiguration:Landroid/content/res/Configuration;

.field private final mListener:Lcom/android/server/wm/WindowProcessListener;

.field final mName:Ljava/lang/String;

.field private volatile mNotResponding:Z

.field public final mOwner:Ljava/lang/Object;

.field private mPauseConfigurationDispatchCount:I

.field private volatile mPendingUiClean:Z

.field private volatile mPerceptible:Z

.field private volatile mPersistent:Z

.field private volatile mPid:I

.field final mPkgList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private final mRecentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRepProcState:I

.field private volatile mRequiredAbi:Ljava/lang/String;

.field private mRunningRecentsAnimation:Z

.field private mRunningRemoteAnimation:Z

.field private mThread:Landroid/app/IApplicationThread;

.field final mUid:I

.field final mUserId:I

.field private volatile mUsingWrapper:Z

.field mVrThreadTid:I

.field private volatile mWhenUnimportant:J


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/wm/WindowProcessListener;)V
    .locals 3
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "userId"    # I
    .param p6, "owner"    # Ljava/lang/Object;
    .param p7, "listener"    # Lcom/android/server/wm/WindowProcessListener;

    .line 220
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 109
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    .line 118
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 120
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 167
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBoundClientUids:Landroid/util/ArraySet;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 194
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    .line 221
    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 222
    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 223
    iput p4, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 224
    iput p5, p0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 225
    iput-object p6, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    .line 226
    iput-object p7, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 227
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 228
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 230
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 231
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 232
    .local v0, "isSysUiPackage":Z
    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 235
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 238
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 241
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    .line 243
    return-void
.end method

.method private dispatchConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 1230
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    if-lez v0, :cond_0

    .line 1231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 1232
    return-void

    .line 1234
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 1235
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_2

    .line 1236
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz v0, :cond_1

    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to send config for IME proc "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": no app thread"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_1
    return-void

    .line 1243
    :cond_2
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    const-string v2, " new config "

    if-eqz v0, :cond_3

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending to proc "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_3
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz v0, :cond_4

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending to IME proc "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->seq:I

    .line 1253
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 1254
    invoke-static {p1}, Landroid/app/servertransaction/ConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ConfigurationChangeItem;

    move-result-object v3

    .line 1253
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1255
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    goto :goto_0

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed to schedule configuration change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1259
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private hasActivityInVisibleTask()Z
    .locals 5

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 646
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 647
    .local v2, "task":Lcom/android/server/wm/Task;
    if-nez v2, :cond_0

    .line 648
    goto :goto_1

    .line 650
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 651
    .local v3, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v4, :cond_1

    .line 652
    return v1

    .line 645
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 655
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isBoundByForegroundUid()Z
    .locals 4

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 530
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isUidForeground(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    return v1

    .line 529
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 534
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isEmbedded()Z
    .locals 4

    .line 757
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 758
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 759
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 760
    return v1

    .line 757
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 763
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private shouldSetProfileProc()Z
    .locals 2

    .line 1054
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unregisterActivityConfigurationListener()V
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    .line 1147
    return-void

    .line 1149
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 1150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1151
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1152
    return-void
.end method

.method private updateActivityConfigurationListener()V
    .locals 3

    .line 1161
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_0

    .line 1162
    return-void

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1166
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1167
    .local v1, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 1169
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowProcessController;->registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    .line 1170
    return-void

    .line 1165
    .end local v1    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1175
    .end local v0    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 1176
    return-void
.end method

.method private updateConfiguration()V
    .locals 3

    .line 1208
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1209
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1211
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz v1, :cond_0

    .line 1213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " unchanged for IME proc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    return-void

    .line 1219
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {v1}, Lcom/android/server/wm/WindowProcessListener;->isCached()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1222
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 1223
    return-void

    .line 1226
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowProcessController;->dispatchConfigurationChange(Landroid/content/res/Configuration;)V

    .line 1227
    return-void
.end method

.method private updateRunningRemoteOrRecentsAnimation()V
    .locals 4

    .line 1460
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$uwO6wQlqU3CG7OTdH7NBCKnHs64;->INSTANCE:Lcom/android/server/wm/-$$Lambda$uwO6wQlqU3CG7OTdH7NBCKnHs64;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRecentsAnimation:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRemoteAnimation:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 1462
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1460
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1463
    return-void
.end method


# virtual methods
.method addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 593
    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowProcessController;->setLastActivityLaunchTime(J)V

    .line 594
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    .line 599
    return-void
.end method

.method addHostActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 916
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    return-void

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    return-void
.end method

.method public addPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 581
    monitor-exit v0

    .line 582
    return-void

    .line 581
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addRecentTask(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1299
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    return-void
.end method

.method appDied(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 1098
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    return-void

    .line 1100
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$VDG7MoD_7v7qIdkguJXls8nmhGU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$VDG7MoD_7v7qIdkguJXls8nmhGU;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1102
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1103
    return-void
.end method

.method public appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "annotation"    # Ljava/lang/String;
    .param p2, "killAppCallback"    # Ljava/lang/Runnable;

    .line 1321
    const/4 v0, 0x0

    .line 1322
    .local v0, "targetRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1323
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-nez v2, :cond_0

    .line 1324
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1329
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v2, v3, v4, p1}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1330
    .local v2, "res":I
    if-gez v2, :cond_1

    iget v3, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v4, :cond_1

    .line 1331
    move-object v0, p2

    .line 1336
    .end local v2    # "res":I
    :cond_1
    goto :goto_0

    .line 1333
    :catch_0
    move-exception v2

    .line 1334
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1335
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1337
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1338
    if-eqz v0, :cond_2

    .line 1339
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1341
    :cond_2
    return-void

    .line 1337
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    .locals 6
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "killAppCallback"    # Ljava/lang/Runnable;
    .param p3, "serviceTimeoutCallback"    # Ljava/lang/Runnable;

    .line 1345
    const/4 v0, 0x0

    .line 1346
    .local v0, "targetRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1347
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1348
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1353
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v2, v4, v5, p1}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1354
    .local v2, "res":I
    if-eqz v2, :cond_2

    .line 1355
    if-gez v2, :cond_1

    iget v4, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v4, v5, :cond_1

    .line 1356
    move-object v0, p2

    goto :goto_0

    .line 1358
    :cond_1
    move-object v0, p3

    .line 1365
    .end local v2    # "res":I
    :cond_2
    :goto_0
    nop

    .line 1366
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1367
    if-eqz v0, :cond_3

    .line 1369
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1370
    const/4 v1, 0x1

    return v1

    .line 1372
    :cond_3
    return v3

    .line 1361
    :catch_0
    move-exception v2

    .line 1362
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1363
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1364
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1366
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method areBackgroundActivityStartsAllowed()Z
    .locals 12

    .line 470
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mAllowBackgroundActivityStarts:Z

    const/4 v1, 0x1

    const-string v2, "[WindowProcessController("

    const-string v3, "ActivityTaskManager"

    if-eqz v0, :cond_1

    .line 471
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_0

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")] Activity start allowed: mAllowBackgroundActivityStarts = true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    return v1

    .line 479
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 480
    .local v4, "now":J
    iget-wide v6, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x2710

    cmp-long v0, v6, v8

    if-ltz v0, :cond_2

    iget-wide v6, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    sub-long v6, v4, v6

    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    .line 484
    :cond_2
    iget-wide v6, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLastStopAppSwitchesTime()J

    move-result-wide v10

    cmp-long v0, v6, v10

    if-gtz v0, :cond_b

    iget-wide v6, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 485
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLastStopAppSwitchesTime()J

    move-result-wide v10

    cmp-long v0, v6, v10

    if-lez v0, :cond_3

    goto/16 :goto_0

    .line 493
    :cond_3
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_4

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")] Activity start within "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms grace period but also within stop app switch window"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    if-eqz v0, :cond_6

    .line 502
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_5

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")] Activity start allowed: process instrumenting with background activity starts privileges"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_5
    return v1

    .line 510
    :cond_6
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 511
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_7

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")] Activity start allowed: process has activity in foreground task"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_7
    return v1

    .line 518
    :cond_8
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->isBoundByForegroundUid()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 519
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_9

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")] Activity start allowed: process bound by foreground uid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_9
    return v1

    .line 525
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 486
    :cond_b
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_c

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")] Activity start allowed: within "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms grace period"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_c
    return v1
.end method

.method clearActivities()V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 614
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    .line 615
    return-void
.end method

.method public clearPackageList()V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 588
    monitor-exit v0

    .line 589
    return-void

    .line 588
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearPackagePreferredForHomeActivities()V
    .locals 6

    .line 779
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 780
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 781
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 782
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 783
    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing package preferred activities from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 786
    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 789
    goto :goto_1

    .line 787
    :catch_0
    move-exception v3

    .line 780
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 792
    .end local v1    # "i":I
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 793
    return-void

    .line 792
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method clearProfilerIfNeeded()V
    .locals 3

    .line 1015
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    return-void

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$9Kj79s-YFqaGRhFHazfExnbZExw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$9Kj79s-YFqaGRhFHazfExnbZExw;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1019
    return-void
.end method

.method clearRecentTasks()V
    .locals 2

    .line 1314
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1315
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 1314
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1317
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1318
    return-void
.end method

.method public computeOomAdjFromActivities(ILcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I
    .locals 10
    .param p1, "minTaskLayer"    # I
    .param p2, "callback"    # Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;

    .line 939
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 940
    .local v0, "best":Lcom/android/server/wm/ActivityStack$ActivityState;
    const/4 v1, 0x1

    .line 941
    .local v1, "finishing":Z
    const/4 v2, 0x0

    .line 942
    .local v2, "visible":Z
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v3

    .line 943
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 944
    .local v4, "activitiesSize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v4, :cond_6

    .line 945
    iget-object v6, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 946
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v7, p0, :cond_1

    .line 947
    const-string v7, "ActivityTaskManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " in proc activity list using "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " instead of expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v7, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v8, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v7, v8, :cond_5

    .line 951
    :cond_0
    invoke-virtual {v6, p0}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 956
    :cond_1
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v7, :cond_3

    .line 957
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 958
    .local v7, "task":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_2

    if-lez p1, :cond_2

    .line 959
    iget v8, v7, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 960
    .local v8, "layer":I
    if-ltz v8, :cond_2

    if-le p1, v8, :cond_2

    .line 961
    move p1, v8

    .line 964
    .end local v8    # "layer":I
    :cond_2
    const/4 v2, 0x1

    .line 968
    .end local v7    # "task":Lcom/android/server/wm/Task;
    goto :goto_1

    .line 969
    :cond_3
    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v0, v7, :cond_5

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v0, v7, :cond_5

    .line 970
    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 971
    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    move-object v0, v7

    goto :goto_1

    .line 972
    :cond_4
    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 973
    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    move-object v0, v7

    .line 975
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    and-int/2addr v1, v7

    .line 944
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 980
    .end local v4    # "activitiesSize":I
    .end local v5    # "j":I
    :cond_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    if-eqz v2, :cond_7

    .line 982
    invoke-interface {p2}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onVisibleActivity()V

    goto :goto_2

    .line 983
    :cond_7
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v3, :cond_8

    .line 984
    invoke-interface {p2}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onPausedActivity()V

    goto :goto_2

    .line 985
    :cond_8
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v3, :cond_9

    .line 986
    invoke-interface {p2, v1}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onStoppingActivity(Z)V

    goto :goto_2

    .line 988
    :cond_9
    invoke-interface {p2}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onOtherActivity()V

    .line 991
    :goto_2
    return p1

    .line 980
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public computeRelaunchReason()I
    .locals 5

    .line 995
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 996
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 997
    .local v1, "activitiesSize":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 998
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 999
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-eqz v4, :cond_0

    .line 1000
    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 997
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1003
    .end local v1    # "activitiesSize":I
    .end local v2    # "i":I
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1004
    const/4 v0, 0x0

    return v0

    .line 1003
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;
    .locals 2

    .line 1059
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1060
    .local v0, "currentProfilerInfo":Landroid/app/ProfilerInfo;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1061
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->shouldSetProfileProc()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1064
    :cond_0
    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 1066
    :try_start_0
    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    goto :goto_0

    .line 1067
    :catch_0
    move-exception v1

    .line 1068
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 1071
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    new-instance v1, Landroid/app/ProfilerInfo;

    invoke-direct {v1, v0}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    return-object v1

    .line 1062
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1471
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1472
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1473
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1474
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1475
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  - "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1479
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Recent Tasks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1486
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    if-eqz v1, :cond_2

    .line 1487
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mVrThreadTid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1489
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OverrideConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mLastReportedConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    return-void

    .line 1489
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1496
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-eqz v0, :cond_0

    .line 1497
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/WindowProcessListener;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1499
    :cond_0
    return-void
.end method

.method finishActivities()V
    .locals 5

    .line 727
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 728
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 729
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 730
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 731
    const-string v3, "finish-heavy"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 728
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 1
    .param p1, "index"    # I

    .line 566
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getChildCount()I
    .locals 1

    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public getCpuTime()J
    .locals 2

    .line 1295
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/WindowProcessListener;->getCpuTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method getCurrentProcState()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    return v0
.end method

.method getCurrentSchedulingGroup()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    return v0
.end method

.method public getDisplayContextsWithErrorDialogs(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 895
    .local p1, "displayContexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    if-nez p1, :cond_0

    .line 896
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 899
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 900
    .local v1, "root":Lcom/android/server/wm/RootWindowContainer;
    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContextsWithNonToastVisibleWindows(ILjava/util/List;)V

    .line 902
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 903
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 904
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    .line 905
    .local v4, "displayId":I
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayUiContext(I)Landroid/content/Context;

    move-result-object v5

    .line 907
    .local v5, "c":Landroid/content/Context;
    iget-boolean v6, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v6, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 908
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "displayId":I
    .end local v5    # "c":Landroid/content/Context;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 911
    .end local v1    # "root":Lcom/android/server/wm/RootWindowContainer;
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 912
    return-void

    .line 911
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getDisplayId()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    return v0
.end method

.method getFgInteractionTime()J
    .locals 2

    .line 403
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    return-wide v0
.end method

.method public getInputDispatchingTimeout()J
    .locals 3

    .line 1008
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1009
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isUsingWrapper()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1010
    :cond_0
    const-wide/16 v1, 0x1388

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/32 v1, 0xea60

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-wide v1

    .line 1011
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getInteractionEventTime()J
    .locals 2

    .line 395
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    return-wide v0
.end method

.method getLastReportedConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 1266
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    return v0
.end method

.method getReportedProcState()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    return v0
.end method

.method getRequiredAbi()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    return-object v0
.end method

.method getThread()Landroid/app/IApplicationThread;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method getWhenUnimportant()J
    .locals 2

    .line 411
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    return-wide v0
.end method

.method public hasActivities()Z
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 621
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasActivitiesOrRecentTasks()Z
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 641
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasClientActivities()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    return v0
.end method

.method hasForegroundActivities()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundActivities:Z

    return v0
.end method

.method hasForegroundServices()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    return v0
.end method

.method hasOverlayUi()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    return v0
.end method

.method hasPendingUiClean()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    return v0
.end method

.method public hasRecentTasks()Z
    .locals 2

    .line 1308
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1309
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1310
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasResumedActivity()Z
    .locals 4

    .line 809
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 810
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 811
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 812
    return v1

    .line 809
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 815
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasRunningActivity(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 767
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 768
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 769
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 770
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 771
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 768
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 774
    .end local v1    # "i":I
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 775
    const/4 v0, 0x0

    return v0

    .line 774
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4
    .param p1, "launchedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 796
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 797
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 798
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-ne p1, v2, :cond_0

    .line 799
    goto :goto_1

    .line 801
    :cond_0
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v3, :cond_1

    .line 802
    return v1

    .line 796
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 805
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method hasThread()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasTopUi()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    return v0
.end method

.method public hasVisibleActivities()Z
    .locals 5

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 627
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 628
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 629
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v4, :cond_0

    .line 630
    monitor-exit v0

    return v2

    .line 627
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 633
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 634
    const/4 v0, 0x0

    return v0

    .line 633
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isCrashing()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    return v0
.end method

.method isDebugging()Z
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mDebugging:Z

    return v0
.end method

.method public isHomeProcess()Z
    .locals 2

    .line 1429
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1430
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1431
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isInstrumenting()Z
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    return v0
.end method

.method public isInterestingToUser()Z
    .locals 6

    .line 737
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 738
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 739
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    .line 740
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 741
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 742
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 739
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    .end local v2    # "i":I
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 746
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 748
    .end local v1    # "size":I
    :cond_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 749
    const/4 v0, 0x0

    return v0

    .line 748
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isNotResponding()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mNotResponding:Z

    return v0
.end method

.method isPerceptible()Z
    .locals 1

    .line 556
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    return v0
.end method

.method isPersistent()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    return v0
.end method

.method public isPreviousProcess()Z
    .locals 2

    .line 1436
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1437
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1438
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isRemoved()Z
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/server/wm/WindowProcessListener;->isRemoved()Z

    move-result v0

    :goto_0
    return v0
.end method

.method isUsingWrapper()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    return v0
.end method

.method makeFinishingForProcessRemoved()V
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 608
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 607
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 610
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newGlobalConfig"    # Landroid/content/res/Configuration;

    .line 1180
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1181
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateConfiguration()V

    .line 1182
    return-void
.end method

.method public onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "mergedOverrideConfig"    # Landroid/content/res/Configuration;

    .line 1191
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1192
    return-void
.end method

.method public onProcCachedStateChanged(Z)V
    .locals 2
    .param p1, "isCached"    # Z

    .line 1382
    if-nez p1, :cond_1

    .line 1383
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1384
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    if-eqz v1, :cond_0

    .line 1385
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowProcessController;->dispatchConfigurationChange(Landroid/content/res/Configuration;)V

    .line 1387
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1389
    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 1186
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1187
    return-void
.end method

.method public onServiceStarted(Landroid/content/pm/ServiceInfo;)V
    .locals 7
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 1397
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 1398
    .local v0, "permission":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1399
    return-void

    .line 1403
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2de34dfd

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_4

    const v3, 0x542fc942

    if-eq v2, v3, :cond_3

    const v3, 0x56545c98

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_3
    const-string v2, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v6

    goto :goto_0

    :cond_4
    const-string v2, "android.permission.BIND_VOICE_INTERACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_6

    goto :goto_1

    .line 1405
    :cond_5
    iput-boolean v6, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    .line 1413
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 1414
    nop

    .line 1418
    :goto_1
    return-void
.end method

.method onStartActivity(ILandroid/content/pm/ActivityInfo;)V
    .locals 7
    .param p1, "topProcessState"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .line 1075
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    return-void

    .line 1076
    :cond_0
    const/4 v0, 0x0

    .line 1077
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1078
    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1082
    :cond_1
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1085
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1086
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v3, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(II)V

    .line 1091
    :cond_3
    sget-object v1, Lcom/android/server/wm/-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1092
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->shouldSetProfileProc()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 1093
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1091
    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1094
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1095
    return-void
.end method

.method public onTopProcChanged()V
    .locals 2

    .line 1422
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1423
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/VrController;->onTopProcChangedLocked(Lcom/android/server/wm/WindowProcessController;)V

    .line 1424
    monitor-exit v0

    .line 1425
    return-void

    .line 1424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method pauseConfigurationDispatch()V
    .locals 1

    .line 1270
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    .line 1271
    return-void
.end method

.method postPendingUiCleanMsg(Z)V
    .locals 3
    .param p1, "pendingUiClean"    # Z

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$zP5AObb0-v-Zzwr-v8NXOg4Yt1c;->INSTANCE:Lcom/android/server/wm/-$$Lambda$zP5AObb0-v-Zzwr-v8NXOg4Yt1c;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 386
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 385
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 387
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 388
    return-void
.end method

.method prepareConfigurationForLaunchingActivity()Landroid/content/res/Configuration;
    .locals 2

    .line 1283
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1284
    .local v0, "config":Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    if-eqz v1, :cond_0

    .line 1285
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 1288
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->seq:I

    .line 1290
    :cond_0
    return-object v0
.end method

.method registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 1132
    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->containsListener(Lcom/android/server/wm/ConfigurationContainerListener;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1139
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterDisplayConfigurationListener()V

    .line 1140
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 1141
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1142
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 1143
    return-void

    .line 1135
    :cond_1
    :goto_0
    return-void
.end method

.method registerDisplayConfigurationListener(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 1106
    if-nez p1, :cond_0

    .line 1107
    return-void

    .line 1111
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterDisplayConfigurationListener()V

    .line 1112
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 1113
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 1114
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 1115
    return-void
.end method

.method registeredForActivityConfigChanges()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method registeredForDisplayConfigChanges()Z
    .locals 2

    .line 373
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method releaseSomeActivities(Ljava/lang/String;)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;

    .line 848
    const/4 v0, 0x0

    .line 849
    .local v0, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to release some activities in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 851
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 855
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_6

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    .line 861
    :cond_1
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_4

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->hasSavedState()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STARTED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 862
    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 867
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 868
    if-nez v0, :cond_3

    .line 869
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 871
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 863
    :cond_4
    :goto_1
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not releasing in-use activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 856
    .restart local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    :goto_3
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Abort release; already destroying: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_7
    return-void

    .line 875
    .end local v1    # "i":I
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    if-eqz v0, :cond_b

    .line 877
    sget-object v1, Lcom/android/server/wm/-$$Lambda$h-x5kpt7iRsCHGk24gs4Sab2qLw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$h-x5kpt7iRsCHGk24gs4Sab2qLw;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 879
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 881
    .local v1, "maxRelease":I
    :cond_9
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 882
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destroying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " in state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for reason "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 882
    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_a
    invoke-virtual {v4, v3, p1}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(ZLjava/lang/String;)Z

    .line 885
    nop

    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v1, v1, -0x1

    .line 886
    if-gtz v1, :cond_9

    .line 888
    .end local v1    # "maxRelease":I
    :cond_b
    return-void
.end method

.method removeActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 602
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 603
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    .line 604
    return-void
.end method

.method removeHostActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 924
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 925
    return-void
.end method

.method removeRecentTask(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1303
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1304
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 1196
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 1197
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1199
    .local v0, "resolvedConfig":Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 1204
    iget v1, p1, Landroid/content/res/Configuration;->seq:I

    iput v1, v0, Landroid/content/res/Configuration;->seq:I

    .line 1205
    return-void
.end method

.method resumeConfigurationDispatch()V
    .locals 1

    .line 1274
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    .line 1275
    return-void
.end method

.method public setAllowBackgroundActivityStarts(Z)V
    .locals 0
    .param p1, "allowBackgroundActivityStarts"    # Z

    .line 465
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mAllowBackgroundActivityStarts:Z

    .line 466
    return-void
.end method

.method public setBoundClientUids(Landroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 538
    .local p1, "boundClientUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mBoundClientUids:Landroid/util/ArraySet;

    .line 539
    return-void
.end method

.method public setCrashing(Z)V
    .locals 0
    .param p1, "crashing"    # Z

    .line 300
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    .line 301
    return-void
.end method

.method public setCurrentProcState(I)V
    .locals 0
    .param p1, "curProcState"    # I

    .line 284
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 285
    return-void
.end method

.method public setCurrentSchedulingGroup(I)V
    .locals 0
    .param p1, "curSchedGroup"    # I

    .line 276
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    .line 277
    return-void
.end method

.method public setDebugging(Z)V
    .locals 0
    .param p1, "debugging"    # Z

    .line 430
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mDebugging:Z

    .line 431
    return-void
.end method

.method public setFgInteractionTime(J)V
    .locals 0
    .param p1, "fgInteractionTime"    # J

    .line 399
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    .line 400
    return-void
.end method

.method public setHasClientActivities(Z)V
    .locals 0
    .param p1, "hasClientActivities"    # Z

    .line 340
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    .line 341
    return-void
.end method

.method public setHasForegroundActivities(Z)V
    .locals 0
    .param p1, "hasForegroundActivities"    # Z

    .line 332
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundActivities:Z

    .line 333
    return-void
.end method

.method public setHasForegroundServices(Z)V
    .locals 0
    .param p1, "hasForegroundServices"    # Z

    .line 324
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    .line 325
    return-void
.end method

.method public setHasOverlayUi(Z)V
    .locals 0
    .param p1, "hasOverlayUi"    # Z

    .line 356
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    .line 357
    return-void
.end method

.method public setHasTopUi(Z)V
    .locals 0
    .param p1, "hasTopUi"    # Z

    .line 348
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    .line 349
    return-void
.end method

.method public setInstrumenting(ZZ)V
    .locals 0
    .param p1, "instrumenting"    # Z
    .param p2, "hasBackgroundActivityStartPrivileges"    # Z

    .line 543
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    .line 544
    iput-boolean p2, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    .line 545
    return-void
.end method

.method public setInteractionEventTime(J)V
    .locals 0
    .param p1, "interactionEventTime"    # J

    .line 391
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    .line 392
    return-void
.end method

.method setLastActivityFinishTimeIfNeeded(J)V
    .locals 2
    .param p1, "finishTime"    # J

    .line 458
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    .line 462
    return-void

    .line 459
    :cond_1
    :goto_0
    return-void
.end method

.method setLastActivityLaunchTime(J)V
    .locals 3
    .param p1, "launchTime"    # J

    .line 446
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 447
    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to set launchTime ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") < mLastActivityLaunchTime ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    return-void

    .line 454
    :cond_1
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    .line 455
    return-void
.end method

.method setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 1262
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1263
    return-void
.end method

.method public setNotResponding(Z)V
    .locals 0
    .param p1, "notResponding"    # Z

    .line 308
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mNotResponding:Z

    .line 309
    return-void
.end method

.method public setPendingUiClean(Z)V
    .locals 0
    .param p1, "hasPendingUiClean"    # Z

    .line 364
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    .line 365
    return-void
.end method

.method setPendingUiCleanAndForceProcessStateUpTo(I)V
    .locals 3
    .param p1, "newState"    # I

    .line 1041
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    return-void

    .line 1043
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1045
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1043
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1046
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1047
    return-void
.end method

.method public setPerceptible(Z)V
    .locals 0
    .param p1, "perceptible"    # Z

    .line 552
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    .line 553
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .line 316
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    .line 317
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .line 246
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 247
    return-void
.end method

.method public setReportedProcState(I)V
    .locals 0
    .param p1, "repProcState"    # I

    .line 292
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 293
    return-void
.end method

.method public setRequiredAbi(Ljava/lang/String;)V
    .locals 0
    .param p1, "requiredAbi"    # Ljava/lang/String;

    .line 415
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    .line 416
    return-void
.end method

.method setRunningRecentsAnimation(Z)V
    .locals 1
    .param p1, "running"    # Z

    .line 1442
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRecentsAnimation:Z

    if-ne v0, p1, :cond_0

    .line 1443
    return-void

    .line 1445
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRecentsAnimation:Z

    .line 1446
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateRunningRemoteOrRecentsAnimation()V

    .line 1447
    return-void
.end method

.method setRunningRemoteAnimation(Z)V
    .locals 1
    .param p1, "running"    # Z

    .line 1450
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRemoteAnimation:Z

    if-ne v0, p1, :cond_0

    .line 1451
    return-void

    .line 1453
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRemoteAnimation:Z

    .line 1454
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateRunningRemoteOrRecentsAnimation()V

    .line 1455
    return-void
.end method

.method public setThread(Landroid/app/IApplicationThread;)V
    .locals 2
    .param p1, "thread"    # Landroid/app/IApplicationThread;

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 261
    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    .line 264
    :cond_0
    monitor-exit v0

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUsingWrapper(Z)V
    .locals 0
    .param p1, "usingWrapper"    # Z

    .line 438
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    .line 439
    return-void
.end method

.method public setWhenUnimportant(J)V
    .locals 0
    .param p1, "whenUnimportant"    # J

    .line 407
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    .line 408
    return-void
.end method

.method shouldKillProcessForRemovedTask(Lcom/android/server/wm/Task;)Z
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 829
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 830
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 831
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 833
    return v3

    .line 835
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 836
    .local v2, "otherTask":Lcom/android/server/wm/Task;
    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v5, v2, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v4, v5, :cond_1

    iget-boolean v4, v2, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v4, :cond_1

    .line 839
    return v3

    .line 829
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "otherTask":Lcom/android/server/wm/Task;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 842
    .end local v0    # "k":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public stopFreezingActivities()V
    .locals 4

    .line 717
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 718
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 719
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 720
    add-int/lit8 v1, v1, -0x1

    .line 721
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_0

    .line 723
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 724
    return-void

    .line 723
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1467
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method unregisterDisplayConfigurationListener()V
    .locals 3

    .line 1119
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1120
    return-void

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 1123
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1124
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 1127
    :cond_1
    iput v1, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 1128
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowProcessController;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1129
    return-void
.end method

.method updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 820
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    return-void

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 824
    .local v0, "hist":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "cur_app"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const-string v2, "cur_task"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 826
    return-void
.end method

.method updateProcessInfo(ZZZZ)V
    .locals 5
    .param p1, "updateServiceConnectionActivities"    # Z
    .param p2, "activityChange"    # Z
    .param p3, "updateOomAdj"    # Z
    .param p4, "addPendingTopUid"    # Z

    .line 1023
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    return-void

    .line 1024
    :cond_0
    if-eqz p4, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(II)V

    .line 1028
    :cond_1
    sget-object v0, Lcom/android/server/wm/-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1029
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1028
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1030
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1031
    return-void
.end method

.method updateServiceConnectionActivities()V
    .locals 3

    .line 1034
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    return-void

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1038
    return-void
.end method

.method updateTopResumingActivityInProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 6
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 667
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 671
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 672
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 674
    return v1

    .line 677
    :cond_1
    const/4 v2, 0x0

    .line 679
    .local v2, "canUpdate":Z
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 684
    .local v3, "topDisplay":Lcom/android/server/wm/DisplayContent;
    :goto_0
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 686
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 687
    :cond_3
    const/4 v2, 0x1

    .line 691
    :cond_4
    if-nez v2, :cond_5

    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    if-gez v4, :cond_5

    .line 692
    const/4 v2, 0x1

    .line 696
    :cond_5
    if-ne v0, v3, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 697
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 698
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 697
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    if-gtz v4, :cond_6

    .line 699
    const/4 v2, 0x1

    .line 702
    :cond_6
    if-eqz v2, :cond_8

    .line 704
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_7

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 705
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 706
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_7

    .line 707
    invoke-virtual {v4, v1, v1, p1}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    .line 711
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 713
    :cond_8
    return v2

    .line 668
    .end local v0    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "canUpdate":Z
    .end local v3    # "topDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_9
    :goto_1
    const/4 v0, 0x1

    return v0
.end method
