.class Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserController$Injector;,
        Lcom/android/server/am/UserController$UserProgressListener;
    }
.end annotation


# static fields
.field static final CONTINUE_USER_SWITCH_MSG:I = 0x14

.field static final FOREGROUND_PROFILE_CHANGED_MSG:I = 0x46

.field private static final MDM_ACTION_BOOT_COMPLETED:Ljava/lang/String; = "oneplus.intent.mdm_ready"

.field private static final MDM_SERVICE_NAME:Ljava/lang/String; = "net.oneplus.odm"

.field private static final OEM_ACTION_BOOT_COMPLETED:Ljava/lang/String; = "com.oem.intent.action.BOOT_COMPLETED"

.field static final REPORT_LOCKED_BOOT_COMPLETE_MSG:I = 0x6e

.field static final REPORT_USER_SWITCH_COMPLETE_MSG:I = 0x50

.field static final REPORT_USER_SWITCH_MSG:I = 0xa

.field static final START_PROFILES_MSG:I = 0x28

.field static final START_USER_SWITCH_FG_MSG:I = 0x78

.field static final START_USER_SWITCH_UI_MSG:I = 0x3e8

.field static final SYSTEM_USER_CURRENT_MSG:I = 0x3c

.field static final SYSTEM_USER_START_MSG:I = 0x32

.field static final SYSTEM_USER_UNLOCK_MSG:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final USER_SWITCH_CALLBACKS_TIMEOUT_MS:I = 0x1388

.field static final USER_SWITCH_CALLBACKS_TIMEOUT_MSG:I = 0x5a

.field static final USER_SWITCH_TIMEOUT_MS:I = 0xbb8

.field static final USER_SWITCH_TIMEOUT_MSG:I = 0x1e


# instance fields
.field volatile mBootCompleted:Z

.field private volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private volatile mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mDelayUserDataLocking:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/am/UserController$Injector;

.field private final mLastActiveUsers:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMaxRunningUsers:I

.field private mStartedUserArray:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mStartedUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchingFromSystemUserMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSwitchingToSystemUserMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private volatile mTargetUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUserLru:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserProfileGroupIds:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field

.field mUserSwitchUiEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 278
    new-instance v0, Lcom/android/server/am/UserController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserController$Injector;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;-><init>(Lcom/android/server/am/UserController$Injector;)V

    .line 279
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .locals 5
    .param p1, "injector"    # Lcom/android/server/am/UserController$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 186
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 192
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 204
    const/4 v1, 0x1

    new-array v2, v1, [I

    aput v0, v2, v0

    iput-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 209
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 215
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 221
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 224
    iput-boolean v1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    .line 283
    iput-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 284
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, p0}, Lcom/android/server/am/UserController$Injector;->getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 285
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, p0}, Lcom/android/server/am/UserController$Injector;->getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 287
    new-instance v1, Lcom/android/server/am/UserState;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v1, v2}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 288
    .local v1, "uss":Lcom/android/server/am/UserState;
    iget-object v2, v1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v3, Lcom/android/server/am/UserController$UserProgressListener;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 289
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 292
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 293
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/UserController;)Lcom/android/server/am/UserController$Injector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/UserController;

    .line 134
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/UserController;

    .line 134
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/UserController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/UserController;

    .line 134
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/UserController;

    .line 134
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    return-object v0
.end method

