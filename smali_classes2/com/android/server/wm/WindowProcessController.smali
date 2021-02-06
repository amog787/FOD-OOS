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

.field private mPendingConfiguration:Landroid/content/res/Configuration;

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

    .line 217
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

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    .line 218
    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 219
    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 220
    iput p4, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 221
    iput p5, p0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 222
    iput-object p6, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    .line 223
    iput-object p7, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 224
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 227
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 228
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 229
    .local v0, "isSysUiPackage":Z
    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 232
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 235
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 238
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    .line 240
    return-void
.end method

.method private dispatchConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 1229
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_1

    .line 1230
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz v0, :cond_0

    .line 1232
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

    .line 1235
    :cond_0
    return-void

    .line 1237
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    const-string v2, " new config "

    if-eqz v0, :cond_2

    .line 1238
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

    .line 1240
    :cond_2
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz v0, :cond_3

    .line 1242
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

    .line 1246
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->seq:I

    .line 1247
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 1248
    invoke-static {p1}, Landroid/app/servertransaction/ConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ConfigurationChangeItem;

    move-result-object v3

    .line 1247
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1249
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    goto :goto_0

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed to schedule configuration change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1253
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private hasActivityInVisibleTask()Z
    .locals 5

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 643
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 644
    .local v2, "task":Lcom/android/server/wm/Task;
    if-nez v2, :cond_0

    .line 645
    goto :goto_1

    .line 647
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 648
    .local v3, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v4, :cond_1

    .line 649
    return v1

    .line 642
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 652
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isBoundByForegroundUid()Z
    .locals 4

    .line 526
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 527
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

    .line 528
    return v1

    .line 526
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 531
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isEmbedded()Z
    .locals 4

    .line 754
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 755
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 756
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 757
    return v1

    .line 754
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 760
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 1129
    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->containsListener(Lcom/android/server/wm/ConfigurationContainerListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterDisplayConfigurationListener()V

    .line 1135
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 1136
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1137
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 1138
    return-void

    .line 1130
    :cond_1
    :goto_0
    return-void
.end method

.method private static sanitizeProcessConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 1193
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1195
    .local v0, "sanitizedConfig":Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 1196
    return-object v0

    .line 1199
    .end local v0    # "sanitizedConfig":Landroid/content/res/Configuration;
    :cond_0
    return-object p0
.end method

.method private setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 1256
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1257
    return-void
.end method

.method private shouldSetProfileProc()Z
    .locals 2

    .line 1051
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

    .line 1141
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    .line 1142
    return-void

    .line 1144
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 1145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1146
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1147
    return-void
.end method

.method private updateActivityConfigurationListener()V
    .locals 3

    .line 1156
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_0

    .line 1157
    return-void

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1161
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1162
    .local v1, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 1164
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowProcessController;->registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    .line 1165
    return-void

    .line 1160
    .end local v1    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1170
    .end local v0    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 1171
    return-void
.end method

.method private updateConfiguration()V
    .locals 3

    .line 1203
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1204
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1206
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz v1, :cond_0

    .line 1208
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

    .line 1211
    :cond_0
    return-void

    .line 1214
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {v1}, Lcom/android/server/wm/WindowProcessListener;->isCached()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1217
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_2

    .line 1218
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPendingConfiguration:Landroid/content/res/Configuration;

    goto :goto_0

    .line 1220
    :cond_2
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1222
    :goto_0
    return-void

    .line 1225
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowProcessController;->dispatchConfigurationChange(Landroid/content/res/Configuration;)V

    .line 1226
    return-void
.end method

.method private updateRunningRemoteOrRecentsAnimation()V
    .locals 4

    .line 1432
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

    .line 1434
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1432
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1435
    return-void
.end method


# virtual methods
.method addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 590
    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowProcessController;->setLastActivityLaunchTime(J)V

    .line 591
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    .line 596
    return-void
.end method

.method addHostActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 913
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    return-void

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    return-void
.end method

.method public addPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 576
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 578
    monitor-exit v0

    .line 579
    return-void

    .line 578
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

    .line 1269
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    return-void
.end method

.method appDied(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 1095
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    return-void

    .line 1097
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$VDG7MoD_7v7qIdkguJXls8nmhGU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$VDG7MoD_7v7qIdkguJXls8nmhGU;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1099
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1100
    return-void
.end method

.method public appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "annotation"    # Ljava/lang/String;
    .param p2, "killAppCallback"    # Ljava/lang/Runnable;

    .line 1291
    const/4 v0, 0x0

    .line 1292
    .local v0, "targetRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1293
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-nez v2, :cond_0

    .line 1294
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1299
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v2, v3, v4, p1}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1300
    .local v2, "res":I
    if-gez v2, :cond_1

    iget v3, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v4, :cond_1

    .line 1301
    move-object v0, p2

    .line 1306
    .end local v2    # "res":I
    :cond_1
    goto :goto_0

    .line 1303
    :catch_0
    move-exception v2

    .line 1304
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1305
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1307
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1308
    if-eqz v0, :cond_2

    .line 1309
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1311
    :cond_2
    return-void

    .line 1307
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

    .line 1315
    const/4 v0, 0x0

    .line 1316
    .local v0, "targetRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1317
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1318
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1323
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v2, v4, v5, p1}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1324
    .local v2, "res":I
    if-eqz v2, :cond_2

    .line 1325
    if-gez v2, :cond_1

    iget v4, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v4, v5, :cond_1

    .line 1326
    move-object v0, p2

    goto :goto_0

    .line 1328
    :cond_1
    move-object v0, p3

    .line 1335
    .end local v2    # "res":I
    :cond_2
    :goto_0
    nop

    .line 1336
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1337
    if-eqz v0, :cond_3

    .line 1339
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1340
    const/4 v1, 0x1

    return v1

    .line 1342
    :cond_3
    return v3

    .line 1331
    :catch_0
    move-exception v2

    .line 1332
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1333
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1334
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1336
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

    .line 467
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mAllowBackgroundActivityStarts:Z

    const/4 v1, 0x1

    const-string v2, "[WindowProcessController("

    const-string v3, "ActivityTaskManager"

    if-eqz v0, :cond_1

    .line 468
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_0

    .line 469
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

    .line 472
    :cond_0
    return v1

    .line 476
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 477
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

    .line 481
    :cond_2
    iget-wide v6, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLastStopAppSwitchesTime()J

    move-result-wide v10

    cmp-long v0, v6, v10

    if-gtz v0, :cond_b

    iget-wide v6, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 482
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLastStopAppSwitchesTime()J

    move-result-wide v10

    cmp-long v0, v6, v10

    if-lez v0, :cond_3

    goto/16 :goto_0

    .line 490
    :cond_3
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_4

    .line 491
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

    .line 498
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    if-eqz v0, :cond_6

    .line 499
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_5

    .line 500
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

    .line 504
    :cond_5
    return v1

    .line 507
    :cond_6
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 508
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_7

    .line 509
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

    .line 512
    :cond_7
    return v1

    .line 515
    :cond_8
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->isBoundByForegroundUid()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 516
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_9

    .line 517
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

    .line 520
    :cond_9
    return v1

    .line 522
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 483
    :cond_b
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_c

    .line 484
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

    .line 488
    :cond_c
    return v1
.end method

.method clearActivities()V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 611
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    .line 612
    return-void
.end method

.method public clearPackageList()V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 585
    monitor-exit v0

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearPackagePreferredForHomeActivities()V
    .locals 6

    .line 776
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 777
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 778
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 779
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 780
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

    .line 782
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 783
    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 786
    goto :goto_1

    .line 784
    :catch_0
    move-exception v3

    .line 777
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 789
    .end local v1    # "i":I
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 790
    return-void

    .line 789
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

    .line 1012
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    return-void

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$9Kj79s-YFqaGRhFHazfExnbZExw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$9Kj79s-YFqaGRhFHazfExnbZExw;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1016
    return-void
.end method

.method clearRecentTasks()V
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1285
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 1284
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1287
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1288
    return-void
.end method

.method public computeOomAdjFromActivities(ILcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I
    .locals 10
    .param p1, "minTaskLayer"    # I
    .param p2, "callback"    # Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;

    .line 936
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 937
    .local v0, "best":Lcom/android/server/wm/ActivityStack$ActivityState;
    const/4 v1, 0x1

    .line 938
    .local v1, "finishing":Z
    const/4 v2, 0x0

    .line 939
    .local v2, "visible":Z
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v3

    .line 940
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 941
    .local v4, "activitiesSize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v4, :cond_6

    .line 942
    iget-object v6, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 943
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v7, p0, :cond_1

    .line 944
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

    .line 946
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v7, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v8, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v7, v8, :cond_5

    .line 948
    :cond_0
    invoke-virtual {v6, p0}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 953
    :cond_1
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v7, :cond_3

    .line 954
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 955
    .local v7, "task":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_2

    if-lez p1, :cond_2

    .line 956
    iget v8, v7, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 957
    .local v8, "layer":I
    if-ltz v8, :cond_2

    if-le p1, v8, :cond_2

    .line 958
    move p1, v8

    .line 961
    .end local v8    # "layer":I
    :cond_2
    const/4 v2, 0x1

    .line 965
    .end local v7    # "task":Lcom/android/server/wm/Task;
    goto :goto_1

    .line 966
    :cond_3
    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v0, v7, :cond_5

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v0, v7, :cond_5

    .line 967
    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 968
    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    move-object v0, v7

    goto :goto_1

    .line 969
    :cond_4
    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 970
    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    move-object v0, v7

    .line 972
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    and-int/2addr v1, v7

    .line 941
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 977
    .end local v4    # "activitiesSize":I
    .end local v5    # "j":I
    :cond_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    if-eqz v2, :cond_7

    .line 979
    invoke-interface {p2}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onVisibleActivity()V

    goto :goto_2

    .line 980
    :cond_7
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v3, :cond_8

    .line 981
    invoke-interface {p2}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onPausedActivity()V

    goto :goto_2

    .line 982
    :cond_8
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v3, :cond_9

    .line 983
    invoke-interface {p2, v1}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onStoppingActivity(Z)V

    goto :goto_2

    .line 985
    :cond_9
    invoke-interface {p2}, Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;->onOtherActivity()V

    .line 988
    :goto_2
    return p1

    .line 977
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

    .line 992
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 993
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 994
    .local v1, "activitiesSize":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 995
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 996
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-eqz v4, :cond_0

    .line 997
    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 994
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1000
    .end local v1    # "activitiesSize":I
    .end local v2    # "i":I
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1001
    const/4 v0, 0x0

    return v0

    .line 1000
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

    .line 1056
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1057
    .local v0, "currentProfilerInfo":Landroid/app/ProfilerInfo;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1058
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->shouldSetProfileProc()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1061
    :cond_0
    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 1063
    :try_start_0
    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    goto :goto_0

    .line 1064
    :catch_0
    move-exception v1

    .line 1065
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 1068
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    new-instance v1, Landroid/app/ProfilerInfo;

    invoke-direct {v1, v0}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    return-object v1

    .line 1059
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1443
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1444
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1445
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1447
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  - "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1446
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1451
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Recent Tasks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1454
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

    .line 1453
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1458
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    if-eqz v1, :cond_2

    .line 1459
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mVrThreadTid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1461
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1462
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

    .line 1463
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

    .line 1464
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

    .line 1465
    return-void

    .line 1461
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

    .line 1468
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-eqz v0, :cond_0

    .line 1469
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/WindowProcessListener;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1471
    :cond_0
    return-void
.end method

.method finishActivities()V
    .locals 5

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 725
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 726
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 727
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 728
    const-string v3, "finish-heavy"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 725
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 731
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 1
    .param p1, "index"    # I

    .line 563
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getChildCount()I
    .locals 1

    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public getCpuTime()J
    .locals 2

    .line 1265
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

    .line 285
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    return v0
.end method

.method getCurrentSchedulingGroup()I
    .locals 1

    .line 277
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

    .line 892
    .local p1, "displayContexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    if-nez p1, :cond_0

    .line 893
    return-void

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 896
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 897
    .local v1, "root":Lcom/android/server/wm/RootWindowContainer;
    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContextsWithNonToastVisibleWindows(ILjava/util/List;)V

    .line 899
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 900
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 901
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    .line 902
    .local v4, "displayId":I
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayUiContext(I)Landroid/content/Context;

    move-result-object v5

    .line 904
    .local v5, "c":Landroid/content/Context;
    iget-boolean v6, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v6, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 905
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "displayId":I
    .end local v5    # "c":Landroid/content/Context;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 908
    .end local v1    # "root":Lcom/android/server/wm/RootWindowContainer;
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 909
    return-void

    .line 908
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

    .line 423
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    return v0
.end method

.method getFgInteractionTime()J
    .locals 2

    .line 400
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    return-wide v0
.end method

.method public getInputDispatchingTimeout()J
    .locals 3

    .line 1005
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isUsingWrapper()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1007
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

    .line 1006
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-wide v1

    .line 1008
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

    .line 392
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    return-wide v0
.end method

.method getLastReportedConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 1260
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    return v0
.end method

.method getReportedProcState()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    return v0
.end method

.method getRequiredAbi()Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    return-object v0
.end method

.method getThread()Landroid/app/IApplicationThread;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method getWhenUnimportant()J
    .locals 2

    .line 408
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    return-wide v0
.end method

.method public hasActivities()Z
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 617
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

    .line 618
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasActivitiesOrRecentTasks()Z
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 637
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

    .line 638
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasClientActivities()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    return v0
.end method

.method hasForegroundActivities()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundActivities:Z

    return v0
.end method

.method hasForegroundServices()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    return v0
.end method

.method hasOverlayUi()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    return v0
.end method

.method hasPendingUiClean()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    return v0
.end method

.method public hasRecentTasks()Z
    .locals 2

    .line 1278
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1279
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

    .line 1280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasResumedActivity()Z
    .locals 4

    .line 806
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 807
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 808
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 809
    return v1

    .line 806
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 812
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasRunningActivity(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 764
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 765
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 766
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 767
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 768
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 765
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 771
    .end local v1    # "i":I
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 772
    const/4 v0, 0x0

    return v0

    .line 771
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

    .line 793
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 794
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 795
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    if-ne p1, v2, :cond_0

    .line 796
    goto :goto_1

    .line 798
    :cond_0
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v3, :cond_1

    .line 799
    return v1

    .line 793
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 802
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method hasThread()Z
    .locals 1

    .line 269
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

    .line 349
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    return v0
.end method

.method public hasVisibleActivities()Z
    .locals 5

    .line 623
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 625
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 626
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v4, :cond_0

    .line 627
    monitor-exit v0

    return v2

    .line 624
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 630
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 631
    const/4 v0, 0x0

    return v0

    .line 630
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isCrashing()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    return v0
.end method

.method isDebugging()Z
    .locals 1

    .line 431
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mDebugging:Z

    return v0
.end method

.method public isHomeProcess()Z
    .locals 2

    .line 1401
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1402
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

    .line 1403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isInstrumenting()Z
    .locals 1

    .line 545
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    return v0
.end method

.method public isInterestingToUser()Z
    .locals 6

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 735
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 736
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    .line 737
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 738
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 739
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 736
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 742
    .end local v2    # "i":I
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 743
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 745
    .end local v1    # "size":I
    :cond_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 746
    const/4 v0, 0x0

    return v0

    .line 745
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

    .line 309
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mNotResponding:Z

    return v0
.end method

.method isPerceptible()Z
    .locals 1

    .line 553
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    return v0
.end method

.method isPersistent()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    return v0
.end method

.method public isPreviousProcess()Z
    .locals 2

    .line 1408
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1409
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

    .line 1410
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isRemoved()Z
    .locals 1

    .line 1047
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

    .line 439
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    return v0
.end method

.method makeFinishingForProcessRemoved()V
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 604
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 607
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newGlobalConfig"    # Landroid/content/res/Configuration;

    .line 1175
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1176
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateConfiguration()V

    .line 1177
    return-void
.end method

.method public onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "mergedOverrideConfig"    # Landroid/content/res/Configuration;

    .line 1187
    nop

    .line 1188
    invoke-static {p1}, Lcom/android/server/wm/WindowProcessController;->sanitizeProcessConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 1187
    invoke-super {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1189
    return-void
.end method

.method public onProcCachedStateChanged(Z)V
    .locals 3
    .param p1, "isCached"    # Z

    .line 1352
    if-nez p1, :cond_1

    .line 1353
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    .line 1355
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 1356
    .local v1, "config":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 1357
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowProcessController;->dispatchConfigurationChange(Landroid/content/res/Configuration;)V

    .line 1359
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1361
    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 1181
    nop

    .line 1182
    invoke-static {p1}, Lcom/android/server/wm/WindowProcessController;->sanitizeProcessConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 1181
    invoke-super {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1183
    return-void
.end method

.method public onServiceStarted(Landroid/content/pm/ServiceInfo;)V
    .locals 7
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 1369
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 1370
    .local v0, "permission":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1371
    return-void

    .line 1375
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

    .line 1377
    :cond_5
    iput-boolean v6, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    .line 1385
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 1386
    nop

    .line 1390
    :goto_1
    return-void
.end method

.method onStartActivity(ILandroid/content/pm/ActivityInfo;)V
    .locals 7
    .param p1, "topProcessState"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .line 1072
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    return-void

    .line 1073
    :cond_0
    const/4 v0, 0x0

    .line 1074
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1075
    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1079
    :cond_1
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1082
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1083
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v3, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(II)V

    .line 1088
    :cond_3
    sget-object v1, Lcom/android/server/wm/-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$VY87MmFWaCLMkNa2qHGaPrThyrI;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1089
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->shouldSetProfileProc()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 1090
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1088
    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1091
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1092
    return-void
.end method

.method public onTopProcChanged()V
    .locals 2

    .line 1394
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 1395
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/VrController;->onTopProcChangedLocked(Lcom/android/server/wm/WindowProcessController;)V

    .line 1396
    monitor-exit v0

    .line 1397
    return-void

    .line 1396
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method postPendingUiCleanMsg(Z)V
    .locals 3
    .param p1, "pendingUiClean"    # Z

    .line 380
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$zP5AObb0-v-Zzwr-v8NXOg4Yt1c;->INSTANCE:Lcom/android/server/wm/-$$Lambda$zP5AObb0-v-Zzwr-v8NXOg4Yt1c;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 383
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 382
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 384
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 385
    return-void
.end method

.method registerDisplayConfigurationListener(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 1103
    if-nez p1, :cond_0

    .line 1104
    return-void

    .line 1108
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterDisplayConfigurationListener()V

    .line 1109
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 1110
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 1111
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 1112
    return-void
.end method

.method registeredForActivityConfigChanges()Z
    .locals 1

    .line 376
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

    .line 370
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

    .line 845
    const/4 v0, 0x0

    .line 846
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

    .line 847
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 848
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 852
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_6

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    .line 858
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

    .line 859
    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 864
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 865
    if-nez v0, :cond_3

    .line 866
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 868
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 860
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

    .line 847
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 853
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

    .line 854
    :cond_7
    return-void

    .line 872
    .end local v1    # "i":I
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    if-eqz v0, :cond_b

    .line 874
    sget-object v1, Lcom/android/server/wm/-$$Lambda$h-x5kpt7iRsCHGk24gs4Sab2qLw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$h-x5kpt7iRsCHGk24gs4Sab2qLw;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 876
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 878
    .local v1, "maxRelease":I
    :cond_9
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 879
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

    .line 880
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for reason "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 879
    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_a
    invoke-virtual {v4, v3, p1}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(ZLjava/lang/String;)Z

    .line 882
    nop

    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v1, v1, -0x1

    .line 883
    if-gtz v1, :cond_9

    .line 885
    .end local v1    # "maxRelease":I
    :cond_b
    return-void
.end method

.method removeActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 599
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 600
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    .line 601
    return-void
.end method

.method removeHostActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 921
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mHostActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 922
    return-void
.end method

.method removeRecentTask(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1273
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1274
    return-void
.end method

.method public setAllowBackgroundActivityStarts(Z)V
    .locals 0
    .param p1, "allowBackgroundActivityStarts"    # Z

    .line 462
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mAllowBackgroundActivityStarts:Z

    .line 463
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

    .line 535
    .local p1, "boundClientUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mBoundClientUids:Landroid/util/ArraySet;

    .line 536
    return-void
.end method

.method public setCrashing(Z)V
    .locals 0
    .param p1, "crashing"    # Z

    .line 297
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    .line 298
    return-void
.end method

.method public setCurrentProcState(I)V
    .locals 0
    .param p1, "curProcState"    # I

    .line 281
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 282
    return-void
.end method

.method public setCurrentSchedulingGroup(I)V
    .locals 0
    .param p1, "curSchedGroup"    # I

    .line 273
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    .line 274
    return-void
.end method

.method public setDebugging(Z)V
    .locals 0
    .param p1, "debugging"    # Z

    .line 427
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mDebugging:Z

    .line 428
    return-void
.end method

.method public setFgInteractionTime(J)V
    .locals 0
    .param p1, "fgInteractionTime"    # J

    .line 396
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    .line 397
    return-void
.end method

.method public setHasClientActivities(Z)V
    .locals 0
    .param p1, "hasClientActivities"    # Z

    .line 337
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    .line 338
    return-void
.end method

.method public setHasForegroundActivities(Z)V
    .locals 0
    .param p1, "hasForegroundActivities"    # Z

    .line 329
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundActivities:Z

    .line 330
    return-void
.end method

.method public setHasForegroundServices(Z)V
    .locals 0
    .param p1, "hasForegroundServices"    # Z

    .line 321
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    .line 322
    return-void
.end method

.method public setHasOverlayUi(Z)V
    .locals 0
    .param p1, "hasOverlayUi"    # Z

    .line 353
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    .line 354
    return-void
.end method

.method public setHasTopUi(Z)V
    .locals 0
    .param p1, "hasTopUi"    # Z

    .line 345
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    .line 346
    return-void
.end method

.method public setInstrumenting(ZZ)V
    .locals 0
    .param p1, "instrumenting"    # Z
    .param p2, "hasBackgroundActivityStartPrivileges"    # Z

    .line 540
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    .line 541
    iput-boolean p2, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    .line 542
    return-void
.end method

.method public setInteractionEventTime(J)V
    .locals 0
    .param p1, "interactionEventTime"    # J

    .line 388
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    .line 389
    return-void
.end method

.method setLastActivityFinishTimeIfNeeded(J)V
    .locals 2
    .param p1, "finishTime"    # J

    .line 455
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    .line 459
    return-void

    .line 456
    :cond_1
    :goto_0
    return-void
.end method

.method setLastActivityLaunchTime(J)V
    .locals 3
    .param p1, "launchTime"    # J

    .line 443
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 444
    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 445
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

    .line 449
    :cond_0
    return-void

    .line 451
    :cond_1
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    .line 452
    return-void
.end method

.method public setNotResponding(Z)V
    .locals 0
    .param p1, "notResponding"    # Z

    .line 305
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mNotResponding:Z

    .line 306
    return-void
.end method

.method public setPendingUiClean(Z)V
    .locals 0
    .param p1, "hasPendingUiClean"    # Z

    .line 361
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    .line 362
    return-void
.end method

.method setPendingUiCleanAndForceProcessStateUpTo(I)V
    .locals 3
    .param p1, "newState"    # I

    .line 1038
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    return-void

    .line 1040
    :cond_0
    sget-object v0, Lcom/android/server/wm/-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1042
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1040
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1043
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1044
    return-void
.end method

.method public setPerceptible(Z)V
    .locals 0
    .param p1, "perceptible"    # Z

    .line 549
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    .line 550
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .line 313
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    .line 314
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .line 243
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 244
    return-void
.end method

.method public setReportedProcState(I)V
    .locals 0
    .param p1, "repProcState"    # I

    .line 289
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 290
    return-void
.end method

.method public setRequiredAbi(Ljava/lang/String;)V
    .locals 0
    .param p1, "requiredAbi"    # Ljava/lang/String;

    .line 412
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    .line 413
    return-void
.end method

.method setRunningRecentsAnimation(Z)V
    .locals 1
    .param p1, "running"    # Z

    .line 1414
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRecentsAnimation:Z

    if-ne v0, p1, :cond_0

    .line 1415
    return-void

    .line 1417
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRecentsAnimation:Z

    .line 1418
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateRunningRemoteOrRecentsAnimation()V

    .line 1419
    return-void
.end method

.method setRunningRemoteAnimation(Z)V
    .locals 1
    .param p1, "running"    # Z

    .line 1422
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRemoteAnimation:Z

    if-ne v0, p1, :cond_0

    .line 1423
    return-void

    .line 1425
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mRunningRemoteAnimation:Z

    .line 1426
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->updateRunningRemoteOrRecentsAnimation()V

    .line 1427
    return-void
.end method

.method public setThread(Landroid/app/IApplicationThread;)V
    .locals 2
    .param p1, "thread"    # Landroid/app/IApplicationThread;

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 258
    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    .line 261
    :cond_0
    monitor-exit v0

    .line 262
    return-void

    .line 261
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

    .line 435
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    .line 436
    return-void
.end method

.method public setWhenUnimportant(J)V
    .locals 0
    .param p1, "whenUnimportant"    # J

    .line 404
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    .line 405
    return-void
.end method

.method shouldKillProcessForRemovedTask(Lcom/android/server/wm/Task;)Z
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 826
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 827
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 828
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 830
    return v3

    .line 832
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 833
    .local v2, "otherTask":Lcom/android/server/wm/Task;
    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v5, v2, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v4, v5, :cond_1

    iget-boolean v4, v2, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v4, :cond_1

    .line 836
    return v3

    .line 826
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "otherTask":Lcom/android/server/wm/Task;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 839
    .end local v0    # "k":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public stopFreezingActivities()V
    .locals 4

    .line 714
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 715
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 716
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 717
    add-int/lit8 v1, v1, -0x1

    .line 718
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_0

    .line 720
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 721
    return-void

    .line 720
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

    .line 1439
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

    .line 1116
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1117
    return-void

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 1120
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1121
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    .line 1122
    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 1124
    :cond_1
    iput v1, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayId:I

    .line 1125
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowProcessController;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1126
    return-void
.end method

.method updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 821
    .local v0, "hist":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "cur_app"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const-string v2, "cur_task"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 823
    return-void
.end method

.method updateProcessInfo(ZZZZ)V
    .locals 5
    .param p1, "updateServiceConnectionActivities"    # Z
    .param p2, "activityChange"    # Z
    .param p3, "updateOomAdj"    # Z
    .param p4, "addPendingTopUid"    # Z

    .line 1020
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    return-void

    .line 1021
    :cond_0
    if-eqz p4, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(II)V

    .line 1025
    :cond_1
    sget-object v0, Lcom/android/server/wm/-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$BEx3OWenCvYAaV5h_J2ZkZXhEcY;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1026
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1025
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1027
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1028
    return-void
.end method

.method updateServiceConnectionActivities()V
    .locals 3

    .line 1031
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    if-nez v0, :cond_0

    return-void

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$HLz_SQuxQoIiuaK5SB5xJ6FnoxY;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1035
    return-void
.end method

.method updateTopResumingActivityInProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 6
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 668
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 669
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 671
    return v1

    .line 674
    :cond_1
    const/4 v2, 0x0

    .line 676
    .local v2, "canUpdate":Z
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 681
    .local v3, "topDisplay":Lcom/android/server/wm/DisplayContent;
    :goto_0
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 683
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 684
    :cond_3
    const/4 v2, 0x1

    .line 688
    :cond_4
    if-nez v2, :cond_5

    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    if-gez v4, :cond_5

    .line 689
    const/4 v2, 0x1

    .line 693
    :cond_5
    if-ne v0, v3, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 694
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 695
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 694
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    if-gtz v4, :cond_6

    .line 696
    const/4 v2, 0x1

    .line 699
    :cond_6
    if-eqz v2, :cond_8

    .line 701
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_7

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 702
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 703
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_7

    .line 704
    invoke-virtual {v4, v1, v1, p1}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    .line 708
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 710
    :cond_8
    return v2

    .line 665
    .end local v0    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "canUpdate":Z
    .end local v3    # "topDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_9
    :goto_1
    const/4 v0, 0x1

    return v0
.end method