.method private dispatchForegroundProfileChanged(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1479
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1480
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1482
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    goto :goto_1

    .line 1483
    :catch_0
    move-exception v2

    .line 1480
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1487
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1488
    return-void
.end method

.method private dispatchLockedBootComplete(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1504
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1505
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1507
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onLockedBootComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    goto :goto_1

    .line 1508
    :catch_0
    move-exception v2

    .line 1505
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1512
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1513
    return-void
.end method

.method private enforceShellRestriction(Ljava/lang/String;I)V
    .locals 3
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 2050
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_1

    .line 2051
    if-ltz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2052
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2056
    :cond_1
    :goto_0
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;)V
    .locals 1
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 357
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 358
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .locals 21
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;

    .line 361
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 363
    .local v6, "userId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing user boot "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 366
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v0, v2, :cond_0

    .line 367
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 369
    :catchall_0
    move-exception v0

    move v4, v6

    goto/16 :goto_4

    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 375
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v4, v2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v6, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 378
    if-nez v6, :cond_1

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 379
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    long-to-int v0, v4

    .line 381
    .local v0, "uptimeSeconds":I
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "framework_locked_boot_completed"

    invoke-static {v4, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 383
    const/16 v4, 0x78

    .line 384
    .local v4, "MAX_UPTIME_SECONDS":I
    const/16 v5, 0x78

    if-le v0, v5, :cond_1

    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishUserBoot took too long. uptimeSeconds="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SystemServerTiming"

    invoke-static {v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v0    # "uptimeSeconds":I
    .end local v4    # "MAX_UPTIME_SECONDS":I
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6e

    invoke-virtual {v0, v4, v6, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 392
    new-instance v0, Landroid/content/Intent;

    const/4 v3, 0x0

    const-string v4, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, "intent":Landroid/content/Intent;
    move-object v4, v0

    .line 393
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const/high16 v3, 0x9000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    .line 399
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 396
    move/from16 v20, v6

    .end local v6    # "userId":I
    .local v20, "userId":I
    move-object/from16 v6, p2

    move/from16 v19, v20

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    goto :goto_0

    .line 375
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v20    # "userId":I
    .restart local v6    # "userId":I
    :cond_2
    move/from16 v20, v6

    .line 404
    .end local v6    # "userId":I
    .restart local v20    # "userId":I
    :goto_0
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    move/from16 v4, v20

    .end local v20    # "userId":I
    .local v4, "userId":I
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerService;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 405
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 406
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_3

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x4

    .line 407
    invoke-virtual {v1, v3, v5}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (parent "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): attempting unlock because parent is unlocked"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    goto :goto_2

    .line 412
    :cond_3
    if-nez v0, :cond_4

    const-string v3, "<null>"

    goto :goto_1

    :cond_4
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "parentId":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (parent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): delaying unlock because parent is locked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v0    # "parent":Landroid/content/pm/UserInfo;
    .end local v3    # "parentId":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 417
    :cond_5
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    .line 419
    :goto_3
    return-void

    .line 369
    .end local v4    # "userId":I
    .restart local v6    # "userId":I
    :catchall_1
    move-exception v0

    move v4, v6

    .end local v6    # "userId":I
    .restart local v4    # "userId":I
    :goto_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4
.end method

.method private finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .locals 26
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 593
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 594
    .local v6, "userId":I
    iget-object v1, v7, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 596
    :try_start_0
    iget-object v0, v7, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v2, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v0, v8, :cond_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 597
    :catchall_0
    move-exception v0

    move v15, v6

    goto/16 :goto_0

    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 598
    invoke-direct {v7, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 599
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_1

    .line 600
    return-void

    .line 603
    :cond_1
    invoke-static {v6}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 606
    :cond_2
    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 608
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    .line 609
    if-eqz v6, :cond_3

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    move-object v10, v1

    .line 612
    const/high16 v2, 0x11000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 614
    iget-object v9, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v11, 0x0

    new-instance v2, Lcom/android/server/am/UserController$1;

    move-object v12, v2

    invoke-direct {v2, v7, v0}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v22, 0x3e8

    .line 624
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 625
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    .line 614
    move/from16 v25, v6

    invoke-virtual/range {v9 .. v25}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 630
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v6}, Lcom/android/server/am/UserController$Injector;->startUserWidgets(I)V

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Posting BOOT_COMPLETED user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    if-nez v6, :cond_4

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 635
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_4

    .line 636
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 637
    .local v1, "uptimeSeconds":I
    iget-object v2, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "framework_boot_completed"

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 644
    .end local v1    # "uptimeSeconds":I
    :cond_4
    const/4 v1, 0x0

    const-string/jumbo v2, "sys.oem.boot_count"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 645
    .local v1, "bootCount":I
    add-int/lit8 v9, v1, 0x1

    .end local v1    # "bootCount":I
    .local v9, "bootCount":I
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sys.oem.boot_count"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v10, v1

    .line 649
    .local v10, "bootIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v10, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    const/high16 v1, -0x77000000

    invoke-virtual {v10, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 656
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 657
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 658
    .local v12, "callingPid":I
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/android/server/am/-$$Lambda$UserController$I0p0bKjuvsSPLZB71mKQFfdUjZ4;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v10

    move v4, v6

    move v5, v11

    move v15, v6

    .end local v6    # "userId":I
    .local v15, "userId":I
    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$UserController$I0p0bKjuvsSPLZB71mKQFfdUjZ4;-><init>(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 686
    return-void

    .line 597
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "bootCount":I
    .end local v10    # "bootIntent":Landroid/content/Intent;
    .end local v11    # "callingUid":I
    .end local v12    # "callingPid":I
    .end local v15    # "userId":I
    .restart local v6    # "userId":I
    :catchall_1
    move-exception v0

    move v15, v6

    .end local v6    # "userId":I
    .restart local v15    # "userId":I
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method private finishUserUnlocking(Lcom/android/server/am/UserState;)Z
    .locals 6
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 426
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 428
    .local v0, "userId":I
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 431
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2

    iget v3, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 434
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v1}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 438
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 439
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x1040081

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 442
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$stQk1028ON105v_u-VMykVjcxLk;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/am/-$$Lambda$UserController$stQk1028ON105v_u-VMykVjcxLk;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    return v4

    .line 432
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v1

    return v2

    .line 434
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private forceStopUser(ILjava/lang/String;)V
    .locals 22
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 996
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/UserController$Injector;->activityManagerForceStopPackage(ILjava/lang/String;)V

    .line 997
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_STOPPED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    move-object v6, v2

    .line 998
    const/high16 v4, 0x50000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1000
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1001
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1003
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 1004
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    .line 1001
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x3e8

    const/16 v21, -0x1

    invoke-virtual/range {v5 .. v21}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1005
    return-void
.end method

.method private getSwitchingFromSystemUserMessage()Ljava/lang/String;
    .locals 2

    .line 2149
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2150
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSwitchingToSystemUserMessage()Ljava/lang/String;
    .locals 2

    .line 2155
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2156
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "userId"    # I

    .line 2024
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private getUsersToStopLU(I)[I
    .locals 11
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 973
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 974
    .local v0, "startedUsersSize":I
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 975
    .local v1, "userIds":Landroid/util/IntArray;
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 976
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 977
    .local v2, "userGroupId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 978
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    .line 979
    .local v5, "uss":Lcom/android/server/am/UserState;
    iget-object v6, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 981
    .local v6, "startedUserId":I
    iget-object v7, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 983
    .local v7, "startedUserGroupId":I
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_0

    if-ne v2, v7, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v8

    .line 986
    .local v10, "sameGroup":Z
    :goto_1
    if-ne v6, p1, :cond_1

    move v8, v9

    .line 987
    .local v8, "sameUserId":Z
    :cond_1
    if-eqz v10, :cond_3

    if-eqz v8, :cond_2

    .line 988
    goto :goto_2

    .line 990
    :cond_2
    invoke-virtual {v1, v6}, Landroid/util/IntArray;->add(I)V

    .line 977
    .end local v5    # "uss":Lcom/android/server/am/UserState;
    .end local v6    # "startedUserId":I
    .end local v7    # "startedUserGroupId":I
    .end local v8    # "sameUserId":Z
    .end local v10    # "sameGroup":Z
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 992
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    return-object v3
.end method

.method private isCallingOnHandlerThread()Z
    .locals 2

    .line 1308
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCurrentUserLU(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2015
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$stopSingleUserLU$4(Landroid/app/IStopUserCallback;I)V
    .locals 1
    .param p0, "stopUserCallback"    # Landroid/app/IStopUserCallback;
    .param p1, "userId"    # I

    .line 769
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    .line 772
    :goto_0
    return-void
.end method

.method private maybeUnlockChildProfile(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 1405
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1406
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 1407
    .local v1, "userIds":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 1408
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 1407
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1410
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    array-length v0, v1

    :goto_1
    if-ge v2, v0, :cond_2

    aget v3, v1, v2

    .line 1412
    .local v3, "testUserId":I
    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1413
    .local v4, "parent":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_1

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, p1, :cond_1

    if-eq v3, p1, :cond_1

    .line 1414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (parent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "): attempting unlock because parent was just unlocked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    invoke-direct {p0, v3}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    .line 1411
    .end local v3    # "testUserId":I
    .end local v4    # "parent":Landroid/content/pm/UserInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1419
    :cond_2
    return-void

    .line 1410
    .end local v1    # "userIds":[I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private maybeUnlockUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1348
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method private moveUserToForeground(Lcom/android/server/am/UserState;II)V
    .locals 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 1627
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p3, p1}, Lcom/android/server/am/UserController$Injector;->stackSupervisorSwitchUser(ILcom/android/server/am/UserState;)Z

    move-result v0

    .line 1628
    .local v0, "homeInFront":Z
    if-eqz v0, :cond_0

    .line 1629
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "moveUserToForeground"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/am/UserController$Injector;->startHomeActivity(ILjava/lang/String;)V

    goto :goto_0

    .line 1631
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->stackSupervisorResumeFocusedStackTopActivity()V

    .line 1633
    :goto_0
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    .line 1634
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcasts(II)V

    .line 1635
    return-void
.end method

.method private static notifyFinished(ILandroid/os/IProgressListener;)V
    .locals 1
    .param p0, "userId"    # I
    .param p1, "listener"    # Landroid/os/IProgressListener;

    .line 1352
    if-nez p1, :cond_0

    return-void

    .line 1354
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    goto :goto_0

    .line 1355
    :catch_0
    move-exception v0

    .line 1357
    :goto_0
    return-void
.end method

.method private showUserSwitchDialog(Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 1468
    .local p1, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1469
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingFromSystemUserMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingToSystemUserMessage()Ljava/lang/String;

    move-result-object v4

    .line 1468
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/UserController$Injector;->showOpUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->startUserSwitching()V

    .line 1476
    return-void
.end method

.method private stopBackgroundUsersIfEnforced(I)V
    .locals 6
    .param p1, "oldUserId"    # I

    .line 1517
    if-nez p1, :cond_0

    .line 1518
    return-void

    .line 1521
    :cond_0
    const-string/jumbo v0, "no_run_in_background"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1523
    .local v0, "disallowRunInBg":Z
    :goto_1
    if-nez v0, :cond_3

    .line 1524
    return-void

    .line 1526
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1527
    :try_start_0
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v3, :cond_4

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopBackgroundUsersIfEnforced stopping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and related users"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3, v3}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 1530
    monitor-exit v2

    .line 1531
    return-void

    .line 1530
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopGuestOrEphemeralUserIfBackground(I)V
    .locals 4
    .param p1, "oldUserId"    # I

    .line 1011
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop guest or ephemeral user if background: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1013
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1014
    .local v1, "oldUss":Lcom/android/server/am/UserState;
    if-eqz p1, :cond_5

    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq p1, v2, :cond_5

    if-eqz v1, :cond_5

    iget v2, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    iget v2, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 1019
    .end local v1    # "oldUss":Lcom/android/server/am/UserState;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1021
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1022
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1023
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 1025
    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1027
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1028
    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0, v3, v3}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 1029
    monitor-exit v2

    .line 1031
    :cond_4
    return-void

    .line 1029
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1017
    .local v1, "oldUss":Lcom/android/server/am/UserState;
    :cond_5
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    .line 1019
    .end local v1    # "oldUss":Lcom/android/server/am/UserState;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private stopSingleUserLU(ILandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "stopUserCallback"    # Landroid/app/IStopUserCallback;
    .param p3, "keyEvictedCallback"    # Lcom/android/server/am/UserState$KeyEvictedCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 761
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopSingleUserLocked userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    .line 763
    .local v0, "uss":Lcom/android/server/am/UserState;
    if-nez v0, :cond_2

    .line 766
    if-eqz p2, :cond_1

    .line 767
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$QAvDazb_bK3Biqbrt7rtbU_i_EQ;

    invoke-direct {v2, p2, p1}, Lcom/android/server/am/-$$Lambda$UserController$QAvDazb_bK3Biqbrt7rtbU_i_EQ;-><init>(Landroid/app/IStopUserCallback;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 774
    :cond_1
    return-void

    .line 777
    :cond_2
    if-eqz p2, :cond_3

    .line 778
    iget-object v1, v0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_3
    if-eqz p3, :cond_4

    .line 781
    iget-object v1, v0, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_4
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_5

    .line 786
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserState;->setState(I)V

    .line 787
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, p1, v2}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 788
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 791
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$fU2mcMYCcCOsyUuGHKIUB-nSo1Y;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/-$$Lambda$UserController$fU2mcMYCcCOsyUuGHKIUB-nSo1Y;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 818
    :cond_5
    return-void
.end method

.method private stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "stopUserCallback"    # Landroid/app/IStopUserCallback;
    .param p4, "keyEvictedCallback"    # Lcom/android/server/am/UserState$KeyEvictedCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 726
    if-nez p1, :cond_0

    .line 727
    const/4 v0, -0x3

    return v0

    .line 729
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    const/4 v0, -0x2

    return v0

    .line 732
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLU(I)[I

    move-result-object v0

    .line 734
    .local v0, "usersToStop":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    const-string v3, "ActivityManager"

    const/4 v4, 0x0

    if-ge v1, v2, :cond_6

    .line 735
    aget v2, v0, v1

    .line 736
    .local v2, "relatedUserId":I
    if-eqz v2, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 734
    .end local v2    # "relatedUserId":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 737
    .restart local v2    # "relatedUserId":I
    :cond_3
    :goto_1
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopUsersLocked cannot stop related user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_4
    if-eqz p2, :cond_5

    .line 741
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force stop user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". Related users will not be stopped"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/am/UserController;->stopSingleUserLU(ILandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    .line 744
    return v4

    .line 746
    :cond_5
    const/4 v3, -0x4

    return v3

    .line 749
    .end local v1    # "i":I
    .end local v2    # "relatedUserId":I
    :cond_6
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopUsersLocked usersToStop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_7
    array-length v1, v0

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_a

    aget v3, v0, v2

    .line 751
    .local v3, "userIdToStop":I
    nop

    .line 752
    const/4 v5, 0x0

    if-ne v3, p1, :cond_8

    move-object v6, p3

    goto :goto_3

    :cond_8
    move-object v6, v5

    .line 753
    :goto_3
    if-ne v3, p1, :cond_9

    move-object v5, p4

    .line 751
    :cond_9
    invoke-direct {p0, v3, v6, v5}, Lcom/android/server/am/UserController;->stopSingleUserLU(ILandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    .line 750
    .end local v3    # "userIdToStop":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 755
    :cond_a
    return v4
.end method

.method private timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 5
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 1534
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1535
    :try_start_0
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1537
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1538
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 1540
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1542
    monitor-exit v0

    .line 1543
    return-void

    .line 1542
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private timeoutUserSwitchCallbacks(II)V
    .locals 4
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .line 1546
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1547
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1548
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Observers that didn\'t respond: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1552
    :cond_0
    monitor-exit v0

    .line 1553
    return-void

    .line 1552
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    .line 1362
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1363
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1364
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 1367
    .local v1, "storageManager":Landroid/os/storage/IStorageManager;
    :try_start_0
    iget v2, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    goto :goto_0

    .line 1368
    :catch_0
    move-exception v2

    .line 1369
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1374
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1375
    .local v1, "uss":Lcom/android/server/am/UserState;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1376
    iget-object v4, v1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v4, p4}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1377
    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput-boolean v4, v1, Lcom/android/server/am/UserState;->tokenProvided:Z

    .line 1379
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1381
    if-nez v1, :cond_3

    .line 1382
    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 1383
    return v3

    .line 1386
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1387
    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 1388
    return v3

    .line 1396
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->maybeUnlockChildProfile(I)V

    .line 1398
    return v2

    .line 1379
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private updateCurrentProfileIds()V
    .locals 9

    .line 1872
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1874
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 1875
    .local v1, "currentProfileIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 1876
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    aput v4, v1, v3

    .line 1875
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1878
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 1879
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1880
    :try_start_0
    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 1882
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 1883
    nop

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1884
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1885
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v6, v7, :cond_1

    .line 1886
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    iget v8, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1883
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1889
    .end local v2    # "i":I
    :cond_2
    monitor-exit v4

    .line 1890
    return-void

    .line 1889
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateStartedUserArrayLU()V
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1829
    const/4 v0, 0x0

    .line 1830
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-ge v1, v2, :cond_1

    .line 1831
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 1833
    .local v2, "uss":Lcom/android/server/am/UserState;
    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v4, :cond_0

    iget v4, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v3, :cond_0

    .line 1835
    add-int/lit8 v0, v0, 0x1

    .line 1830
    .end local v2    # "uss":Lcom/android/server/am/UserState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1838
    .end local v1    # "i":I
    :cond_1
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 1839
    const/4 v0, 0x0

    .line 1840
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1841
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 1842
    .restart local v2    # "uss":Lcom/android/server/am/UserState;
    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v4, :cond_2

    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v3, :cond_2

    .line 1844
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "num":I
    .local v6, "num":I
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v5, v0

    move v0, v6

    .line 1840
    .end local v2    # "uss":Lcom/android/server/am/UserState;
    .end local v6    # "num":I
    .restart local v0    # "num":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1847
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private updateUserToLockLU(I)I
    .locals 5
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 945
    move v0, p1

    .line 946
    .local v0, "userIdToLock":I
    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    if-nez v1, :cond_1

    .line 947
    const-string/jumbo v1, "no_run_in_background"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 948
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 949
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 950
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 951
    .local v1, "totalUnlockedUsers":I
    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    const-string v3, "ActivityManager"

    if-le v1, v2, :cond_0

    .line 952
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 953
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishUserStopped, stopping user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lock user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 957
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishUserStopped, user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",skip locking"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/16 v0, -0x2710

    .line 964
    .end local v1    # "totalUnlockedUsers":I
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method canStartMoreUsers()Z
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Continue user switch oldUser #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newUser #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v0, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    .line 1618
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 1619
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1620
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1622
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground(I)V

    .line 1623
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopBackgroundUsersIfEnforced(I)V

    .line 1624
    return-void
.end method

.method dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 19
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 1556
    move-object/from16 v11, p0

    move/from16 v12, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatch onUserSwitching oldUser #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newUser #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v0, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 1558
    .local v14, "observerCount":I
    if-lez v14, :cond_1

    .line 1559
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v0

    .line 1560
    .local v15, "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1561
    const/4 v0, 0x1

    move-object/from16 v10, p1

    :try_start_0
    iput-boolean v0, v10, Lcom/android/server/am/UserState;->switching:Z

    .line 1562
    iput-object v15, v11, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1563
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1564
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1565
    .local v7, "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 1566
    .local v16, "dispatchStartedTime":J
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_0
    if-ge v9, v14, :cond_0

    .line 1569
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v9}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1570
    .local v8, "name":Ljava/lang/String;
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1571
    :try_start_2
    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1572
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1573
    :try_start_3
    new-instance v0, Lcom/android/server/am/UserController$7;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide/from16 v3, v16

    move-object v5, v8

    move-object v6, v15

    move-object/from16 v18, v8

    .end local v8    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    move-object/from16 v8, p1

    move v13, v9

    .end local v9    # "i":I
    .local v13, "i":I
    move/from16 v9, p2

    move/from16 v10, p3

    :try_start_4
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;JLjava/lang/String;Landroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V

    .line 1593
    .local v0, "callback":Landroid/os/IRemoteCallback;
    iget-object v1, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, v12, v0}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1595
    .end local v0    # "callback":Landroid/os/IRemoteCallback;
    .end local v18    # "name":Ljava/lang/String;
    goto :goto_2

    .line 1572
    .end local v13    # "i":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "i":I
    :catchall_0
    move-exception v0

    move-object/from16 v18, v8

    move v13, v9

    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "i":I
    .restart local v13    # "i":I
    .restart local v18    # "name":Ljava/lang/String;
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v7    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v13    # "i":I
    .end local v14    # "observerCount":I
    .end local v15    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "dispatchStartedTime":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "uss":Lcom/android/server/am/UserState;
    .end local p2    # "oldUserId":I
    .end local p3    # "newUserId":I
    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1594
    .end local v18    # "name":Ljava/lang/String;
    .restart local v7    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v13    # "i":I
    .restart local v14    # "observerCount":I
    .restart local v15    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "dispatchStartedTime":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "uss":Lcom/android/server/am/UserState;
    .restart local p2    # "oldUserId":I
    .restart local p3    # "newUserId":I
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1572
    .restart local v18    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 1594
    .end local v13    # "i":I
    .end local v18    # "name":Ljava/lang/String;
    .restart local v9    # "i":I
    :catch_1
    move-exception v0

    move v13, v9

    .line 1566
    .end local v9    # "i":I
    .restart local v13    # "i":I
    :goto_2
    add-int/lit8 v9, v13, 0x1

    move-object/from16 v10, p1

    move/from16 v13, p2

    .end local v13    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    :cond_0
    move v13, v9

    .line 1597
    .end local v7    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v9    # "i":I
    .end local v15    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "dispatchStartedTime":J
    goto :goto_3

    .line 1563
    .restart local v15    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 1598
    .end local v15    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1599
    :try_start_8
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 1600
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1602
    :goto_3
    iget-object v0, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1603
    return-void

    .line 1600
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method dispatchUserSwitchComplete(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1492
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1493
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1494
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1496
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    goto :goto_1

    .line 1497
    :catch_0
    move-exception v2

    .line 1494
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1500
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1501
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 2191
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2192
    :try_start_0
    const-string v1, "  mStartedUsers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2193
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2194
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 2195
    .local v3, "uss":Lcom/android/server/am/UserState;
    const-string v4, "    User #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2196
    iget-object v4, v3, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2197
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2198
    const-string v4, ""

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2193
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2200
    .end local v2    # "i":I
    :cond_0
    const-string v2, "  mStartedUserArray: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2201
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 2202
    if-lez v2, :cond_1

    .line 2203
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2204
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2201
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2206
    .end local v2    # "i":I
    :cond_2
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2207
    const-string v2, "  mUserLru: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2208
    move v2, v1

    .restart local v2    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2209
    if-lez v2, :cond_3

    .line 2210
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2211
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2208
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2213
    .end local v2    # "i":I
    :cond_4
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2214
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 2215
    const-string v2, "  mUserProfileGroupIds:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2216
    nop

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2217
    const-string v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2218
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2219
    const-string v2, " -> profile #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2220
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2216
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2223
    .end local v1    # "i":I
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastActiveUsers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2225
    monitor-exit v0

    .line 2226
    return-void

    .line 2225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method ensureNotSpecialUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1786
    if-ltz p1, :cond_0

    .line 1787
    return-void

    .line 1789
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call does not support special user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method exists(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 2046
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    return v0
.end method

.method expandUserId(I)[I
    .locals 2
    .param p1, "userId"    # I

    .line 2038
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2039
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object v0

    .line 2041
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    return-object v0
.end method

.method finishUserStopped(Lcom/android/server/am/UserState;)V
    .locals 9
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 859
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 861
    .local v0, "userId":I
    const/4 v1, 0x1

    .line 864
    .local v1, "lockUser":Z
    move v2, v0

    .line 865
    .local v2, "userIdToLock":I
    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 866
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 867
    .local v4, "stopCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 868
    .local v5, "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_1

    iget v6, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 871
    :cond_0
    const/4 v6, 0x1

    .line 873
    .local v6, "stopped":Z
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 874
    iget-object v7, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 875
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 876
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->updateUserToLockLU(I)I

    move-result v7

    move v2, v7

    .line 877
    const/16 v7, -0x2710

    if-ne v2, v7, :cond_2

    .line 878
    const/4 v1, 0x0

    goto :goto_1

    .line 869
    .end local v6    # "stopped":Z
    :cond_1
    :goto_0
    const/4 v6, 0x0

    .line 881
    .restart local v6    # "stopped":Z
    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    if-eqz v6, :cond_3

    .line 883
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/UserManagerInternal;->removeUserState(I)V

    .line 884
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v0}, Lcom/android/server/am/UserController$Injector;->activityManagerOnUserStopped(I)V

    .line 887
    const-string v3, "finish user"

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/UserController;->forceStopUser(ILjava/lang/String;)V

    .line 890
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/IStopUserCallback;

    .line 892
    .local v7, "callback":Landroid/app/IStopUserCallback;
    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v7, v0}, Landroid/app/IStopUserCallback;->userStopped(I)V

    goto :goto_3

    .line 893
    :cond_4
    invoke-interface {v7, v0}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 895
    :goto_3
    goto :goto_4

    .line 894
    :catch_0
    move-exception v8

    .line 896
    .end local v7    # "callback":Landroid/app/IStopUserCallback;
    :goto_4
    goto :goto_2

    .line 898
    :cond_5
    if-eqz v6, :cond_8

    .line 899
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v0}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerCleanupUser(I)V

    .line 900
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v0}, Lcom/android/server/am/UserController$Injector;->stackSupervisorRemoveUser(I)V

    .line 902
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 903
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/pm/UserManagerService;->removeUserEvenWhenDisallowed(I)Z

    .line 906
    :cond_6
    if-nez v1, :cond_7

    .line 907
    return-void

    .line 909
    :cond_7
    move v3, v2

    .line 913
    .local v3, "userIdToLockF":I
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;

    invoke-direct {v8, p0, v3, v0, v5}, Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;-><init>(Lcom/android/server/am/UserController;IILjava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 932
    .end local v3    # "userIdToLockF":I
    :cond_8
    return-void

    .line 881
    .end local v4    # "stopCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .end local v5    # "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    .end local v6    # "stopped":Z
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method finishUserStopping(ILcom/android/server/am/UserState;)V
    .locals 19
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 822
    move-object/from16 v1, p0

    move/from16 v15, p1

    move-object/from16 v14, p2

    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 824
    .local v3, "shutdownIntent":Landroid/content/Intent;
    new-instance v5, Lcom/android/server/am/UserController$5;

    invoke-direct {v5, v1, v14}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    .line 837
    .local v5, "shutdownReceiver":Landroid/content/IIntentReceiver;
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 838
    :try_start_0
    iget v0, v14, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    .line 840
    monitor-exit v2

    return-void

    .line 842
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v14, v0}, Lcom/android/server/am/UserState;->setState(I)V

    .line 843
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v2, v14, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v2}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 846
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v2, 0x4007

    .line 848
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 846
    invoke-virtual {v0, v2, v4, v15}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 849
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->stopUser(I)V

    .line 851
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move v14, v0

    const/16 v0, 0x3e8

    move v15, v0

    .line 854
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 855
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 851
    move/from16 v18, p1

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 856
    return-void

    .line 843
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method finishUserSwitch(Lcom/android/server/am/UserState;)V
    .locals 2
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 297
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$UserController$f2F3ceAG58MOmBJm9cmZ7HhYcmE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$UserController$f2F3ceAG58MOmBJm9cmZ7HhYcmE;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method

.method finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .locals 38
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 482
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 484
    .local v15, "userId":I
    invoke-static {v15}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 487
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v4, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v0, v2, :cond_1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 493
    :catchall_0
    move-exception v0

    move v4, v15

    goto/16 :goto_6

    .line 490
    :cond_1
    const/4 v0, 0x2

    const/4 v4, 0x3

    :try_start_2
    invoke-virtual {v2, v0, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_2

    .line 491
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 493
    :cond_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 494
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 495
    iget-object v0, v2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v0}, Lcom/android/internal/util/ProgressReporter;->finish()V

    .line 499
    if-nez v15, :cond_3

    .line 500
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/high16 v3, 0x40000

    invoke-virtual {v0, v3}, Lcom/android/server/am/UserController$Injector;->startPersistentApps(I)V

    .line 504
    invoke-direct {v1, v15}, Lcom/android/server/am/UserController;->maybeUnlockChildProfile(I)V

    .line 507
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, v15}, Lcom/android/server/am/UserController$Injector;->installEncryptionUnawareProviders(I)V

    .line 510
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .local v14, "unlockedIntent":Landroid/content/Intent;
    move-object v4, v14

    .line 511
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    const/high16 v0, 0x50000000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 514
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v20, v14

    .end local v14    # "unlockedIntent":Landroid/content/Intent;
    .local v20, "unlockedIntent":Landroid/content/Intent;
    move/from16 v14, v16

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v21, v15

    .end local v15    # "userId":I
    .local v21, "userId":I
    move/from16 v15, v16

    const/16 v16, 0x3e8

    .line 516
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 514
    move/from16 v19, v21

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 518
    move/from16 v4, v21

    .end local v21    # "userId":I
    .local v4, "userId":I
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 519
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 520
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_4

    .line 521
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "profileUnlockedIntent":Landroid/content/Intent;
    move-object/from16 v22, v5

    .line 523
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const-string v7, "android.intent.extra.USER"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 524
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 527
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v34, 0x3e8

    .line 529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v35

    .line 530
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v36

    iget v0, v3, Landroid/content/pm/UserInfo;->id:I

    move/from16 v37, v0

    .line 527
    invoke-virtual/range {v21 .. v37}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 539
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    .end local v5    # "profileUnlockedIntent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v0, "persist.vendor.op.last.slot_suffix"

    const-string v3, "ERROR"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "lastBootSuccessSlot":Ljava/lang/String;
    const-string/jumbo v0, "ro.boot.slot_suffix"

    const-string v5, "ERROR"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 541
    .local v5, "currentBootSuccessSlot":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 542
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 544
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    :try_start_5
    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_6

    .line 545
    const-string v0, "ActivityManager"

    const-string/jumbo v7, "ota info: boot from ota"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->hasMdmReady()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 547
    const-string v0, "ActivityManager"

    const-string/jumbo v7, "mdm service has been ready !!"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string/jumbo v0, "persist.op.last.version.ota"

    const-string v7, "ERROR"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "lastBootVersion":Ljava/lang/String;
    const-string/jumbo v7, "ro.build.version.ota"

    const-string v8, "ERROR"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 550
    .local v7, "currentBootVersion":Ljava/lang/String;
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "lastBootVersion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",currentBootVersion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v8

    .line 552
    .local v8, "mOpDeviceManagerInjector":Lnet/oneplus/odm/OpDeviceManagerInjector;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 553
    .local v9, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "appid"

    const-string v11, "1IM6KRES9P"

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 555
    .local v10, "usageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "currentBootVersion"

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string/jumbo v11, "lastBootVersion"

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v11, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v11}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "bootFromOta"

    invoke-virtual {v8, v11, v12, v10, v9}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveUrgentOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 558
    .end local v0    # "lastBootVersion":Ljava/lang/String;
    .end local v7    # "currentBootVersion":Ljava/lang/String;
    .end local v8    # "mOpDeviceManagerInjector":Lnet/oneplus/odm/OpDeviceManagerInjector;
    .end local v9    # "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "usageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 559
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "oneplus.intent.mdm_ready"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    new-instance v7, Landroid/mdmBootCompletedReceiver/mdmBootCompletedReceiver;

    invoke-direct {v7}, Landroid/mdmBootCompletedReceiver/mdmBootCompletedReceiver;-><init>()V

    .line 562
    .local v7, "mdmBootCompleted":Landroid/mdmBootCompletedReceiver/mdmBootCompletedReceiver;
    iget-object v8, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v8}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 563
    nop

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    .end local v7    # "mdmBootCompleted":Landroid/mdmBootCompletedReceiver/mdmBootCompletedReceiver;
    goto :goto_0

    .line 565
    :cond_6
    const-string/jumbo v0, "persist.vendor.op.last.slot_suffix"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string/jumbo v0, "persist.vendor.op.last.version.ota"

    const-string/jumbo v7, "ro.build.version.ota"

    const-string v8, "ERROR"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 570
    :goto_0
    goto :goto_1

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 573
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    :cond_7
    :goto_1
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 574
    .local v0, "info":Landroid/content/pm/UserInfo;
    iget-object v6, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 579
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 580
    iget-boolean v6, v2, Lcom/android/server/am/UserState;->tokenProvided:Z

    if-eqz v6, :cond_9

    iget-object v6, v1, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 581
    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v6, 0x1

    .local v6, "quiet":Z
    :goto_3
    goto :goto_4

    .line 583
    .end local v6    # "quiet":Z
    :cond_a
    const/4 v6, 0x0

    .line 585
    .restart local v6    # "quiet":Z
    :goto_4
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v8, Lcom/android/server/am/-$$Lambda$UserController$K71HFCIuD0iCwrDTKYnIUDyAeWg;

    invoke-direct {v8, v1, v2}, Lcom/android/server/am/-$$Lambda$UserController$K71HFCIuD0iCwrDTKYnIUDyAeWg;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v7, v4, v6, v8}, Lcom/android/server/am/UserController$Injector;->sendPreBootBroadcast(IZLjava/lang/Runnable;)V

    .line 587
    .end local v6    # "quiet":Z
    goto :goto_5

    .line 588
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    .line 590
    :goto_5
    return-void

    .line 493
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    .end local v3    # "lastBootSuccessSlot":Ljava/lang/String;
    .end local v4    # "userId":I
    .end local v5    # "currentBootSuccessSlot":Ljava/lang/String;
    .end local v20    # "unlockedIntent":Landroid/content/Intent;
    .restart local v15    # "userId":I
    :catchall_1
    move-exception v0

    move v4, v15

    .end local v15    # "userId":I
    .restart local v4    # "userId":I
    :goto_6
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_6
.end method

.method getCurrentOrTargetUserId()I
    .locals 3

    .line 1991
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1992
    :try_start_0
    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_0
    monitor-exit v0

    return v1

    .line 1993
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentOrTargetUserIdLU()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1998
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_0
    return v0
.end method

.method getCurrentProfileIds()[I
    .locals 2

    .line 2096
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2097
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    monitor-exit v0

    return-object v1

    .line 2098
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .line 1963
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1965
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1967
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1969
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1971
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1976
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_2

    .line 1977
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0

    .line 1979
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1980
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLU()Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1981
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentUserId()I
    .locals 2

    .line 2008
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2009
    :try_start_0
    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    monitor-exit v0

    return v1

    .line 2010
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentUserIdLU()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2004
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return v0
.end method

.method getCurrentUserLU()Landroid/content/pm/UserInfo;
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1986
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 1987
    .local v0, "userId":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method getRunningUsersLU()Ljava/util/List;
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v0, "runningUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 310
    .local v2, "userId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 311
    .local v3, "uss":Lcom/android/server/am/UserState;
    if-nez v3, :cond_1

    .line 313
    goto :goto_0

    .line 315
    :cond_1
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 318
    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3

    .line 322
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 323
    goto :goto_0

    .line 326
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v2    # "userId":Ljava/lang/Integer;
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    goto :goto_0

    .line 328
    :cond_4
    return-object v0
.end method

.method getStartedUserArray()[I
    .locals 2

    .line 1893
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1894
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    monitor-exit v0

    return-object v1

    .line 1895
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStartedUserState(I)Lcom/android/server/am/UserState;
    .locals 2
    .param p1, "userId"    # I

    .line 1816
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1817
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    monitor-exit v0

    return-object v1

    .line 1818
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUserIds()[I
    .locals 1

    .line 2028
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method getUsers()[I
    .locals 3

    .line 2019
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 2020
    .local v0, "ums":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    :goto_0
    return-object v1
.end method

.method handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .locals 14
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "allowMode"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;

    .line 1696
    move-object v0, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move-object/from16 v10, p7

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1697
    .local v11, "callingUserId":I
    if-ne v11, v8, :cond_0

    .line 1698
    return v8

    .line 1707
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v12

    .line 1709
    .local v12, "targetUserId":I
    if-eqz v7, :cond_b

    const/16 v1, 0x3e8

    if-eq v7, v1, :cond_b

    .line 1711
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v7}, Lcom/android/server/am/UserController$Injector;->isCallerRecents(I)Z

    move-result v1

    const/4 v13, 0x2

    if-eqz v1, :cond_1

    .line 1712
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    if-ne v11, v1, :cond_1

    .line 1713
    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1716
    const/4 v1, 0x1

    .local v1, "allow":Z
    goto :goto_0

    .line 1717
    .end local v1    # "allow":Z
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-nez v1, :cond_2

    .line 1720
    const/4 v1, 0x1

    .restart local v1    # "allow":Z
    goto :goto_0

    .line 1721
    .end local v1    # "allow":Z
    :cond_2
    if-ne v9, v13, :cond_3

    .line 1723
    const/4 v1, 0x0

    .restart local v1    # "allow":Z
    goto :goto_0

    .line 1724
    .end local v1    # "allow":Z
    :cond_3
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-eqz v1, :cond_4

    .line 1727
    const/4 v1, 0x0

    .restart local v1    # "allow":Z
    goto :goto_0

    .line 1728
    .end local v1    # "allow":Z
    :cond_4
    if-nez v9, :cond_5

    .line 1730
    const/4 v1, 0x1

    .restart local v1    # "allow":Z
    goto :goto_0

    .line 1731
    .end local v1    # "allow":Z
    :cond_5
    const/4 v1, 0x1

    if-ne v9, v1, :cond_a

    .line 1734
    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v1

    .line 1738
    .restart local v1    # "allow":Z
    :goto_0
    if-nez v1, :cond_9

    .line 1739
    const/4 v2, -0x3

    if-ne v8, v2, :cond_6

    .line 1742
    move v12, v11

    move-object/from16 v3, p6

    goto :goto_1

    .line 1744
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1745
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v3, "Permission Denial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    move-object/from16 v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    if-eqz v10, :cond_7

    .line 1748
    const-string v4, " from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    :cond_7
    const-string v4, " asks to run as user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1753
    const-string v4, " but is calling from uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    invoke-static {v2, v7}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1755
    const-string v4, "; this requires "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1757
    if-eq v9, v13, :cond_8

    .line 1758
    const-string v4, " or "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1762
    .local v4, "msg":Ljava/lang/String;
    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1738
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_9
    move-object/from16 v3, p6

    goto :goto_1

    .line 1736
    .end local v1    # "allow":Z
    :cond_a
    move-object/from16 v3, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1709
    :cond_b
    move-object/from16 v3, p6

    .line 1767
    :goto_1
    if-nez p4, :cond_c

    .line 1768
    invoke-virtual {p0, v12}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    .line 1771
    :cond_c
    const/16 v1, 0x7d0

    if-ne v7, v1, :cond_e

    if-ltz v12, :cond_e

    .line 1772
    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {p0, v1, v12}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    .line 1773
    :cond_d
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shell does not have permission to access user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    .line 1774
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1777
    :cond_e
    :goto_2
    return v12
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 2229
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 2283
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->showUserSwitchDialog(Landroid/util/Pair;)V

    .line 2286
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->updateDefaultForScreenCompat()V

    goto/16 :goto_0

    .line 2231
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    .line 2232
    goto/16 :goto_0

    .line 2280
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->dispatchLockedBootComplete(I)V

    .line 2281
    goto/16 :goto_0

    .line 2255
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2256
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemServiceManager;->unlockUser(I)V

    .line 2258
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$avTAix2Aub5zSKSBBofMYY2qXyk;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/-$$Lambda$UserController$avTAix2Aub5zSKSBBofMYY2qXyk;-><init>(Lcom/android/server/am/UserController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2261
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/UserState;

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    .line 2262
    goto/16 :goto_0

    .line 2243
    .end local v0    # "userId":I
    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->timeoutUserSwitchCallbacks(II)V

    .line 2244
    goto/16 :goto_0

    .line 2277
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(I)V

    .line 2278
    goto/16 :goto_0

    .line 2274
    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    .line 2275
    goto :goto_0

    .line 2264
    :sswitch_7
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v1, 0x4008

    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 2266
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 2264
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2267
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8008

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2269
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2267
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2271
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    .line 2272
    goto :goto_0

    .line 2249
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8007

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2251
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2249
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2252
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    .line 2253
    goto :goto_0

    .line 2246
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 2247
    goto :goto_0

    .line 2240
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2241
    goto :goto_0

    .line 2237
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2238
    goto :goto_0

    .line 2234
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2235
    nop

    .line 2290
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_c
        0x14 -> :sswitch_b
        0x1e -> :sswitch_a
        0x28 -> :sswitch_9
        0x32 -> :sswitch_8
        0x3c -> :sswitch_7
        0x46 -> :sswitch_6
        0x50 -> :sswitch_5
        0x5a -> :sswitch_4
        0x64 -> :sswitch_3
        0x6e -> :sswitch_2
        0x78 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method hasMdmReady()Z
    .locals 6

    .line 468
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 469
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 470
    .local v1, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 471
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v5, "net.oneplus.odm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 472
    const/4 v2, 0x1

    return v2

    .line 474
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 475
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method hasStartedUserState(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1822
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1823
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1824
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2059
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isCurrentProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 2090
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2091
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2092
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isLockScreenDisabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 2133
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method isSameProfileGroup(II)Z
    .locals 5
    .param p1, "callingUserId"    # I
    .param p2, "targetUserId"    # I

    .line 2063
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 2064
    return v0

    .line 2066
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2067
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 2069
    .local v2, "callingProfile":I
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 2071
    .local v4, "targetProfile":I
    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    .line 2073
    .end local v2    # "callingProfile":I
    .end local v4    # "targetProfile":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isSystemUserStarted()Z
    .locals 6

    .line 1951
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1952
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1953
    .local v1, "uss":Lcom/android/server/am/UserState;
    if-nez v1, :cond_0

    .line 1954
    monitor-exit v0

    return v2

    .line 1956
    :cond_0
    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    :cond_1
    move v2, v4

    :cond_2
    monitor-exit v0

    return v2

    .line 1959
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isUserOrItsParentRunning(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 2077
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2078
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2079
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2081
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 2082
    .local v2, "parentUserId":I
    if-ne v2, v3, :cond_1

    .line 2083
    monitor-exit v0

    return v1

    .line 2085
    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2086
    .end local v2    # "parentUserId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isUserRunning(II)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 1899
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1900
    .local v0, "state":Lcom/android/server/am/UserState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1901
    return v1

    .line 1903
    :cond_0
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1904
    return v3

    .line 1906
    :cond_1
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_3

    .line 1907
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_2

    .line 1912
    return v1

    .line 1910
    :cond_2
    return v3

    .line 1915
    :cond_3
    and-int/lit8 v2, p2, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-eqz v2, :cond_6

    .line 1916
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x2

    if-eq v2, v7, :cond_5

    if-eq v2, v4, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_4

    .line 1925
    return v1

    .line 1923
    :cond_4
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    .line 1919
    :cond_5
    return v3

    .line 1928
    :cond_6
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_9

    .line 1929
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    if-eq v2, v4, :cond_8

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_7

    .line 1937
    return v1

    .line 1935
    :cond_7
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    .line 1931
    :cond_8
    return v3

    .line 1941
    :cond_9
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    if-eq v2, v6, :cond_a

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    if-eq v2, v5, :cond_a

    move v1, v3

    :cond_a
    return v1
.end method

.method public synthetic lambda$finishUserStopped$6$UserController(IILjava/util/ArrayList;)V
    .locals 3
    .param p1, "userIdToLockF"    # I
    .param p2, "userId"    # I
    .param p3, "keyEvictedCallbacks"    # Ljava/util/ArrayList;

    .line 914
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 916
    const-string v1, "ActivityManager"

    const-string v2, "User was restarted, skipping key eviction"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    monitor-exit v0

    return-void

    .line 919
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->lockUserKey(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 924
    nop

    .line 925
    if-ne p1, p2, :cond_1

    .line 926
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState$KeyEvictedCallback;

    .line 927
    .local v1, "callback":Lcom/android/server/am/UserState$KeyEvictedCallback;
    invoke-interface {v1, p2}, Lcom/android/server/am/UserState$KeyEvictedCallback;->keyEvicted(I)V

    .line 928
    .end local v1    # "callback":Lcom/android/server/am/UserState$KeyEvictedCallback;
    goto :goto_0

    .line 930
    :cond_1
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 919
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public synthetic lambda$finishUserSwitch$0$UserController(Lcom/android/server/am/UserState;)V
    .locals 2
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 298
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 300
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    iget v1, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->stopRunningUsersLU(I)V

    .line 302
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$finishUserUnlocked$2$UserController(Lcom/android/server/am/UserState;)V
    .locals 0
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 586
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method public synthetic lambda$finishUserUnlockedCompleted$3$UserController(Landroid/content/Intent;III)V
    .locals 35
    .param p1, "bootIntent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    move-object/from16 v0, p0

    move/from16 v14, p2

    move/from16 v34, p2

    move-object/from16 v2, p1

    move/from16 v17, p2

    move/from16 v15, p3

    move/from16 v16, p4

    .line 659
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v3, Lcom/android/server/am/UserController$2;

    move-object v4, v3

    invoke-direct {v3, v0, v14}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;I)V

    const-string v20, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    move-result-object v8

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v18, 0x3e8

    move v0, v14

    move/from16 v14, v18

    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 676
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oem.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, "oemBootIntent":Landroid/content/Intent;
    move-object/from16 v19, v1

    .line 677
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    const/high16 v2, 0x19000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v18, v2

    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    move-result-object v25

    sget v30, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 683
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v32

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v33

    .line 681
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v31, 0x3e8

    invoke-virtual/range {v18 .. v34}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 685
    return-void
.end method

.method public synthetic lambda$finishUserUnlocking$1$UserController(ILcom/android/server/am/UserState;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 443
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    const-string v0, "ActivityManager"

    const-string v1, "User key got locked unexpectedly, leaving user locked."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    .line 448
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 451
    monitor-exit v0

    return-void

    .line 453
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 456
    iget-object v0, p2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 460
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 462
    return-void

    .line 453
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$handleMessage$9$UserController(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2259
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController$Injector;->loadUserRecents(I)V

    .line 2260
    return-void
.end method

.method public synthetic lambda$scheduleStartProfiles$7$UserController()V
    .locals 4

    .line 1039
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1043
    :cond_0
    return-void
.end method

.method public synthetic lambda$startUser$8$UserController(IZLandroid/os/IProgressListener;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "unlockListener"    # Landroid/os/IProgressListener;

    .line 1180
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    return-void
.end method

.method public synthetic lambda$stopSingleUserLU$5$UserController(ILcom/android/server/am/UserState;)V
    .locals 21
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 795
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STOPPING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "stoppingIntent":Landroid/content/Intent;
    move-object v5, v2

    .line 796
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 797
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 798
    const-string v3, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 800
    new-instance v7, Lcom/android/server/am/UserController$4;

    move-object/from16 v3, p2

    invoke-direct {v7, v0, v1, v3}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    .line 809
    .local v7, "stoppingReceiver":Landroid/content/IIntentReceiver;
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4, v1}, Lcom/android/server/am/UserController$Injector;->clearBroadcastQueueForUser(I)V

    .line 811
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 814
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 815
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 811
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    const/16 v20, -0x1

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 816
    return-void
.end method

.method onSystemReady()V
    .locals 1

    .line 1862
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1863
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    .line 1864
    return-void
.end method

.method onUserRemoved(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 2102
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2103
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2104
    .local v1, "size":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2105
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-eq v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 2106
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 2107
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2104
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2111
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 2112
    .end local v1    # "size":I
    monitor-exit v0

    .line 2113
    return-void

    .line 2112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .locals 3
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .param p2, "name"    # Ljava/lang/String;

    .line 1793
    const-string v0, "Observer name cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1804
    return-void

    .line 1796
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: registerUserSwitchObserver() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1797
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1798
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1800
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method restartUser(IZ)I
    .locals 3
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .line 689
    new-instance v0, Lcom/android/server/am/UserController$3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Z)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/am/UserController;->stopUser(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v0

    return v0
.end method

.method scheduleStartProfiles()V
    .locals 2

    .line 1038
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$UserController$G0WJmqt4X_QG30fRlvXobn18mrE;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$UserController$G0WJmqt4X_QG30fRlvXobn18mrE;-><init>(Lcom/android/server/am/UserController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1044
    return-void
.end method

.method sendBootCompleted(Landroid/content/IIntentReceiver;)V
    .locals 3
    .param p1, "resultTo"    # Landroid/content/IIntentReceiver;

    .line 1852
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1853
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 1854
    .local v1, "startedUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/UserState;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1855
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1856
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 1857
    .local v2, "uss":Lcom/android/server/am/UserState;
    invoke-direct {p0, v2, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 1855
    .end local v2    # "uss":Lcom/android/server/am/UserState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1859
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 1854
    .end local v1    # "startedUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/UserState;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V
    .locals 2
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1608
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1609
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1611
    return-void
.end method

.method sendForegroundProfileChanged(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1807
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1808
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1809
    return-void
.end method

.method sendUserSwitchBroadcasts(II)V
    .locals 36
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .line 1638
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    .line 1639
    .local v21, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    .line 1640
    .local v22, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 1643
    .local v23, "ident":J
    const/4 v0, 0x0

    const-string v15, "android.intent.extra.user_handle"

    const/high16 v14, 0x50000000

    if-ltz v2, :cond_1

    .line 1645
    :try_start_0
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v4

    move-object v13, v4

    .line 1646
    .local v13, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move v12, v4

    .line 1647
    .local v12, "count":I
    const/4 v4, 0x0

    move v11, v4

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_0

    .line 1648
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    move v10, v4

    .line 1649
    .local v10, "profileUserId":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v4

    .line 1650
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1652
    invoke-virtual {v9, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1653
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v28, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    move-object v5, v9

    move-object/from16 v29, v9

    .end local v9    # "intent":Landroid/content/Intent;
    .local v29, "intent":Landroid/content/Intent;
    move-object/from16 v9, v16

    move/from16 v30, v10

    .end local v10    # "profileUserId":I
    .local v30, "profileUserId":I
    move-object/from16 v10, v18

    move/from16 v31, v11

    .end local v11    # "i":I
    .local v31, "i":I
    move-object/from16 v11, v19

    move/from16 v32, v12

    .end local v12    # "count":I
    .local v32, "count":I
    move/from16 v12, v20

    move-object/from16 v33, v13

    .end local v13    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v33, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v13, v25

    move/from16 v14, v26

    move-object/from16 v34, v15

    move/from16 v15, v27

    move/from16 v16, v28

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v30

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1647
    nop

    .end local v30    # "profileUserId":I
    add-int/lit8 v11, v31, 0x1

    move/from16 v12, v32

    move-object/from16 v13, v33

    move-object/from16 v15, v34

    const/high16 v14, 0x50000000

    .end local v31    # "i":I
    .restart local v11    # "i":I
    goto :goto_0

    .end local v29    # "intent":Landroid/content/Intent;
    .end local v32    # "count":I
    .end local v33    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12    # "count":I
    .restart local v13    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    move/from16 v31, v11

    move/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v34, v15

    .end local v11    # "i":I
    .end local v12    # "count":I
    .end local v13    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v31    # "i":I
    .restart local v32    # "count":I
    .restart local v33    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_1

    .line 1689
    .end local v31    # "i":I
    .end local v32    # "count":I
    .end local v33    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 1643
    :cond_1
    move-object/from16 v34, v15

    .line 1659
    :goto_1
    if-ltz v3, :cond_3

    .line 1661
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1662
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v15, v4

    .line 1663
    .local v15, "count":I
    const/4 v4, 0x0

    move v14, v4

    .local v14, "i":I
    :goto_2
    if-ge v14, v15, :cond_2

    .line 1664
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    move v13, v4

    .line 1665
    .local v13, "profileUserId":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v4

    .line 1666
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v11, 0x50000000

    invoke-virtual {v12, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1668
    move-object/from16 v10, v34

    invoke-virtual {v12, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1669
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    sget v27, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    move-object v5, v12

    move-object/from16 v35, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v18

    move-object/from16 v28, v12

    .end local v12    # "intent":Landroid/content/Intent;
    .local v28, "intent":Landroid/content/Intent;
    move/from16 v12, v19

    move/from16 v29, v13

    .end local v13    # "profileUserId":I
    .local v29, "profileUserId":I
    move-object/from16 v13, v20

    move/from16 v30, v14

    .end local v14    # "i":I
    .local v30, "i":I
    move/from16 v14, v25

    move/from16 v25, v15

    .end local v15    # "count":I
    .local v25, "count":I
    move/from16 v15, v26

    move/from16 v16, v27

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v29

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1663
    nop

    .end local v29    # "profileUserId":I
    add-int/lit8 v14, v30, 0x1

    move/from16 v15, v25

    move-object/from16 v34, v35

    .end local v30    # "i":I
    .restart local v14    # "i":I
    goto :goto_2

    .end local v25    # "count":I
    .end local v28    # "intent":Landroid/content/Intent;
    .restart local v15    # "count":I
    :cond_2
    move/from16 v30, v14

    move/from16 v25, v15

    move-object/from16 v35, v34

    .line 1674
    .end local v14    # "i":I
    .end local v15    # "count":I
    .restart local v25    # "count":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v4

    .line 1675
    .local v15, "intent":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1677
    move-object/from16 v4, v35

    invoke-virtual {v15, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1678
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, "android.permission.MANAGE_USERS"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    const/16 v20, -0x1

    move-object v5, v15

    move-object/from16 v26, v15

    .end local v15    # "intent":Landroid/content/Intent;
    .local v26, "intent":Landroid/content/Intent;
    move/from16 v15, v16

    move/from16 v16, v18

    move/from16 v18, v21

    move/from16 v19, v22

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1685
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-static {v4}, Lcom/android/server/am/UserController$Injector;->access$500(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 1689
    .end local v0    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v25    # "count":I
    .end local v26    # "intent":Landroid/content/Intent;
    :goto_3
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_3
    :goto_4
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1690
    nop

    .line 1691
    return-void
.end method

.method setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "switchingFromSystemUserMessage"    # Ljava/lang/String;

    .line 2137
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2138
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 2139
    monitor-exit v0

    .line 2140
    return-void

    .line 2139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setSwitchingToSystemUserMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "switchingToSystemUserMessage"    # Ljava/lang/String;

    .line 2143
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2144
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 2145
    monitor-exit v0

    .line 2146
    return-void

    .line 2145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected shouldConfirmCredentials(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 2120
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2122
    monitor-exit v0

    return v2

    .line 2124
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2125
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2126
    return v2

    .line 2128
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    .line 2129
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 2124
    .end local v0    # "km":Landroid/app/KeyguardManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method startProfiles()V
    .locals 9

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 1048
    .local v0, "currentUserId":I
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "startProfilesLocked"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 1051
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1052
    .local v4, "profilesToStart":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1053
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->flags:I

    const/16 v8, 0x10

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_1

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v0, :cond_1

    .line 1054
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1055
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    goto :goto_0

    .line 1058
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1059
    .local v5, "profilesToStartSize":I
    const/4 v6, 0x0

    .line 1060
    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_3

    iget v7, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_3

    .line 1061
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7, v3}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    .line 1060
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1063
    :cond_3
    if-ge v6, v5, :cond_4

    .line 1064
    const-string v3, "More profiles than MAX_RUNNING_USERS"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_4
    return-void
.end method

.method startUser(IZ)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .line 1069
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method startUser(IZLandroid/os/IProgressListener;)Z
    .locals 32
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "unlockListener"    # Landroid/os/IProgressListener;

    .line 1106
    move-object/from16 v1, p0

    move/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p3

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting userid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    .line 1119
    .local v20, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    .line 1120
    .local v21, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1122
    .local v22, "ident":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    move v11, v0

    .line 1123
    .local v11, "oldUserId":I
    const/4 v0, 0x1

    if-ne v11, v14, :cond_3

    .line 1124
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v2

    .line 1125
    .local v2, "state":Lcom/android/server/am/UserState;
    if-nez v2, :cond_0

    .line 1126
    const-string v3, "ActivityManager"

    const-string v4, "Current user has no UserState"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1129
    :cond_0
    if-nez v14, :cond_1

    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    if-nez v3, :cond_1

    goto :goto_0

    .line 1133
    :cond_1
    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1136
    invoke-static {v14, v12}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 1138
    :cond_2
    nop

    .line 1301
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1138
    return v0

    .line 1143
    .end local v2    # "state":Lcom/android/server/am/UserState;
    :cond_3
    :goto_0
    if-eqz v13, :cond_4

    .line 1144
    :try_start_1
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v3, "startUser"

    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController$Injector;->clearAllLockedTasks(Ljava/lang/String;)V

    .line 1147
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    move-object/from16 v24, v2

    .line 1148
    .local v24, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-nez v24, :cond_5

    .line 1149
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No user info for user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 1150
    nop

    .line 1301
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1150
    return v2

    .line 1152
    :cond_5
    if-eqz v13, :cond_6

    :try_start_2
    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1153
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot switch to User #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": not a full user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 1154
    nop

    .line 1301
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1154
    return v2

    .line 1157
    :cond_6
    if-eqz v13, :cond_7

    :try_start_3
    iget-boolean v3, v1, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v3, :cond_7

    .line 1158
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    const v4, 0x10a0124

    const v5, 0x10a0123

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    .line 1162
    :cond_7
    const/4 v3, 0x0

    .line 1163
    .local v3, "needStart":Z
    const/4 v4, 0x0

    .line 1168
    .local v4, "updateUmState":Z
    iget-object v5, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 1169
    :try_start_4
    iget-object v6, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UserState;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 1170
    .local v6, "uss":Lcom/android/server/am/UserState;
    const/4 v7, 0x0

    const/4 v8, 0x5

    if-nez v6, :cond_8

    .line 1171
    :try_start_5
    new-instance v9, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    move-object v6, v9

    .line 1172
    iget-object v9, v6, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v10, Lcom/android/server/am/UserController$UserProgressListener;

    invoke-direct {v10, v7}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$1;)V

    invoke-virtual {v9, v10}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1173
    iget-object v9, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v14, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1174
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1175
    const/4 v3, 0x1

    .line 1176
    const/4 v4, 0x1

    move/from16 v25, v4

    move-object v10, v6

    goto :goto_1

    .line 1186
    .end local v6    # "uss":Lcom/android/server/am/UserState;
    :catchall_0
    move-exception v0

    move/from16 v30, v11

    move v2, v14

    goto/16 :goto_8

    .line 1177
    .restart local v6    # "uss":Lcom/android/server/am/UserState;
    :cond_8
    :try_start_6
    iget v9, v6, Lcom/android/server/am/UserState;->state:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    if-ne v9, v8, :cond_9

    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->isCallingOnHandlerThread()Z

    move-result v9

    if-nez v9, :cond_9

    .line 1178
    const-string v2, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is shutting down - will start after full stop"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;

    invoke-direct {v7, v1, v14, v13, v12}, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;-><init>(Lcom/android/server/am/UserController;IZLandroid/os/IProgressListener;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1181
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1301
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1181
    return v0

    .line 1183
    :cond_9
    move/from16 v25, v4

    move-object v10, v6

    .end local v4    # "updateUmState":Z
    .end local v6    # "uss":Lcom/android/server/am/UserState;
    .local v10, "uss":Lcom/android/server/am/UserState;
    .local v25, "updateUmState":Z
    :goto_1
    :try_start_8
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1184
    .local v4, "userIdInt":Ljava/lang/Integer;
    iget-object v6, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1185
    iget-object v6, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    nop

    .end local v4    # "userIdInt":Ljava/lang/Integer;
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 1187
    if-eqz v12, :cond_a

    .line 1188
    :try_start_9
    iget-object v4, v10, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v4, v12}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1190
    :cond_a
    if-eqz v25, :cond_b

    .line 1191
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    iget v5, v10, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v4, v14, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1193
    :cond_b
    if-eqz v13, :cond_c

    .line 1195
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/server/am/UserController$Injector;->reportGlobalUsageEventLocked(I)V

    .line 1196
    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    .line 1197
    :try_start_a
    iput v14, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 1198
    const/16 v5, -0x2710

    iput v5, v1, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1199
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1200
    :try_start_b
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->updateUserConfiguration()V

    .line 1201
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1202
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v5

    invoke-virtual {v4, v14, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    .line 1203
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    .line 1206
    iget-boolean v4, v1, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v4, :cond_d

    .line 1207
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1208
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_2

    .line 1199
    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .end local v22    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    :try_start_d
    throw v0

    .line 1211
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    .restart local v22    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    :cond_c
    iget v4, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1212
    .local v4, "currentUserIdInt":Ljava/lang/Integer;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1213
    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    .line 1214
    iget-object v5, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 1215
    :try_start_e
    iget-object v6, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1216
    iget-object v6, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1222
    .end local v4    # "currentUserIdInt":Ljava/lang/Integer;
    :cond_d
    :goto_2
    :try_start_f
    iget v4, v10, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_e

    .line 1226
    iget v4, v10, Lcom/android/server/am/UserState;->lastState:I

    invoke-virtual {v10, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1227
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    iget v5, v10, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v4, v14, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1228
    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .line 1229
    :try_start_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1230
    monitor-exit v4

    .line 1231
    const/4 v3, 0x1

    move/from16 v26, v3

    goto :goto_3

    .line 1230
    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .end local v22    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    :try_start_11
    throw v0

    .line 1232
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    .restart local v22    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    :cond_e
    iget v4, v10, Lcom/android/server/am/UserState;->state:I

    if-ne v4, v8, :cond_f

    .line 1235
    invoke-virtual {v10, v2}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1236
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    iget v5, v10, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v4, v14, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1237
    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 1238
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1239
    monitor-exit v4

    .line 1240
    const/4 v3, 0x1

    move/from16 v26, v3

    goto :goto_3

    .line 1239
    :catchall_3
    move-exception v0

    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .end local v22    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    :try_start_13
    throw v0

    .line 1232
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    .restart local v22    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    :cond_f
    move/from16 v26, v3

    .line 1243
    .end local v3    # "needStart":Z
    .local v26, "needStart":Z
    :goto_3
    iget v3, v10, Lcom/android/server/am/UserState;->state:I

    if-nez v3, :cond_10

    .line 1246
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    .line 1251
    iget-object v3, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x32

    .line 1252
    invoke-virtual {v4, v5, v14, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1251
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1255
    :cond_10
    if-eqz v13, :cond_11

    .line 1256
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4, v14, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1258
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1259
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1e

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1260
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3, v11, v14, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1262
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v11, v14, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 1266
    :cond_11
    if-eqz v26, :cond_12

    .line 1268
    :try_start_14
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v2

    .line 1269
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1271
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v9, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1272
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v27, 0x0

    sget v28, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v15, 0x3e8

    move-object v3, v9

    move-object/from16 v29, v9

    .end local v9    # "intent":Landroid/content/Intent;
    .local v29, "intent":Landroid/content/Intent;
    move-object/from16 v9, v16

    move-object/from16 v30, v10

    .end local v10    # "uss":Lcom/android/server/am/UserState;
    .local v30, "uss":Lcom/android/server/am/UserState;
    move/from16 v10, v17

    move/from16 v31, v11

    .end local v11    # "oldUserId":I
    .local v31, "oldUserId":I
    move-object/from16 v11, v18

    move/from16 v12, v19

    move/from16 v13, v27

    move/from16 v14, v28

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, p1

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto :goto_4

    .line 1301
    .end local v24    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v25    # "updateUmState":Z
    .end local v26    # "needStart":Z
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v30    # "uss":Lcom/android/server/am/UserState;
    .end local v31    # "oldUserId":I
    :catchall_4
    move-exception v0

    move/from16 v2, p1

    goto/16 :goto_9

    .line 1266
    .restart local v10    # "uss":Lcom/android/server/am/UserState;
    .restart local v11    # "oldUserId":I
    .restart local v24    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v25    # "updateUmState":Z
    .restart local v26    # "needStart":Z
    :cond_12
    move-object/from16 v30, v10

    move/from16 v31, v11

    .line 1277
    .end local v10    # "uss":Lcom/android/server/am/UserState;
    .end local v11    # "oldUserId":I
    .restart local v30    # "uss":Lcom/android/server/am/UserState;
    .restart local v31    # "oldUserId":I
    :goto_4
    if-eqz p2, :cond_13

    .line 1278
    move/from16 v2, p1

    move-object/from16 v14, v30

    move/from16 v15, v31

    .end local v30    # "uss":Lcom/android/server/am/UserState;
    .end local v31    # "oldUserId":I
    .local v14, "uss":Lcom/android/server/am/UserState;
    .local v15, "oldUserId":I
    :try_start_15
    invoke-direct {v1, v14, v15, v2}, Lcom/android/server/am/UserController;->moveUserToForeground(Lcom/android/server/am/UserState;II)V

    goto :goto_5

    .line 1280
    .end local v14    # "uss":Lcom/android/server/am/UserState;
    .end local v15    # "oldUserId":I
    .restart local v30    # "uss":Lcom/android/server/am/UserState;
    .restart local v31    # "oldUserId":I
    :cond_13
    move/from16 v2, p1

    move-object/from16 v14, v30

    move/from16 v15, v31

    .end local v30    # "uss":Lcom/android/server/am/UserState;
    .end local v31    # "oldUserId":I
    .restart local v14    # "uss":Lcom/android/server/am/UserState;
    .restart local v15    # "oldUserId":I
    invoke-direct {v1, v14}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 1283
    :goto_5
    if-eqz v26, :cond_14

    .line 1284
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_STARTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v13, v3

    .line 1285
    .local v13, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v13, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1286
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v13, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1287
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/am/UserController$6;

    invoke-direct {v6, v1}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    sget v27, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    const/16 v19, -0x1

    move-object v4, v13

    move-object/from16 v28, v13

    .end local v13    # "intent":Landroid/content/Intent;
    .local v28, "intent":Landroid/content/Intent;
    move/from16 v13, v17

    move-object/from16 v29, v14

    .end local v14    # "uss":Lcom/android/server/am/UserState;
    .local v29, "uss":Lcom/android/server/am/UserState;
    move/from16 v14, v18

    move/from16 v30, v15

    .end local v15    # "oldUserId":I
    .local v30, "oldUserId":I
    move/from16 v15, v27

    move/from16 v17, v20

    move/from16 v18, v21

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    goto :goto_6

    .line 1283
    .end local v28    # "intent":Landroid/content/Intent;
    .end local v29    # "uss":Lcom/android/server/am/UserState;
    .end local v30    # "oldUserId":I
    .restart local v14    # "uss":Lcom/android/server/am/UserState;
    .restart local v15    # "oldUserId":I
    :cond_14
    move-object/from16 v29, v14

    move/from16 v30, v15

    .line 1301
    .end local v14    # "uss":Lcom/android/server/am/UserState;
    .end local v15    # "oldUserId":I
    .end local v24    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v25    # "updateUmState":Z
    .end local v26    # "needStart":Z
    :goto_6
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1302
    nop

    .line 1304
    return v0

    .line 1217
    .restart local v3    # "needStart":Z
    .restart local v4    # "currentUserIdInt":Ljava/lang/Integer;
    .restart local v10    # "uss":Lcom/android/server/am/UserState;
    .restart local v11    # "oldUserId":I
    .restart local v24    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v25    # "updateUmState":Z
    :catchall_5
    move-exception v0

    move-object/from16 v29, v10

    move/from16 v30, v11

    move v2, v14

    .end local v10    # "uss":Lcom/android/server/am/UserState;
    .end local v11    # "oldUserId":I
    .restart local v29    # "uss":Lcom/android/server/am/UserState;
    .restart local v30    # "oldUserId":I
    :goto_7
    :try_start_16
    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .end local v22    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    :try_start_17
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    .restart local v22    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    :catchall_6
    move-exception v0

    goto :goto_7

    .line 1186
    .end local v4    # "currentUserIdInt":Ljava/lang/Integer;
    .end local v29    # "uss":Lcom/android/server/am/UserState;
    .end local v30    # "oldUserId":I
    .restart local v11    # "oldUserId":I
    :catchall_7
    move-exception v0

    move/from16 v30, v11

    move v2, v14

    move/from16 v4, v25

    .end local v11    # "oldUserId":I
    .restart local v30    # "oldUserId":I
    goto :goto_8

    .end local v25    # "updateUmState":Z
    .end local v30    # "oldUserId":I
    .local v4, "updateUmState":Z
    .restart local v11    # "oldUserId":I
    :catchall_8
    move-exception v0

    move/from16 v30, v11

    move v2, v14

    .end local v11    # "oldUserId":I
    .restart local v30    # "oldUserId":I
    :goto_8
    :try_start_18
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .end local v22    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 1301
    .end local v3    # "needStart":Z
    .end local v4    # "updateUmState":Z
    .end local v24    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v30    # "oldUserId":I
    .restart local v20    # "callingUid":I
    .restart local v21    # "callingPid":I
    .restart local v22    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    :catchall_9
    move-exception v0

    goto :goto_9

    .line 1186
    .restart local v3    # "needStart":Z
    .restart local v4    # "updateUmState":Z
    .restart local v24    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v30    # "oldUserId":I
    :catchall_a
    move-exception v0

    goto :goto_8

    .line 1301
    .end local v3    # "needStart":Z
    .end local v4    # "updateUmState":Z
    .end local v24    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v30    # "oldUserId":I
    :catchall_b
    move-exception v0

    move v2, v14

    :goto_9
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1108
    .end local v20    # "callingUid":I
    .end local v21    # "callingPid":I
    .end local v22    # "ident":J
    :cond_15
    move v2, v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: switchUser() from pid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requires "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1112
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method startUserInForeground(I)V
    .locals 3
    .param p1, "targetUserId"    # I

    .line 1315
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    move-result v0

    .line 1316
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 1317
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1319
    :cond_0
    return-void
.end method

.method stopRunningUsersLU(I)V
    .locals 6
    .param p1, "maxRunningUsers"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 333
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v0

    .line 334
    .local v0, "currentlyRunning":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 335
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 337
    .local v2, "userId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v3, v4, :cond_1

    .line 339
    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5, v5}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v3

    if-nez v3, :cond_2

    .line 342
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 344
    .end local v2    # "userId":Ljava/lang/Integer;
    :cond_2
    goto :goto_0

    .line 345
    :cond_3
    return-void
.end method

.method stopUser(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .locals 3
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "stopUserCallback"    # Landroid/app/IStopUserCallback;
    .param p4, "keyEvictedCallback"    # Lcom/android/server/am/UserState$KeyEvictedCallback;

    .line 701
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 710
    if-ltz p1, :cond_0

    if-eqz p1, :cond_0

    .line 713
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 714
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 716
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 711
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t stop system user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: switchUser() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method switchUser(I)Z
    .locals 8
    .param p1, "targetUserId"    # I

    .line 1422
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 1423
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 1424
    .local v0, "currentUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1425
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 1426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is already the current user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    return v2

    .line 1429
    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 1430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No user info for user #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    return v3

    .line 1433
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot switch to User #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": not supported"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    return v3

    .line 1437
    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot switch to User #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": not a full user"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    return v3

    .line 1441
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1442
    :try_start_0
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1443
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    iget-boolean v4, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v4, :cond_4

    .line 1445
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1446
    .local v3, "currentUserInfo":Landroid/content/pm/UserInfo;
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1447
    .local v4, "userNames":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1448
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1450
    .end local v3    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "userNames":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    goto :goto_0

    .line 1451
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1452
    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1455
    :goto_0
    return v2

    .line 1443
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    .line 1322
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1332
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1334
    .local v0, "binderToken":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1336
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1334
    return v2

    .line 1336
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1324
    .end local v0    # "binderToken":J
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: unlockUser() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1328
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;

    .line 1812
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1813
    return-void
.end method

.method unsafeConvertIncomingUser(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 1781
    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1782
    :cond_0
    move v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 1781
    :goto_1
    return v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2161
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2162
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 2163
    .local v1, "token":J
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const-wide v6, 0x10500000001L

    if-ge v4, v5, :cond_0

    .line 2164
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    .line 2165
    .local v5, "uss":Lcom/android/server/am/UserState;
    const-wide v8, 0x20b00000001L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 2166
    .local v8, "uToken":J
    iget-object v10, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2167
    const-wide v6, 0x10b00000002L

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/am/UserState;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2168
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2163
    .end local v5    # "uss":Lcom/android/server/am/UserState;
    .end local v8    # "uToken":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2170
    .end local v4    # "i":I
    :cond_0
    move v4, v3

    .restart local v4    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 2171
    const-wide v8, 0x20500000002L

    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v5, v5, v4

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2170
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2173
    .end local v4    # "i":I
    :cond_1
    move v4, v3

    .restart local v4    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2174
    const-wide v8, 0x20500000003L

    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2173
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2176
    .end local v4    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2177
    nop

    .local v3, "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2178
    const-wide v4, 0x20b00000004L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2179
    .local v4, "uToken":J
    iget-object v8, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 2180
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 2179
    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2181
    const-wide v8, 0x10500000002L

    iget-object v10, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 2182
    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 2181
    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2183
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2177
    .end local v4    # "uToken":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2186
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2187
    .end local v1    # "token":J
    monitor-exit v0

    .line 2188
    return-void

    .line 2187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
