.class Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserController$Injector;,
        Lcom/android/server/am/UserController$UserProgressListener;,
        Lcom/android/server/am/UserController$UserJourneySession;,
        Lcom/android/server/am/UserController$UserLifecycleEventState;,
        Lcom/android/server/am/UserController$UserLifecycleEvent;,
        Lcom/android/server/am/UserController$UserJourney;
    }
.end annotation


# static fields
.field private static final CLEAR_USER_JOURNEY_SESSION_MSG:I = 0xc8

.field static final CONTINUE_USER_SWITCH_MSG:I = 0x14

.field static final FOREGROUND_PROFILE_CHANGED_MSG:I = 0x46

.field private static final INVALID_SESSION_ID:J = 0x0L

.field private static final MDM_ACTION_BOOT_COMPLETED:Ljava/lang/String; = "oneplus.intent.mdm_ready"

.field private static final MDM_SERVICE_NAME:Ljava/lang/String; = "net.oneplus.odm"

.field private static final OEM_ACTION_BOOT_COMPLETED:Ljava/lang/String; = "com.oem.intent.action.BOOT_COMPLETED"

.field static final REPORT_LOCKED_BOOT_COMPLETE_MSG:I = 0x6e

.field static final REPORT_USER_SWITCH_COMPLETE_MSG:I = 0x50

.field static final REPORT_USER_SWITCH_MSG:I = 0xa

.field static final START_PROFILES_MSG:I = 0x28

.field static final START_USER_SWITCH_FG_MSG:I = 0x78

.field static final START_USER_SWITCH_UI_MSG:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final USER_CURRENT_MSG:I = 0x3c

.field private static final USER_JOURNEY_TIMEOUT_MS:I = 0x15f90

.field private static final USER_JOURNEY_UNKNOWN:I = 0x0

.field private static final USER_JOURNEY_USER_CREATE:I = 0x4

.field private static final USER_JOURNEY_USER_START:I = 0x3

.field private static final USER_JOURNEY_USER_SWITCH_FG:I = 0x2

.field private static final USER_JOURNEY_USER_SWITCH_UI:I = 0x1

.field private static final USER_LIFECYCLE_EVENT_CREATE_USER:I = 0x3

.field private static final USER_LIFECYCLE_EVENT_START_USER:I = 0x2

.field private static final USER_LIFECYCLE_EVENT_STATE_BEGIN:I = 0x1

.field private static final USER_LIFECYCLE_EVENT_STATE_FINISH:I = 0x2

.field private static final USER_LIFECYCLE_EVENT_STATE_NONE:I = 0x0

.field private static final USER_LIFECYCLE_EVENT_SWITCH_USER:I = 0x1

.field private static final USER_LIFECYCLE_EVENT_UNKNOWN:I = 0x0

.field private static final USER_LIFECYCLE_EVENT_UNLOCKED_USER:I = 0x6

.field private static final USER_LIFECYCLE_EVENT_UNLOCKING_USER:I = 0x5

.field private static final USER_LIFECYCLE_EVENT_USER_RUNNING_LOCKED:I = 0x4

.field static final USER_START_MSG:I = 0x32

.field private static final USER_SWITCH_CALLBACKS_TIMEOUT_MS:I = 0x1388

.field static final USER_SWITCH_CALLBACKS_TIMEOUT_MSG:I = 0x5a

.field static final USER_SWITCH_TIMEOUT_MS:I = 0xbb8

.field static final USER_SWITCH_TIMEOUT_MSG:I = 0x1e

.field private static final USER_SWITCH_WARNING_TIMEOUT_MS:I = 0x1f4

.field static final USER_UNLOCKED_MSG:I = 0x69

.field static final USER_UNLOCK_MSG:I = 0x64


# instance fields
.field volatile mBootCompleted:Z

.field private volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I

.field private volatile mCurrentUserId:I

.field private mDelayUserDataLocking:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private final mInjector:Lcom/android/server/am/UserController$Injector;

.field private final mLastActiveUsers:Ljava/util/ArrayList;
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

.field private mMaxRunningUsers:I

.field private mStartedUserArray:[I

.field private final mStartedUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchingFromSystemUserMessage:Ljava/lang/String;

.field private mSwitchingToSystemUserMessage:Ljava/lang/String;

.field private volatile mTargetUserId:I

.field private mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUserIdToUserJourneyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/UserController$UserJourneySession;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserLru:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserProfileGroupIds:Landroid/util/SparseIntArray;

.field private final mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSwitchUiEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 388
    new-instance v0, Lcom/android/server/am/UserController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserController$Injector;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;-><init>(Lcom/android/server/am/UserController$Injector;)V

    .line 389
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .locals 5
    .param p1, "injector"    # Lcom/android/server/am/UserController$Injector;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 275
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 281
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 293
    const/4 v1, 0x1

    new-array v2, v1, [I

    aput v0, v2, v0

    iput-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 298
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 304
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 310
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 313
    iput-boolean v1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    .line 373
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    .line 393
    iput-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 394
    invoke-virtual {p1, p0}, Lcom/android/server/am/UserController$Injector;->getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 395
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, p0}, Lcom/android/server/am/UserController$Injector;->getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 397
    new-instance v1, Lcom/android/server/am/UserState;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v1, v2}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 398
    .local v1, "uss":Lcom/android/server/am/UserState;
    iget-object v2, v1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v3, Lcom/android/server/am/UserController$UserProgressListener;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 399
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 402
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 403
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/UserController;)Lcom/android/server/am/UserController$Injector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/UserController;

    .line 145
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/UserController;

    .line 145
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/UserController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/UserController;

    .line 145
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/UserController;

    .line 145
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    return-object v0
.end method

.method private canInteractWithAcrossProfilesPermission(IZIILjava/lang/String;)Z
    .locals 3
    .param p1, "allowMode"    # I
    .param p2, "isSameProfileGroup"    # Z
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 2065
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 2066
    return v0

    .line 2068
    :cond_0
    if-nez p2, :cond_1

    .line 2069
    return v0

    .line 2071
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 2073
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2072
    const-string v2, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v1, v2, p3, p4, p5}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 2071
    :cond_2
    return v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 2355
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2364
    return-void

    .line 2357
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2358
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2361
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private clearSessionId(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2756
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2757
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2758
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2759
    monitor-exit v0

    .line 2760
    return-void

    .line 2759
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearSessionId(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "journey"    # I

    .line 2744
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2745
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserController$UserJourneySession;

    .line 2746
    .local v1, "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    if-ne v2, p2, :cond_0

    .line 2747
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    .line 2749
    .end local v1    # "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    :cond_0
    monitor-exit v0

    .line 2750
    return-void

    .line 2749
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchForegroundProfileChanged(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1735
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1736
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1738
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    goto :goto_1

    .line 1739
    :catch_0
    move-exception v2

    .line 1736
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1743
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1744
    return-void
.end method

.method private dispatchLockedBootComplete(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1760
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1761
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1763
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onLockedBootComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1766
    goto :goto_1

    .line 1764
    :catch_0
    move-exception v2

    .line 1761
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1768
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1769
    return-void
.end method

.method private dispatchUserLocking(ILjava/util/List;)V
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/am/UserState$KeyEvictedCallback;",
            ">;)V"
        }
    .end annotation

    .line 1126
    .local p2, "keyEvictedCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$UserController$2SW3yysxmLLBBPZQ1P-qHVFL46g;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/-$$Lambda$UserController$2SW3yysxmLLBBPZQ1P-qHVFL46g;-><init>(Lcom/android/server/am/UserController;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1145
    return-void
.end method

.method private enforceShellRestriction(Ljava/lang/String;I)V
    .locals 3
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2367
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_1

    .line 2368
    if-ltz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2369
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

    .line 2373
    :cond_1
    :goto_0
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;)V
    .locals 1
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 499
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 500
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .locals 21
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;

    .line 503
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 504
    .local v6, "userId":I
    const/16 v0, 0x757e

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 506
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 508
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v0, v2, :cond_0

    .line 509
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 511
    :catchall_0
    move-exception v0

    move v4, v6

    goto/16 :goto_4

    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 517
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v0

    const/4 v15, 0x4

    if-eqz v0, :cond_3

    .line 518
    invoke-direct {v1, v6, v15, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 520
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v4, v2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v6, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 522
    if-nez v6, :cond_1

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 523
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 525
    .local v4, "elapsedTimeMs":J
    const/16 v0, 0xf0

    const/16 v7, 0xc

    invoke-static {v0, v7, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 528
    const-wide/32 v7, 0x1d4c0

    .line 529
    .local v7, "maxElapsedTimeMs":J
    const-wide/32 v9, 0x1d4c0

    cmp-long v0, v4, v9

    if-lez v0, :cond_1

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "finishUserBoot took too long. elapsedTimeMs="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "SystemServerTiming"

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v4    # "elapsedTimeMs":J
    .end local v7    # "maxElapsedTimeMs":J
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 536
    iget-object v0, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6e

    invoke-virtual {v0, v4, v6, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 538
    new-instance v0, Landroid/content/Intent;

    const/4 v3, 0x0

    const-string v4, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, "intent":Landroid/content/Intent;
    move-object v4, v0

    .line 539
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    const/high16 v3, -0x77000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 543
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

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v15, v16

    const/16 v16, 0x3e8

    .line 546
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 543
    move/from16 v20, v6

    .end local v6    # "userId":I
    .local v20, "userId":I
    move-object/from16 v6, p2

    move/from16 v19, v20

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    goto :goto_0

    .line 535
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v20    # "userId":I
    .restart local v6    # "userId":I
    :cond_2
    move/from16 v20, v6

    .end local v6    # "userId":I
    .restart local v20    # "userId":I
    goto :goto_0

    .line 517
    .end local v20    # "userId":I
    .restart local v6    # "userId":I
    :cond_3
    move/from16 v20, v6

    .line 552
    .end local v6    # "userId":I
    .restart local v20    # "userId":I
    :goto_0
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    move/from16 v4, v20

    .end local v20    # "userId":I
    .local v4, "userId":I
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerService;->isProfile(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 553
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 554
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_4

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    .line 555
    const/4 v5, 0x4

    invoke-virtual {v1, v3, v5}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 556
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

    .line 558
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    goto :goto_2

    .line 560
    :cond_4
    if-nez v0, :cond_5

    const-string v3, "<null>"

    goto :goto_1

    :cond_5
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 561
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

    .line 564
    .end local v0    # "parent":Landroid/content/pm/UserInfo;
    .end local v3    # "parentId":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 565
    :cond_6
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    .line 567
    :goto_3
    return-void

    .line 511
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

    .line 745
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 746
    .local v6, "userId":I
    const/16 v0, 0x7578

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 747
    iget-object v1, v7, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 749
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

    .line 750
    :catchall_0
    move-exception v0

    move v10, v6

    goto/16 :goto_0

    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 751
    invoke-direct {v7, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 752
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_1

    .line 753
    return-void

    .line 756
    :cond_1
    invoke-static {v6}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 759
    :cond_2
    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 761
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    .line 762
    if-eqz v6, :cond_3

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    move-object v10, v1

    .line 765
    const/high16 v2, 0x11000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 767
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

    .line 777
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 778
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    .line 767
    move/from16 v25, v6

    invoke-virtual/range {v9 .. v25}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 782
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_4

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping pre-created user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move v10, v6

    .end local v6    # "userId":I
    .local v10, "userId":I
    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 790
    return-void

    .line 794
    .end local v10    # "userId":I
    .restart local v6    # "userId":I
    :cond_4
    move v10, v6

    .end local v6    # "userId":I
    .restart local v10    # "userId":I
    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v10}, Lcom/android/server/am/UserController$Injector;->startUserWidgets(I)V

    .line 796
    iget-object v1, v7, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v10, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Posting BOOT_COMPLETED user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    if-nez v10, :cond_5

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 801
    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_5

    .line 802
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 803
    .local v1, "elapsedTimeMs":J
    const/16 v3, 0xf0

    const/16 v4, 0xd

    invoke-static {v3, v4, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 807
    .end local v1    # "elapsedTimeMs":J
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v9, v1

    .line 808
    .local v9, "bootIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v9, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 809
    const/high16 v1, -0x77000000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 814
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 815
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 816
    .local v12, "callingPid":I
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/android/server/am/-$$Lambda$UserController$I0p0bKjuvsSPLZB71mKQFfdUjZ4;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/-$$Lambda$UserController$I0p0bKjuvsSPLZB71mKQFfdUjZ4;-><init>(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 844
    return-void

    .line 750
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "bootIntent":Landroid/content/Intent;
    .end local v10    # "userId":I
    .end local v11    # "callingUid":I
    .end local v12    # "callingPid":I
    .restart local v6    # "userId":I
    :catchall_1
    move-exception v0

    move v10, v6

    .end local v6    # "userId":I
    .restart local v10    # "userId":I
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

    .line 574
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 575
    .local v0, "userId":I
    const/16 v1, 0x7576

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 576
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 579
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 580
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 582
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_2

    iget v5, p1, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v2, :cond_1

    goto :goto_0

    .line 585
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    iget-object v3, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v3}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 589
    iget-object v3, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 590
    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104010e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 589
    invoke-virtual {v3, v1, v4}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 593
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/android/server/am/-$$Lambda$UserController$stQk1028ON105v_u-VMykVjcxLk;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/am/-$$Lambda$UserController$stQk1028ON105v_u-VMykVjcxLk;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    return v2

    .line 583
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v3

    return v4

    .line 585
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private forceStopUser(ILjava/lang/String;)V
    .locals 22
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 1209
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/UserController$Injector;->activityManagerForceStopPackage(ILjava/lang/String;)V

    .line 1210
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_STOPPED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    move-object v6, v2

    .line 1211
    const/high16 v4, 0x50000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1213
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1214
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1216
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 1217
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    .line 1214
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

    .line 1218
    return-void
.end method

.method private getSwitchingFromSystemUserMessage()Ljava/lang/String;
    .locals 2

    .line 2470
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2471
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSwitchingToSystemUserMessage()Ljava/lang/String;
    .locals 2

    .line 2476
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2477
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2478
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

    .line 2329
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

    .line 1186
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1187
    .local v0, "startedUsersSize":I
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 1188
    .local v1, "userIds":Landroid/util/IntArray;
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 1189
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1190
    .local v2, "userGroupId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 1191
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    .line 1192
    .local v5, "uss":Lcom/android/server/am/UserState;
    iget-object v6, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1194
    .local v6, "startedUserId":I
    iget-object v7, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 1196
    .local v7, "startedUserGroupId":I
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_0

    if-ne v2, v7, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v8

    .line 1199
    .local v10, "sameGroup":Z
    :goto_1
    if-ne v6, p1, :cond_1

    move v8, v9

    .line 1200
    .local v8, "sameUserId":Z
    :cond_1
    if-eqz v10, :cond_3

    if-eqz v8, :cond_2

    .line 1201
    goto :goto_2

    .line 1203
    :cond_2
    invoke-virtual {v1, v6}, Landroid/util/IntArray;->add(I)V

    .line 1190
    .end local v5    # "uss":Lcom/android/server/am/UserState;
    .end local v6    # "startedUserId":I
    .end local v7    # "startedUserGroupId":I
    .end local v8    # "sameUserId":Z
    .end local v10    # "sameGroup":Z
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1205
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    return-object v3
.end method

.method private isCallingOnHandlerThread()Z
    .locals 2

    .line 1573
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

    .line 2320
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

.method private isDelayUserDataLockingEnabled()Z
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    monitor-exit v0

    return v1

    .line 430
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isUserSwitchUiEnabled()Z
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    monitor-exit v0

    return v1

    .line 418
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$stopSingleUserLU$4(Landroid/app/IStopUserCallback;I)V
    .locals 1
    .param p0, "stopUserCallback"    # Landroid/app/IStopUserCallback;
    .param p1, "userId"    # I

    .line 965
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    goto :goto_0

    .line 966
    :catch_0
    move-exception v0

    .line 968
    :goto_0
    return-void
.end method

.method private logAndClearSessionId(I)V
    .locals 8
    .param p1, "userId"    # I

    .line 2766
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2767
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserController$UserJourneySession;

    .line 2768
    .local v1, "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    if-eqz v1, :cond_0

    .line 2769
    const/16 v2, 0x109

    iget-wide v3, v1, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    .line 2773
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    .line 2774
    .end local v1    # "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    monitor-exit v0

    .line 2775
    return-void

    .line 2774
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V
    .locals 21
    .param p1, "origin"    # Landroid/content/pm/UserInfo;
    .param p2, "target"    # Landroid/content/pm/UserInfo;
    .param p3, "journey"    # I

    .line 2659
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v12, p3

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/16 v4, 0x1

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v13

    .line 2660
    .local v13, "newSessionId":J
    iget-object v4, v1, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 2661
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserController$UserJourneySession;

    .line 2662
    .local v0, "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    if-eqz v0, :cond_4

    .line 2664
    iget v5, v0, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-ne v5, v6, :cond_0

    if-eq v12, v7, :cond_1

    :cond_0
    iget v5, v0, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    if-ne v12, v7, :cond_3

    .line 2673
    :cond_1
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v5, :cond_2

    .line 2674
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not logged as it is expected to be part of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    :cond_2
    monitor-exit v4

    return-void

    .line 2691
    :cond_3
    const/16 v15, 0x109

    iget-wide v5, v0, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide/from16 v16, v5

    move/from16 v18, v7

    invoke-static/range {v15 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    .line 2696
    :cond_4
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v5, :cond_5

    .line 2697
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting a new journey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " with session id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    :cond_5
    new-instance v5, Lcom/android/server/am/UserController$UserJourneySession;

    invoke-direct {v5, v13, v14, v12}, Lcom/android/server/am/UserController$UserJourneySession;-><init>(JI)V

    move-object v0, v5

    .line 2702
    iget-object v5, v1, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2709
    iget-object v5, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2710
    iget-object v5, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v7, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    .line 2711
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2710
    invoke-virtual {v7, v6, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0x15f90

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2712
    nop

    .end local v0    # "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2714
    const/16 v4, 0x108

    .line 2715
    if-eqz v2, :cond_6

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_6
    const/4 v0, -0x1

    :goto_0
    move v8, v0

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v0, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    .line 2716
    invoke-static {v0}, Landroid/os/UserManager;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v10

    iget v11, v3, Landroid/content/pm/UserInfo;->flags:I

    .line 2714
    move-wide v5, v13

    move/from16 v7, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIII)V

    .line 2717
    return-void

    .line 2712
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private logUserLifecycleEvent(III)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "event"    # I
    .param p3, "eventState"    # I

    .line 2726
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2727
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserController$UserJourneySession;

    .line 2728
    .local v1, "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    if-eqz v1, :cond_1

    iget-wide v2, v1, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    .line 2733
    :cond_0
    iget-wide v4, v1, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    .line 2734
    .end local v1    # "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    .local v4, "sessionId":J
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2736
    const/16 v3, 0x109

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    .line 2738
    return-void

    .line 2729
    .end local v4    # "sessionId":J
    .restart local v1    # "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    :cond_1
    :goto_0
    :try_start_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserLifecycleEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " received without an active userJourneySession."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    monitor-exit v0

    return-void

    .line 2734
    .end local v1    # "userJourneySession":Lcom/android/server/am/UserController$UserJourneySession;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private maybeUnlockChildProfile(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 1663
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1664
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 1665
    .local v1, "userIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1666
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    .line 1665
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1668
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    array-length v0, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    aget v3, v1, v2

    .line 1670
    .local v3, "testUserId":I
    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1671
    .local v4, "parent":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_1

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, p1, :cond_1

    if-eq v3, p1, :cond_1

    .line 1672
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

    .line 1674
    invoke-direct {p0, v3}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    .line 1669
    .end local v3    # "testUserId":I
    .end local v4    # "parent":Landroid/content/pm/UserInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1677
    :cond_2
    return-void

    .line 1668
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

    .line 1606
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

    .line 1889
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p3, p1}, Lcom/android/server/am/UserController$Injector;->stackSupervisorSwitchUser(ILcom/android/server/am/UserState;)Z

    move-result v0

    .line 1890
    .local v0, "homeInFront":Z
    if-eqz v0, :cond_0

    .line 1891
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "moveUserToForeground"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/am/UserController$Injector;->startHomeActivity(ILjava/lang/String;)V

    goto :goto_0

    .line 1893
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->stackSupervisorResumeFocusedStackTopActivity()V

    .line 1895
    :goto_0
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    .line 1896
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcasts(II)V

    .line 1897
    return-void
.end method

.method private static notifyFinished(ILandroid/os/IProgressListener;)V
    .locals 1
    .param p0, "userId"    # I
    .param p1, "listener"    # Landroid/os/IProgressListener;

    .line 1610
    if-nez p1, :cond_0

    return-void

    .line 1612
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    goto :goto_0

    .line 1613
    :catch_0
    move-exception v0

    .line 1615
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

    .line 1726
    .local p1, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1727
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingFromSystemUserMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingToSystemUserMessage()Ljava/lang/String;

    move-result-object v4

    .line 1726
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/UserController$Injector;->showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    invoke-static {}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->startUserSwitching()V

    .line 1732
    return-void
.end method

.method private startUserInternal(IZLandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z
    .locals 34
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "unlockListener"    # Landroid/os/IProgressListener;
    .param p4, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1337
    move-object/from16 v1, p0

    move/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    const/16 v0, 0x757c

    invoke-static {v0, v14}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1340
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/OnePlusDexOptInjector;->startUser(IZ)V

    .line 1342
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 1343
    .local v19, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    .line 1344
    .local v20, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 1346
    .local v21, "ident":J
    :try_start_0
    const-string v0, "getStartedUserState"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1347
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    move v10, v0

    .line 1348
    .local v10, "oldUserId":I
    const/4 v0, 0x1

    if-ne v10, v14, :cond_3

    .line 1349
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v2

    .line 1350
    .local v2, "state":Lcom/android/server/am/UserState;
    if-nez v2, :cond_0

    .line 1351
    const-string v3, "ActivityManager"

    const-string v4, "Current user has no UserState"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1354
    :cond_0
    if-nez v14, :cond_1

    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    if-nez v3, :cond_1

    goto :goto_0

    .line 1358
    :cond_1
    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1361
    invoke-static {v14, v12}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 1363
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 1364
    nop

    .line 1566
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1364
    return v0

    .line 1368
    .end local v2    # "state":Lcom/android/server/am/UserState;
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1370
    if-eqz v13, :cond_4

    .line 1371
    const-string v2, "clearAllLockedTasks"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1372
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v3, "startUser"

    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController$Injector;->clearAllLockedTasks(Ljava/lang/String;)V

    .line 1373
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1376
    :cond_4
    const-string v2, "getUserInfo"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1377
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    move-object v9, v2

    .line 1378
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1380
    const/4 v2, 0x0

    if-nez v9, :cond_5

    .line 1381
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

    .line 1382
    nop

    .line 1566
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1382
    return v2

    .line 1384
    :cond_5
    if-eqz v13, :cond_6

    :try_start_2
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1385
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

    .line 1386
    nop

    .line 1566
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1386
    return v2

    .line 1389
    :cond_6
    if-eqz v13, :cond_7

    :try_start_3
    iget-boolean v3, v9, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v3, :cond_7

    .line 1390
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start pre-created user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " as foreground"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 1391
    nop

    .line 1566
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1391
    return v2

    .line 1394
    :cond_7
    if-eqz v13, :cond_8

    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->isUserSwitchUiEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1395
    const-string/jumbo v3, "startFreezingScreen"

    invoke-virtual {v11, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1396
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    const v4, 0x10a009a

    const v5, 0x10a0099

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    .line 1398
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1401
    :cond_8
    const/4 v3, 0x0

    .line 1402
    .local v3, "needStart":Z
    const/4 v4, 0x0

    .line 1407
    .local v4, "updateUmState":Z
    const-string/jumbo v5, "updateStartedUserArrayStarting"

    invoke-virtual {v11, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1408
    iget-object v5, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    .line 1409
    :try_start_5
    iget-object v6, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UserState;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 1410
    .local v6, "uss":Lcom/android/server/am/UserState;
    const/4 v7, 0x0

    const/4 v8, 0x5

    if-nez v6, :cond_9

    .line 1411
    :try_start_6
    new-instance v15, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    move-object v6, v15

    .line 1412
    iget-object v2, v6, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v15, Lcom/android/server/am/UserController$UserProgressListener;

    invoke-direct {v15, v7}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$1;)V

    invoke-virtual {v2, v15}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1413
    iget-object v2, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v14, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1414
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1415
    const/4 v3, 0x1

    .line 1416
    const/4 v4, 0x1

    move/from16 v23, v4

    goto :goto_1

    .line 1427
    .end local v6    # "uss":Lcom/android/server/am/UserState;
    :catchall_0
    move-exception v0

    move-object/from16 v32, v9

    move/from16 v30, v10

    goto/16 :goto_9

    .line 1417
    .restart local v6    # "uss":Lcom/android/server/am/UserState;
    :cond_9
    :try_start_7
    iget v2, v6, Lcom/android/server/am/UserState;->state:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    if-ne v2, v8, :cond_a

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->isCallingOnHandlerThread()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1418
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

    .line 1420
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/am/-$$Lambda$UserController$5-I-mDc6HrA5Dg_nAZlw5yKDAA0;

    invoke-direct {v7, v1, v14, v13, v12}, Lcom/android/server/am/-$$Lambda$UserController$5-I-mDc6HrA5Dg_nAZlw5yKDAA0;-><init>(Lcom/android/server/am/UserController;IZLandroid/os/IProgressListener;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1421
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1422
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1566
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1422
    return v0

    .line 1424
    :cond_a
    move/from16 v23, v4

    .end local v4    # "updateUmState":Z
    .local v23, "updateUmState":Z
    :goto_1
    :try_start_9
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1425
    .local v2, "userIdInt":Ljava/lang/Integer;
    iget-object v4, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1426
    iget-object v4, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    nop

    .end local v2    # "userIdInt":Ljava/lang/Integer;
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 1428
    if-eqz v12, :cond_b

    .line 1429
    :try_start_a
    iget-object v2, v6, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v2, v12}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1431
    :cond_b
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1433
    if-eqz v23, :cond_c

    .line 1434
    const-string/jumbo v2, "setUserState"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1435
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    iget v4, v6, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v14, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1436
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1438
    :cond_c
    const-string/jumbo v2, "updateConfigurationAndProfileIds"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1439
    if-eqz v13, :cond_e

    .line 1441
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/android/server/am/UserController$Injector;->reportGlobalUsageEventLocked(I)V

    .line 1443
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 1444
    :try_start_b
    iput v14, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 1445
    const/16 v4, -0x2710

    iput v4, v1, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1446
    iget-boolean v4, v1, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 1447
    .local v4, "userSwitchUiEnabled":Z
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1448
    :try_start_c
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->updateUserConfiguration()V

    .line 1449
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1450
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v5

    invoke-virtual {v2, v14, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    .line 1451
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    .line 1454
    if-eqz v4, :cond_d

    .line 1455
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1456
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 1458
    .end local v4    # "userSwitchUiEnabled":Z
    :cond_d
    goto :goto_2

    .line 1447
    :catchall_1
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .end local v19    # "callingUid":I
    .end local v20    # "callingPid":I
    .end local v21    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    .end local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_e
    throw v0

    .line 1459
    .restart local v19    # "callingUid":I
    .restart local v20    # "callingPid":I
    .restart local v21    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    .restart local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :cond_e
    iget v2, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1460
    .local v2, "currentUserIdInt":Ljava/lang/Integer;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1461
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    .line 1462
    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 1463
    :try_start_f
    iget-object v5, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1464
    iget-object v5, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1465
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1467
    .end local v2    # "currentUserIdInt":Ljava/lang/Integer;
    :goto_2
    :try_start_10
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1471
    iget v2, v6, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_f

    .line 1472
    const-string/jumbo v2, "updateStateStopping"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1476
    iget v2, v6, Lcom/android/server/am/UserState;->lastState:I

    invoke-virtual {v6, v2}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1477
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    iget v4, v6, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v14, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1478
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 1479
    :try_start_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1480
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 1481
    const/4 v3, 0x1

    .line 1482
    :try_start_12
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    goto :goto_3

    .line 1480
    :catchall_2
    move-exception v0

    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .end local v19    # "callingUid":I
    .end local v20    # "callingPid":I
    .end local v21    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    .end local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_14
    throw v0

    .line 1483
    .restart local v19    # "callingUid":I
    .restart local v20    # "callingPid":I
    .restart local v21    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    .restart local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :cond_f
    iget v2, v6, Lcom/android/server/am/UserState;->state:I

    if-ne v2, v8, :cond_10

    .line 1484
    const-string/jumbo v2, "updateStateShutdown"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1487
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1488
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    iget v4, v6, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v14, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1489
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 1490
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1491
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 1492
    const/4 v3, 0x1

    .line 1493
    :try_start_16
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    goto :goto_3

    .line 1491
    :catchall_3
    move-exception v0

    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .end local v19    # "callingUid":I
    .end local v20    # "callingPid":I
    .end local v21    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    .end local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_18
    throw v0

    .line 1496
    .restart local v19    # "callingUid":I
    .restart local v20    # "callingPid":I
    .restart local v21    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    .restart local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :cond_10
    :goto_3
    iget v2, v6, Lcom/android/server/am/UserState;->state:I

    if-nez v2, :cond_11

    .line 1497
    const-string/jumbo v2, "updateStateBooting"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1500
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    .line 1505
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x32

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v14, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1506
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1509
    :cond_11
    const-string/jumbo v2, "sendMessages"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1510
    if-eqz v13, :cond_12

    .line 1511
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5, v14, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1512
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1513
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1e

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1514
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v7, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4, v10, v14, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1516
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v10, v14, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v7, 0xbb8

    invoke-virtual {v2, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1520
    :cond_12
    iget-boolean v2, v9, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v2, :cond_13

    .line 1521
    const/4 v3, 0x0

    move/from16 v24, v3

    goto :goto_4

    .line 1520
    :cond_13
    move/from16 v24, v3

    .line 1524
    .end local v3    # "needStart":Z
    .local v24, "needStart":Z
    :goto_4
    if-eqz v24, :cond_14

    .line 1526
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    .line 1527
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v8, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1529
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v8, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1530
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    sget v29, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v15, 0x3e8

    move-object v3, v8

    move-object/from16 v30, v6

    .end local v6    # "uss":Lcom/android/server/am/UserState;
    .local v30, "uss":Lcom/android/server/am/UserState;
    move v6, v7

    move-object/from16 v7, v16

    move-object/from16 v31, v8

    .end local v8    # "intent":Landroid/content/Intent;
    .local v31, "intent":Landroid/content/Intent;
    move-object/from16 v8, v17

    move-object/from16 v32, v9

    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .local v32, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v9, v18

    move/from16 v33, v10

    .end local v10    # "oldUserId":I
    .local v33, "oldUserId":I
    move/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v16, v19

    move/from16 v17, v20

    move/from16 v18, p1

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    goto :goto_5

    .line 1524
    .end local v30    # "uss":Lcom/android/server/am/UserState;
    .end local v31    # "intent":Landroid/content/Intent;
    .end local v32    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v33    # "oldUserId":I
    .restart local v6    # "uss":Lcom/android/server/am/UserState;
    .restart local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v10    # "oldUserId":I
    :cond_14
    move-object/from16 v30, v6

    move-object/from16 v32, v9

    move/from16 v33, v10

    .line 1534
    .end local v6    # "uss":Lcom/android/server/am/UserState;
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v10    # "oldUserId":I
    .restart local v30    # "uss":Lcom/android/server/am/UserState;
    .restart local v32    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v33    # "oldUserId":I
    :goto_5
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 1536
    if-eqz p2, :cond_15

    .line 1537
    :try_start_19
    const-string/jumbo v2, "moveUserToForeground"
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    move-object/from16 v14, p4

    :try_start_1a
    invoke-virtual {v14, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 1538
    move/from16 v13, p1

    move-object/from16 v11, v30

    move/from16 v12, v33

    .end local v30    # "uss":Lcom/android/server/am/UserState;
    .end local v33    # "oldUserId":I
    .local v11, "uss":Lcom/android/server/am/UserState;
    .local v12, "oldUserId":I
    :try_start_1b
    invoke-direct {v1, v11, v12, v13}, Lcom/android/server/am/UserController;->moveUserToForeground(Lcom/android/server/am/UserState;II)V

    .line 1539
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_6

    .line 1566
    .end local v11    # "uss":Lcom/android/server/am/UserState;
    .end local v12    # "oldUserId":I
    .end local v23    # "updateUmState":Z
    .end local v24    # "needStart":Z
    .end local v32    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_4
    move-exception v0

    move/from16 v13, p1

    goto/16 :goto_a

    :catchall_5
    move-exception v0

    move/from16 v13, p1

    move-object/from16 v14, p4

    goto/16 :goto_a

    .line 1541
    .restart local v23    # "updateUmState":Z
    .restart local v24    # "needStart":Z
    .restart local v30    # "uss":Lcom/android/server/am/UserState;
    .restart local v32    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v33    # "oldUserId":I
    :cond_15
    move/from16 v13, p1

    move-object/from16 v14, p4

    move-object/from16 v11, v30

    move/from16 v12, v33

    .end local v30    # "uss":Lcom/android/server/am/UserState;
    .end local v33    # "oldUserId":I
    .restart local v11    # "uss":Lcom/android/server/am/UserState;
    .restart local v12    # "oldUserId":I
    const-string v2, "finishUserBoot"

    invoke-virtual {v14, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1542
    invoke-direct {v1, v11}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 1543
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1546
    :goto_6
    if-eqz v24, :cond_16

    .line 1547
    const-string/jumbo v2, "sendRestartBroadcast"

    invoke-virtual {v14, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1548
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STARTING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v2

    .line 1549
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v10, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1550
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v10, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1551
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/am/UserController$6;

    invoke-direct {v5, v1}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    sget v27, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v15, 0x3e8

    const/16 v18, -0x1

    move-object v3, v10

    move-object/from16 v28, v10

    .end local v10    # "intent":Landroid/content/Intent;
    .local v28, "intent":Landroid/content/Intent;
    move/from16 v10, v16

    move-object/from16 v29, v11

    .end local v11    # "uss":Lcom/android/server/am/UserState;
    .local v29, "uss":Lcom/android/server/am/UserState;
    move-object/from16 v11, v17

    move/from16 v30, v12

    .end local v12    # "oldUserId":I
    .local v30, "oldUserId":I
    move/from16 v12, v25

    move/from16 v13, v26

    move/from16 v14, v27

    move/from16 v16, v19

    move/from16 v17, v20

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1563
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    goto :goto_7

    .line 1546
    .end local v28    # "intent":Landroid/content/Intent;
    .end local v29    # "uss":Lcom/android/server/am/UserState;
    .end local v30    # "oldUserId":I
    .restart local v11    # "uss":Lcom/android/server/am/UserState;
    .restart local v12    # "oldUserId":I
    :cond_16
    move-object/from16 v29, v11

    move/from16 v30, v12

    .line 1566
    .end local v11    # "uss":Lcom/android/server/am/UserState;
    .end local v12    # "oldUserId":I
    .end local v23    # "updateUmState":Z
    .end local v24    # "needStart":Z
    .end local v32    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_7
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1567
    nop

    .line 1569
    return v0

    .line 1465
    .restart local v2    # "currentUserIdInt":Ljava/lang/Integer;
    .restart local v3    # "needStart":Z
    .restart local v6    # "uss":Lcom/android/server/am/UserState;
    .restart local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .local v10, "oldUserId":I
    .restart local v23    # "updateUmState":Z
    :catchall_6
    move-exception v0

    move-object/from16 v29, v6

    move-object/from16 v32, v9

    move/from16 v30, v10

    .end local v6    # "uss":Lcom/android/server/am/UserState;
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v10    # "oldUserId":I
    .restart local v29    # "uss":Lcom/android/server/am/UserState;
    .restart local v30    # "oldUserId":I
    .restart local v32    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_8
    :try_start_1c
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .end local v19    # "callingUid":I
    .end local v20    # "callingPid":I
    .end local v21    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    .end local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_1d
    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    .restart local v19    # "callingUid":I
    .restart local v20    # "callingPid":I
    .restart local v21    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    .restart local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_7
    move-exception v0

    goto :goto_8

    .line 1427
    .end local v2    # "currentUserIdInt":Ljava/lang/Integer;
    .end local v29    # "uss":Lcom/android/server/am/UserState;
    .end local v30    # "oldUserId":I
    .end local v32    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v10    # "oldUserId":I
    :catchall_8
    move-exception v0

    move-object/from16 v32, v9

    move/from16 v30, v10

    move/from16 v4, v23

    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v10    # "oldUserId":I
    .restart local v30    # "oldUserId":I
    .restart local v32    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_9

    .end local v23    # "updateUmState":Z
    .end local v30    # "oldUserId":I
    .end local v32    # "userInfo":Landroid/content/pm/UserInfo;
    .local v4, "updateUmState":Z
    .restart local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v10    # "oldUserId":I
    :catchall_9
    move-exception v0

    move-object/from16 v32, v9

    move/from16 v30, v10

    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v10    # "oldUserId":I
    .restart local v30    # "oldUserId":I
    .restart local v32    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_9
    :try_start_1e
    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .end local v19    # "callingUid":I
    .end local v20    # "callingPid":I
    .end local v21    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "userId":I
    .end local p2    # "foreground":Z
    .end local p3    # "unlockListener":Landroid/os/IProgressListener;
    .end local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_1f
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    .restart local v19    # "callingUid":I
    .restart local v20    # "callingPid":I
    .restart local v21    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "userId":I
    .restart local p2    # "foreground":Z
    .restart local p3    # "unlockListener":Landroid/os/IProgressListener;
    .restart local p4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :catchall_a
    move-exception v0

    goto :goto_9

    .line 1566
    .end local v3    # "needStart":Z
    .end local v4    # "updateUmState":Z
    .end local v30    # "oldUserId":I
    .end local v32    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_b
    move-exception v0

    :goto_a
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1567
    throw v0
.end method

.method private stopBackgroundUsersIfEnforced(I)V
    .locals 9
    .param p1, "oldUserId"    # I

    .line 1773
    if-nez p1, :cond_0

    .line 1774
    return-void

    .line 1777
    :cond_0
    const-string/jumbo v0, "no_run_in_background"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1778
    invoke-direct {p0}, Lcom/android/server/am/UserController;->isDelayUserDataLockingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1779
    .local v0, "disallowRunInBg":Z
    :goto_1
    if-nez v0, :cond_3

    .line 1780
    return-void

    .line 1782
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1783
    :try_start_0
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v2, :cond_4

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopBackgroundUsersIfEnforced stopping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and related users"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 1787
    monitor-exit v1

    .line 1788
    return-void

    .line 1787
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private stopGuestOrEphemeralUserIfBackground(I)V
    .locals 9
    .param p1, "oldUserId"    # I

    .line 1224
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

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1226
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1227
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

    .line 1232
    .end local v1    # "oldUss":Lcom/android/server/am/UserState;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1234
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1235
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1236
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 1238
    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1240
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1241
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v4, p1

    :try_start_1
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    .line 1243
    monitor-exit v2

    .line 1245
    :cond_4
    return-void

    .line 1243
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1230
    .local v1, "oldUss":Lcom/android/server/am/UserState;
    :cond_5
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    .line 1232
    .end local v1    # "oldUss":Lcom/android/server/am/UserState;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private stopSingleUserLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "allowDelayedLocking"    # Z
    .param p3, "stopUserCallback"    # Landroid/app/IStopUserCallback;
    .param p4, "keyEvictedCallback"    # Lcom/android/server/am/UserState$KeyEvictedCallback;

    .line 932
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const-string v1, "ActivityManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSingleUserLocked userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    .line 934
    .local v0, "uss":Lcom/android/server/am/UserState;
    if-nez v0, :cond_5

    .line 941
    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-eqz v2, :cond_3

    .line 942
    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    .line 943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowDelayedLocking set with KeyEvictedCallback, ignore it and lock user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 945
    const/4 p2, 0x0

    .line 947
    :cond_1
    if-nez p2, :cond_3

    .line 948
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 951
    if-eqz p4, :cond_2

    .line 952
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 953
    .local v1, "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 955
    .end local v1    # "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    :cond_2
    const/4 v1, 0x0

    .line 957
    .restart local v1    # "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/UserController;->dispatchUserLocking(ILjava/util/List;)V

    .line 962
    .end local v1    # "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    :cond_3
    if-eqz p3, :cond_4

    .line 963
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$QAvDazb_bK3Biqbrt7rtbU_i_EQ;

    invoke-direct {v2, p3, p1}, Lcom/android/server/am/-$$Lambda$UserController$QAvDazb_bK3Biqbrt7rtbU_i_EQ;-><init>(Landroid/app/IStopUserCallback;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 970
    :cond_4
    return-void

    .line 973
    :cond_5
    if-eqz p3, :cond_6

    .line 974
    iget-object v1, v0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    :cond_6
    if-eqz p4, :cond_7

    .line 977
    iget-object v1, v0, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_7
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_8

    .line 982
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserState;->setState(I)V

    .line 983
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, p1, v2}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 984
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 986
    move v1, p2

    .line 988
    .local v1, "allowDelayyLockingCopied":Z
    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/-$$Lambda$UserController$TdNZVHdOPNd598N3S_XTdc7pt7o;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/am/-$$Lambda$UserController$TdNZVHdOPNd598N3S_XTdc7pt7o;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1016
    .end local v1    # "allowDelayyLockingCopied":Z
    :cond_8
    return-void
.end method

.method private stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "allowDelayedLocking"    # Z
    .param p4, "stopUserCallback"    # Landroid/app/IStopUserCallback;
    .param p5, "keyEvictedCallback"    # Lcom/android/server/am/UserState$KeyEvictedCallback;

    .line 878
    if-nez p1, :cond_0

    .line 879
    const/4 v0, -0x3

    return v0

    .line 881
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    const/4 v0, -0x2

    return v0

    .line 884
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLU(I)[I

    move-result-object v0

    .line 886
    .local v0, "usersToStop":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    const-string v3, "ActivityManager"

    const/4 v4, 0x0

    if-ge v1, v2, :cond_6

    .line 887
    aget v2, v0, v1

    .line 888
    .local v2, "relatedUserId":I
    if-eqz v2, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 886
    .end local v2    # "relatedUserId":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 889
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

    .line 892
    :cond_4
    if-eqz p2, :cond_5

    .line 893
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

    .line 895
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/am/UserController;->stopSingleUserLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    .line 897
    return v4

    .line 899
    :cond_5
    const/4 v3, -0x4

    return v3

    .line 902
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

    .line 903
    :cond_7
    array-length v1, v0

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_a

    aget v3, v0, v2

    .line 904
    .local v3, "userIdToStop":I
    nop

    .line 905
    const/4 v5, 0x0

    if-ne v3, p1, :cond_8

    move-object v6, p4

    goto :goto_3

    :cond_8
    move-object v6, v5

    .line 906
    :goto_3
    if-ne v3, p1, :cond_9

    move-object v5, p5

    .line 904
    :cond_9
    invoke-direct {p0, v3, p3, v6, v5}, Lcom/android/server/am/UserController;->stopSingleUserLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    .line 903
    .end local v3    # "userIdToStop":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 908
    :cond_a
    return v4
.end method

.method private timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 5
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 1791
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1792
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

    .line 1793
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1794
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1795
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 1797
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1799
    monitor-exit v0

    .line 1800
    return-void

    .line 1799
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

    .line 1803
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1804
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1805
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

    .line 1807
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1809
    :cond_0
    monitor-exit v0

    .line 1810
    return-void

    .line 1809
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

    .line 1620
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1621
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1622
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 1625
    .local v1, "storageManager":Landroid/os/storage/IStorageManager;
    :try_start_0
    iget v2, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1628
    goto :goto_0

    .line 1626
    :catch_0
    move-exception v2

    .line 1627
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

    .line 1630
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1632
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1633
    .local v1, "uss":Lcom/android/server/am/UserState;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1634
    iget-object v4, v1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v4, p4}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1635
    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput-boolean v4, v1, Lcom/android/server/am/UserState;->tokenProvided:Z

    .line 1637
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1639
    if-nez v1, :cond_3

    .line 1640
    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 1641
    return v3

    .line 1644
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1645
    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 1646
    return v3

    .line 1654
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->maybeUnlockChildProfile(I)V

    .line 1656
    return v2

    .line 1637
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

    .line 2176
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 2178
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 2179
    .local v1, "currentProfileIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 2180
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    aput v4, v1, v3

    .line 2179
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2182
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 2183
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2184
    :try_start_0
    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 2186
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 2187
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2188
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2189
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v6, v7, :cond_1

    .line 2190
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    iget v8, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2187
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2193
    .end local v4    # "i":I
    :cond_2
    monitor-exit v3

    .line 2194
    return-void

    .line 2193
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private updateStartedUserArrayLU()V
    .locals 8

    .line 2121
    const/4 v0, 0x0

    .line 2122
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

    .line 2123
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 2125
    .local v2, "uss":Lcom/android/server/am/UserState;
    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v4, :cond_0

    iget v4, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v3, :cond_0

    .line 2127
    add-int/lit8 v0, v0, 0x1

    .line 2122
    .end local v2    # "uss":Lcom/android/server/am/UserState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2130
    .end local v1    # "i":I
    :cond_1
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 2131
    const/4 v0, 0x0

    .line 2132
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2133
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 2134
    .restart local v2    # "uss":Lcom/android/server/am/UserState;
    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v4, :cond_2

    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v3, :cond_2

    .line 2136
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "num":I
    .local v6, "num":I
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v5, v0

    move v0, v6

    .line 2132
    .end local v2    # "uss":Lcom/android/server/am/UserState;
    .end local v6    # "num":I
    .restart local v0    # "num":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2139
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private updateUserToLockLU(IZ)I
    .locals 5
    .param p1, "userId"    # I
    .param p2, "allowDelayedLocking"    # Z

    .line 1158
    move v0, p1

    .line 1159
    .local v0, "userIdToLock":I
    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1160
    const-string/jumbo v1, "no_run_in_background"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1161
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1162
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1163
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1164
    .local v1, "totalUnlockedUsers":I
    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    const-string v3, "ActivityManager"

    if-le v1, v2, :cond_0

    .line 1165
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1166
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1167
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

    .line 1170
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

    .line 1173
    const/16 v0, -0x2710

    .line 1177
    .end local v1    # "totalUnlockedUsers":I
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method canStartMoreUsers()Z
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
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

    .line 495
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 4
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 1876
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x7580

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1878
    invoke-direct {p0}, Lcom/android/server/am/UserController;->isUserSwitchUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    .line 1881
    :cond_0
    iput-boolean v2, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 1882
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1883
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1884
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground(I)V

    .line 1885
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopBackgroundUsersIfEnforced(I)V

    .line 1886
    return-void
.end method

.method dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 19
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 1813
    move-object/from16 v11, p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x757f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1815
    iget-object v0, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v12

    .line 1816
    .local v12, "observerCount":I
    if-lez v12, :cond_1

    .line 1817
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v0

    .line 1818
    .local v13, "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1819
    move-object/from16 v14, p1

    :try_start_0
    iput-boolean v2, v14, Lcom/android/server/am/UserState;->switching:Z

    .line 1820
    iput-object v13, v11, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1821
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1822
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1823
    .local v7, "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 1824
    .local v15, "dispatchStartedTime":J
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_0

    .line 1827
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v10}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 1828
    .local v9, "name":Ljava/lang/String;
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1829
    :try_start_2
    invoke-virtual {v13, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1830
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1831
    :try_start_3
    new-instance v0, Lcom/android/server/am/UserController$7;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide v3, v15

    move-object v5, v9

    move-object v6, v13

    move-object/from16 v8, p1

    move-object/from16 v17, v9

    .end local v9    # "name":Ljava/lang/String;
    .local v17, "name":Ljava/lang/String;
    move/from16 v9, p2

    move/from16 v18, v12

    move v12, v10

    .end local v10    # "i":I
    .local v12, "i":I
    .local v18, "observerCount":I
    move/from16 v10, p3

    :try_start_4
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;JLjava/lang/String;Landroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V

    .line 1855
    .local v0, "callback":Landroid/os/IRemoteCallback;
    iget-object v1, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IUserSwitchObserver;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move/from16 v2, p3

    :try_start_5
    invoke-interface {v1, v2, v0}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1857
    .end local v0    # "callback":Landroid/os/IRemoteCallback;
    .end local v17    # "name":Ljava/lang/String;
    goto :goto_2

    .line 1856
    :catch_0
    move-exception v0

    move/from16 v2, p3

    goto :goto_2

    .line 1830
    .end local v18    # "observerCount":I
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "i":I
    .local v12, "observerCount":I
    :catchall_0
    move-exception v0

    move/from16 v2, p3

    move-object/from16 v17, v9

    move/from16 v18, v12

    move v12, v10

    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "i":I
    .local v12, "i":I
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v18    # "observerCount":I
    :goto_1
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v7    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v12    # "i":I
    .end local v13    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "dispatchStartedTime":J
    .end local v18    # "observerCount":I
    .end local p0    # "this":Lcom/android/server/am/UserController;
    .end local p1    # "uss":Lcom/android/server/am/UserState;
    .end local p2    # "oldUserId":I
    .end local p3    # "newUserId":I
    :try_start_7
    throw v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1856
    .end local v17    # "name":Ljava/lang/String;
    .restart local v7    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v12    # "i":I
    .restart local v13    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15    # "dispatchStartedTime":J
    .restart local v18    # "observerCount":I
    .restart local p0    # "this":Lcom/android/server/am/UserController;
    .restart local p1    # "uss":Lcom/android/server/am/UserState;
    .restart local p2    # "oldUserId":I
    .restart local p3    # "newUserId":I
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1830
    .restart local v17    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 1856
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "observerCount":I
    .restart local v10    # "i":I
    .local v12, "observerCount":I
    :catch_2
    move-exception v0

    move/from16 v2, p3

    move/from16 v18, v12

    move v12, v10

    .line 1824
    .end local v10    # "i":I
    .local v12, "i":I
    .restart local v18    # "observerCount":I
    :goto_2
    add-int/lit8 v10, v12, 0x1

    move/from16 v12, v18

    .end local v12    # "i":I
    .restart local v10    # "i":I
    goto :goto_0

    .end local v18    # "observerCount":I
    .local v12, "observerCount":I
    :cond_0
    move/from16 v2, p3

    move/from16 v18, v12

    move v12, v10

    .line 1859
    .end local v7    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v10    # "i":I
    .end local v12    # "observerCount":I
    .end local v13    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "dispatchStartedTime":J
    .restart local v18    # "observerCount":I
    goto :goto_4

    .line 1821
    .end local v18    # "observerCount":I
    .restart local v12    # "observerCount":I
    .restart local v13    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move/from16 v2, p3

    move/from16 v18, v12

    .end local v12    # "observerCount":I
    .restart local v18    # "observerCount":I
    :goto_3
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 1860
    .end local v13    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v18    # "observerCount":I
    .restart local v12    # "observerCount":I
    :cond_1
    move-object/from16 v14, p1

    move/from16 v2, p3

    move/from16 v18, v12

    .end local v12    # "observerCount":I
    .restart local v18    # "observerCount":I
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1861
    :try_start_9
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 1862
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1864
    :goto_4
    iget-object v0, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1865
    return-void

    .line 1862
    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0
.end method

.method dispatchUserSwitchComplete(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1748
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1749
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1750
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1752
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1754
    goto :goto_1

    .line 1753
    :catch_0
    move-exception v2

    .line 1750
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1756
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1757
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2512
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2513
    :try_start_0
    const-string v1, "  mStartedUsers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2514
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2515
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 2516
    .local v2, "uss":Lcom/android/server/am/UserState;
    const-string v3, "    User #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2517
    iget-object v3, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2518
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2519
    const-string v3, ""

    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2514
    .end local v2    # "uss":Lcom/android/server/am/UserState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2521
    .end local v1    # "i":I
    :cond_0
    const-string v1, "  mStartedUserArray: ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2522
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 2523
    if-lez v1, :cond_1

    .line 2524
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2525
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2522
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2527
    .end local v1    # "i":I
    :cond_2
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2528
    const-string v1, "  mUserLru: ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2529
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2530
    if-lez v1, :cond_3

    .line 2531
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2532
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2529
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2534
    .end local v1    # "i":I
    :cond_4
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2535
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 2536
    const-string v1, "  mUserProfileGroupIds:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2537
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2538
    const-string v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2539
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2540
    const-string v2, " -> profile #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2541
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2537
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2544
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

    .line 2545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTargetUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastActiveUsers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDelayUserDataLocking:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaxRunningUsers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserSwitchUiEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2551
    monitor-exit v0

    .line 2552
    return-void

    .line 2551
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2482
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2483
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 2484
    .local v1, "token":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-wide v5, 0x10500000001L

    if-ge v3, v4, :cond_0

    .line 2485
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UserState;

    .line 2486
    .local v4, "uss":Lcom/android/server/am/UserState;
    const-wide v7, 0x20b00000001L

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2487
    .local v7, "uToken":J
    iget-object v9, v4, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {p1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2488
    const-wide v5, 0x10b00000002L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/am/UserState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2489
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2484
    .end local v4    # "uss":Lcom/android/server/am/UserState;
    .end local v7    # "uToken":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2491
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 2492
    const-wide v7, 0x20500000002L

    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v4, v4, v3

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2491
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2494
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2495
    const-wide v7, 0x20500000003L

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2494
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2497
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 2498
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2499
    const-wide v7, 0x20b00000004L

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 2500
    .restart local v7    # "uToken":J
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 2501
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2500
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2502
    const-wide v9, 0x10500000002L

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 2503
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 2502
    invoke-virtual {p1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2504
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2498
    .end local v7    # "uToken":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2507
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2508
    .end local v1    # "token":J
    monitor-exit v0

    .line 2509
    return-void

    .line 2508
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

    .line 2086
    if-ltz p1, :cond_0

    .line 2087
    return-void

    .line 2089
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

    .line 2351
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

    .line 2343
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2344
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object v0

    .line 2346
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    return-object v0
.end method

.method finishUserStopped(Lcom/android/server/am/UserState;Z)V
    .locals 10
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "allowDelayedLocking"    # Z

    .line 1059
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1060
    .local v0, "userId":I
    const/16 v1, 0x757a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1062
    const/4 v1, 0x1

    .line 1065
    .local v1, "lockUser":Z
    move v2, v0

    .line 1066
    .local v2, "userIdToLock":I
    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1067
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1068
    .local v4, "stopCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1069
    .local v5, "keyEvictedCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState$KeyEvictedCallback;>;"
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_2

    iget v6, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 1072
    :cond_0
    const/4 v6, 0x1

    .line 1074
    .local v6, "stopped":Z
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1075
    iget-object v7, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1076
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1077
    if-eqz p2, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1078
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Delayed locking enabled while KeyEvictedCallbacks not empty, userId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " callbacks:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/4 p2, 0x0

    .line 1083
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/UserController;->updateUserToLockLU(IZ)I

    move-result v7

    move v2, v7

    .line 1084
    const/16 v7, -0x2710

    if-ne v2, v7, :cond_3

    .line 1085
    const/4 v1, 0x0

    goto :goto_1

    .line 1070
    .end local v6    # "stopped":Z
    :cond_2
    :goto_0
    const/4 v6, 0x0

    .line 1088
    .restart local v6    # "stopped":Z
    :cond_3
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    if-eqz v6, :cond_4

    .line 1090
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/UserManagerInternal;->removeUserState(I)V

    .line 1091
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v0}, Lcom/android/server/am/UserController$Injector;->activityManagerOnUserStopped(I)V

    .line 1094
    const-string v3, "finish user"

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/UserController;->forceStopUser(ILjava/lang/String;)V

    .line 1097
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/IStopUserCallback;

    .line 1099
    .local v7, "callback":Landroid/app/IStopUserCallback;
    if-eqz v6, :cond_5

    :try_start_1
    invoke-interface {v7, v0}, Landroid/app/IStopUserCallback;->userStopped(I)V

    goto :goto_3

    .line 1100
    :cond_5
    invoke-interface {v7, v0}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1102
    :goto_3
    goto :goto_4

    .line 1101
    :catch_0
    move-exception v8

    .line 1103
    .end local v7    # "callback":Landroid/app/IStopUserCallback;
    :goto_4
    goto :goto_2

    .line 1105
    :cond_6
    if-eqz v6, :cond_9

    .line 1106
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v0}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerCleanupUser(I)V

    .line 1107
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v0}, Lcom/android/server/am/UserController$Injector;->stackSupervisorRemoveUser(I)V

    .line 1109
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1110
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-boolean v7, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v7, :cond_7

    .line 1111
    iget-object v7, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v7}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/pm/UserManagerService;->removeUserEvenWhenDisallowed(I)Z

    .line 1114
    :cond_7
    if-nez v1, :cond_8

    .line 1115
    return-void

    .line 1117
    :cond_8
    invoke-direct {p0, v2, v5}, Lcom/android/server/am/UserController;->dispatchUserLocking(ILjava/util/List;)V

    .line 1119
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_9
    return-void

    .line 1088
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

.method finishUserStopping(ILcom/android/server/am/UserState;Z)V
    .locals 19
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;
    .param p3, "allowDelayedLocking"    # Z

    .line 1020
    move-object/from16 v1, p0

    move/from16 v15, p1

    move-object/from16 v14, p2

    const/16 v0, 0x7579

    invoke-static {v0, v15}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1022
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v3, "shutdownIntent":Landroid/content/Intent;
    new-instance v5, Lcom/android/server/am/UserController$5;

    move/from16 v13, p3

    invoke-direct {v5, v1, v14, v13}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;Z)V

    .line 1037
    .local v5, "shutdownReceiver":Landroid/content/IIntentReceiver;
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1038
    :try_start_0
    iget v0, v14, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    .line 1040
    monitor-exit v2

    return-void

    .line 1042
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v14, v0}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1043
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v2, v14, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v2}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1046
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v2, 0x4007

    .line 1048
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1046
    invoke-virtual {v0, v2, v4, v15}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 1049
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->stopUser(I)V

    .line 1051
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v0, 0x0

    move v13, v0

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move v14, v0

    const/16 v0, 0x3e8

    move v15, v0

    .line 1054
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 1055
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 1051
    move/from16 v18, p1

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1056
    return-void

    .line 1043
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

    .line 435
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$UserController$f2F3ceAG58MOmBJm9cmZ7HhYcmE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$UserController$f2F3ceAG58MOmBJm9cmZ7HhYcmE;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .locals 38
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 633
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 634
    .local v15, "userId":I
    const/16 v0, 0x7577

    invoke-static {v0, v15}, Landroid/util/EventLog;->writeEvent(II)I

    .line 636
    invoke-static {v15}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 637
    :cond_0
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 639
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

    .line 645
    :catchall_0
    move-exception v0

    move v4, v15

    goto/16 :goto_6

    .line 642
    :cond_1
    const/4 v0, 0x2

    const/4 v4, 0x3

    :try_start_2
    invoke-virtual {v2, v0, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_2

    .line 643
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 645
    :cond_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 646
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 647
    iget-object v0, v2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v0}, Lcom/android/internal/util/ProgressReporter;->finish()V

    .line 651
    if-nez v15, :cond_3

    .line 652
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/high16 v3, 0x40000

    invoke-virtual {v0, v3}, Lcom/android/server/am/UserController$Injector;->startPersistentApps(I)V

    .line 656
    invoke-direct {v1, v15}, Lcom/android/server/am/UserController;->maybeUnlockChildProfile(I)V

    .line 659
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, v15}, Lcom/android/server/am/UserController$Injector;->installEncryptionUnawareProviders(I)V

    .line 662
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .local v14, "unlockedIntent":Landroid/content/Intent;
    move-object v4, v14

    .line 663
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    const/high16 v0, 0x50000000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 666
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

    .line 668
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 666
    move/from16 v19, v21

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 670
    move/from16 v4, v21

    .end local v21    # "userId":I
    .local v4, "userId":I
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 671
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 672
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_4

    .line 673
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "profileUnlockedIntent":Landroid/content/Intent;
    move-object/from16 v22, v5

    .line 675
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const-string v7, "android.intent.extra.USER"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 676
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 679
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

    .line 681
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v35

    .line 682
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v36

    iget v0, v3, Landroid/content/pm/UserInfo;->id:I

    move/from16 v37, v0

    .line 679
    invoke-virtual/range {v21 .. v37}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 691
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    .end local v5    # "profileUnlockedIntent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v0, "persist.vendor.op.last.slot_suffix"

    const-string v3, "ERROR"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, "lastBootSuccessSlot":Ljava/lang/String;
    const-string/jumbo v0, "ro.boot.slot_suffix"

    const-string v5, "ERROR"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 693
    .local v5, "currentBootSuccessSlot":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 694
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 696
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    :try_start_5
    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_6

    .line 697
    const-string v0, "ActivityManager"

    const-string/jumbo v7, "ota info: boot from ota"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->hasMdmReady()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 699
    const-string v0, "ActivityManager"

    const-string/jumbo v7, "mdm service has been ready !!"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string/jumbo v0, "persist.op.last.version.ota"

    const-string v7, "ERROR"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "lastBootVersion":Ljava/lang/String;
    const-string/jumbo v7, "ro.build.version.ota"

    const-string v8, "ERROR"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 702
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

    .line 703
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v8

    .line 704
    .local v8, "mOpDeviceManagerInjector":Lnet/oneplus/odm/OpDeviceManagerInjector;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 705
    .local v9, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "appid"

    const-string v11, "1IM6KRES9P"

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 707
    .local v10, "usageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "currentBootVersion"

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string/jumbo v11, "lastBootVersion"

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    iget-object v11, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v11}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "bootFromOta"

    invoke-virtual {v8, v11, v12, v10, v9}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveUrgentOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 710
    .end local v0    # "lastBootVersion":Ljava/lang/String;
    .end local v7    # "currentBootVersion":Ljava/lang/String;
    .end local v8    # "mOpDeviceManagerInjector":Lnet/oneplus/odm/OpDeviceManagerInjector;
    .end local v9    # "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "usageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 711
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 712
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "oneplus.intent.mdm_ready"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    new-instance v7, Landroid/mdmBootCompletedReceiver/MdmBootCompletedReceiver;

    invoke-direct {v7}, Landroid/mdmBootCompletedReceiver/MdmBootCompletedReceiver;-><init>()V

    .line 714
    .local v7, "mdmBootCompleted":Landroid/mdmBootCompletedReceiver/MdmBootCompletedReceiver;
    iget-object v8, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v8}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 715
    nop

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    .end local v7    # "mdmBootCompleted":Landroid/mdmBootCompletedReceiver/MdmBootCompletedReceiver;
    goto :goto_0

    .line 717
    :cond_6
    const-string/jumbo v0, "persist.vendor.op.last.slot_suffix"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string/jumbo v0, "persist.vendor.op.last.version.ota"

    const-string/jumbo v7, "ro.build.version.ota"

    const-string v8, "ERROR"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 722
    :goto_0
    goto :goto_1

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 725
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    :cond_7
    :goto_1
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 726
    .local v0, "info":Landroid/content/pm/UserInfo;
    iget-object v6, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 731
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 732
    iget-boolean v6, v2, Lcom/android/server/am/UserState;->tokenProvided:Z

    if-eqz v6, :cond_9

    iget-object v6, v1, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 733
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

    .line 735
    .end local v6    # "quiet":Z
    :cond_a
    const/4 v6, 0x0

    .line 737
    .restart local v6    # "quiet":Z
    :goto_4
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v8, Lcom/android/server/am/-$$Lambda$UserController$K71HFCIuD0iCwrDTKYnIUDyAeWg;

    invoke-direct {v8, v1, v2}, Lcom/android/server/am/-$$Lambda$UserController$K71HFCIuD0iCwrDTKYnIUDyAeWg;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v7, v4, v6, v8}, Lcom/android/server/am/UserController$Injector;->sendPreBootBroadcast(IZLjava/lang/Runnable;)V

    .line 739
    .end local v6    # "quiet":Z
    goto :goto_5

    .line 740
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    .line 742
    :goto_5
    return-void

    .line 645
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
    .locals 2

    .line 2296
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2297
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2298
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentOrTargetUserIdLU()I
    .locals 2

    .line 2303
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

    .line 2413
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2414
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    monitor-exit v0

    return-object v1

    .line 2415
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .line 2267
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 2269
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2271
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2275
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2281
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_2

    .line 2282
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0

    .line 2284
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2285
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLU()Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2286
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentUserId()I
    .locals 2

    .line 2313
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2314
    :try_start_0
    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    monitor-exit v0

    return v1

    .line 2315
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentUserIdLU()I
    .locals 1

    .line 2309
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return v0
.end method

.method getCurrentUserLU()Landroid/content/pm/UserInfo;
    .locals 2

    .line 2291
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 2292
    .local v0, "userId":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method getMaxRunningUsers()I
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_0
    iget v1, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    monitor-exit v0

    return v1

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getRunningUsersLU()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 447
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

    .line 448
    .local v2, "userId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 449
    .local v3, "uss":Lcom/android/server/am/UserState;
    if-nez v3, :cond_1

    .line 451
    goto :goto_0

    .line 453
    :cond_1
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 456
    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3

    .line 460
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 461
    goto :goto_0

    .line 464
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    .end local v2    # "userId":Ljava/lang/Integer;
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    goto :goto_0

    .line 466
    :cond_4
    return-object v0
.end method

.method getStartedUserArray()[I
    .locals 2

    .line 2197
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    monitor-exit v0

    return-object v1

    .line 2199
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

    .line 2108
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2109
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    monitor-exit v0

    return-object v1

    .line 2110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUserIds()[I
    .locals 1

    .line 2333
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method getUsers()[I
    .locals 3

    .line 2324
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 2325
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
    .locals 16
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "allowMode"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;

    .line 1967
    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move-object/from16 v10, p7

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1968
    .local v11, "callingUserId":I
    if-ne v11, v8, :cond_0

    .line 1969
    return v8

    .line 1978
    :cond_0
    invoke-virtual {v6, v8}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v12

    .line 1980
    .local v12, "targetUserId":I
    const/4 v13, 0x3

    if-eqz v7, :cond_f

    const/16 v0, 0x3e8

    if-eq v7, v0, :cond_f

    .line 1982
    invoke-virtual {v6, v11, v12}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v14

    .line 1983
    .local v14, "isSameProfileGroup":Z
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, v7}, Lcom/android/server/am/UserController$Injector;->isCallerRecents(I)Z

    move-result v0

    const/4 v15, 0x2

    if-eqz v0, :cond_1

    .line 1984
    invoke-virtual {v6, v11, v12}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1987
    const/4 v0, 0x1

    .local v0, "allow":Z
    goto/16 :goto_1

    .line 1988
    .end local v0    # "allow":Z
    :cond_1
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, -0x1

    const/4 v5, 0x1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_2

    .line 1991
    const/4 v0, 0x1

    .restart local v0    # "allow":Z
    goto :goto_1

    .line 1992
    .end local v0    # "allow":Z
    :cond_2
    if-ne v9, v15, :cond_3

    .line 1994
    const/4 v0, 0x0

    .restart local v0    # "allow":Z
    goto :goto_1

    .line 1995
    .end local v0    # "allow":Z
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    move v2, v14

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UserController;->canInteractWithAcrossProfilesPermission(IZIILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1997
    const/4 v0, 0x1

    .restart local v0    # "allow":Z
    goto :goto_1

    .line 1998
    .end local v0    # "allow":Z
    :cond_4
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, -0x1

    const/4 v5, 0x1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-eqz v0, :cond_5

    .line 2001
    const/4 v0, 0x0

    .restart local v0    # "allow":Z
    goto :goto_1

    .line 2002
    .end local v0    # "allow":Z
    :cond_5
    if-nez v9, :cond_6

    .line 2004
    const/4 v0, 0x1

    .restart local v0    # "allow":Z
    goto :goto_1

    .line 2005
    .end local v0    # "allow":Z
    :cond_6
    const/4 v0, 0x1

    if-eq v9, v0, :cond_8

    if-ne v9, v13, :cond_7

    goto :goto_0

    .line 2011
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2009
    :cond_8
    :goto_0
    move v0, v14

    .line 2013
    .restart local v0    # "allow":Z
    :goto_1
    if-nez v0, :cond_e

    .line 2014
    const/4 v1, -0x3

    if-ne v8, v1, :cond_9

    .line 2017
    move v12, v11

    move-object/from16 v2, p6

    goto :goto_2

    .line 2019
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2020
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    if-eqz v10, :cond_a

    .line 2023
    const-string v3, " from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    :cond_a
    const-string v3, " asks to run as user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2028
    const-string v3, " but is calling from uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    invoke-static {v1, v7}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2030
    const-string v3, "; this requires "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    if-eq v9, v15, :cond_d

    .line 2033
    const-string v3, " or "

    if-eqz v9, :cond_b

    if-eqz v14, :cond_c

    .line 2034
    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2037
    :cond_c
    if-eqz v14, :cond_d

    if-ne v9, v13, :cond_d

    .line 2039
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2040
    const-string v3, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2044
    .local v3, "msg":Ljava/lang/String;
    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2013
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_e
    move-object/from16 v2, p6

    goto :goto_2

    .line 1980
    .end local v0    # "allow":Z
    .end local v14    # "isSameProfileGroup":Z
    :cond_f
    move-object/from16 v2, p6

    .line 2049
    :goto_2
    if-nez p4, :cond_10

    .line 2050
    invoke-virtual {v6, v12}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    .line 2053
    :cond_10
    const/16 v0, 0x7d0

    if-ne v7, v0, :cond_12

    if-ltz v12, :cond_12

    .line 2054
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {v6, v0, v12}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_3

    .line 2055
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shell does not have permission to access user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    invoke-static {v13}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2059
    :cond_12
    :goto_3
    return v12
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2556
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 2636
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 2637
    .local v0, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/UserController;->logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V

    .line 2639
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1, v3, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2641
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->showUserSwitchDialog(Landroid/util/Pair;)V

    .line 2644
    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->updateDefaultForScreenCompat()V

    .line 2646
    goto/16 :goto_0

    .line 2648
    .end local v0    # "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->logAndClearSessionId(I)V

    goto/16 :goto_0

    .line 2558
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V

    .line 2560
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v3, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2562
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    .line 2563
    goto/16 :goto_0

    .line 2633
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->dispatchLockedBootComplete(I)V

    .line 2634
    goto/16 :goto_0

    .line 2608
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->onUserUnlocked(I)V

    .line 2609
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2611
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    .line 2612
    goto/16 :goto_0

    .line 2595
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2596
    .local v0, "userId":I
    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/SystemServiceManager;->unlockUser(I)V

    .line 2598
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/-$$Lambda$UserController$avTAix2Aub5zSKSBBofMYY2qXyk;

    invoke-direct {v5, p0, v0}, Lcom/android/server/am/-$$Lambda$UserController$avTAix2Aub5zSKSBBofMYY2qXyk;-><init>(Lcom/android/server/am/UserController;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2601
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2603
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2605
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/UserState;

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    .line 2606
    goto/16 :goto_0

    .line 2574
    .end local v0    # "userId":I
    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->timeoutUserSwitchCallbacks(II)V

    .line 2575
    goto/16 :goto_0

    .line 2627
    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(I)V

    .line 2629
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2631
    goto/16 :goto_0

    .line 2624
    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    .line 2625
    goto/16 :goto_0

    .line 2614
    :sswitch_9
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v1, 0x4008

    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 2616
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 2614
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2617
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8008

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2619
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2617
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2621
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServiceManager;->switchUser(II)V

    .line 2622
    goto :goto_0

    .line 2580
    :sswitch_a
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8007

    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 2582
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 2580
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2583
    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v4, 0x3

    invoke-direct {p0, v0, v1, v4}, Lcom/android/server/am/UserController;->logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V

    .line 2584
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2587
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SystemServiceManager;->startUser(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2590
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    .line 2592
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v4}, Lcom/android/server/am/UserController;->clearSessionId(II)V

    .line 2593
    goto :goto_0

    .line 2577
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 2578
    goto :goto_0

    .line 2571
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2572
    goto :goto_0

    .line 2568
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2569
    goto :goto_0

    .line 2565
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2566
    nop

    .line 2651
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_e
        0x14 -> :sswitch_d
        0x1e -> :sswitch_c
        0x28 -> :sswitch_b
        0x32 -> :sswitch_a
        0x3c -> :sswitch_9
        0x46 -> :sswitch_8
        0x50 -> :sswitch_7
        0x5a -> :sswitch_6
        0x64 -> :sswitch_5
        0x69 -> :sswitch_4
        0x6e -> :sswitch_3
        0x78 -> :sswitch_2
        0xc8 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method hasMdmReady()Z
    .locals 6

    .line 618
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 619
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 620
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

    .line 621
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v5, "net.oneplus.odm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 622
    const/4 v2, 0x1

    return v2

    .line 624
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 625
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method hasStartedUserState(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 2114
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2115
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

    .line 2116
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

    .line 2376
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

    .line 2407
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2408
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2409
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

    .line 2454
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method isSameProfileGroup(II)Z
    .locals 5
    .param p1, "callingUserId"    # I
    .param p2, "targetUserId"    # I

    .line 2380
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 2381
    return v0

    .line 2383
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2384
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 2386
    .local v2, "callingProfile":I
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 2388
    .local v4, "targetProfile":I
    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    .line 2390
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

    .line 2255
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 2257
    .local v1, "uss":Lcom/android/server/am/UserState;
    if-nez v1, :cond_0

    .line 2258
    monitor-exit v0

    return v2

    .line 2260
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

    .line 2263
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

    .line 2394
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2395
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2396
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2398
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 2399
    .local v2, "parentUserId":I
    if-ne v2, v3, :cond_1

    .line 2400
    monitor-exit v0

    return v1

    .line 2402
    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2403
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

    .line 2203
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 2204
    .local v0, "state":Lcom/android/server/am/UserState;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2205
    return v1

    .line 2207
    :cond_0
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2208
    return v3

    .line 2210
    :cond_1
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_3

    .line 2211
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_2

    .line 2216
    return v1

    .line 2214
    :cond_2
    return v3

    .line 2219
    :cond_3
    and-int/lit8 v2, p2, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x4

    if-eqz v2, :cond_6

    .line 2220
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x2

    if-eq v2, v7, :cond_5

    if-eq v2, v4, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_4

    .line 2229
    return v1

    .line 2227
    :cond_4
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    .line 2223
    :cond_5
    return v3

    .line 2232
    :cond_6
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_9

    .line 2233
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    if-eq v2, v4, :cond_8

    if-eq v2, v6, :cond_7

    if-eq v2, v5, :cond_7

    .line 2241
    return v1

    .line 2239
    :cond_7
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    .line 2235
    :cond_8
    return v3

    .line 2245
    :cond_9
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    if-eq v2, v6, :cond_a

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    if-eq v2, v5, :cond_a

    move v1, v3

    :cond_a
    return v1
.end method

.method public synthetic lambda$dispatchUserLocking$6$UserController(ILjava/util/List;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "keyEvictedCallbacks"    # Ljava/util/List;

    .line 1127
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1129
    const-string v1, "ActivityManager"

    const-string v2, "User was restarted, skipping key eviction"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    monitor-exit v0

    return-void

    .line 1132
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->lockUserKey(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1137
    nop

    .line 1138
    if-nez p2, :cond_1

    .line 1139
    return-void

    .line 1141
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1142
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState$KeyEvictedCallback;

    invoke-interface {v1, p1}, Lcom/android/server/am/UserState$KeyEvictedCallback;->keyEvicted(I)V

    .line 1141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1144
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1132
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

    .line 436
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 438
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget v1, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->stopRunningUsersLU(I)V

    .line 440
    monitor-exit v0

    .line 441
    return-void

    .line 440
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

    .line 738
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

    .line 817
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

    .line 834
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oem.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, "oemBootIntent":Landroid/content/Intent;
    move-object/from16 v19, v1

    .line 835
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    const/high16 v2, 0x19000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v18, v2

    filled-new-array/range {v20 .. v20}, [Ljava/lang/String;

    move-result-object v25

    sget v30, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 841
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v32

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v33

    .line 839
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

    .line 843
    return-void
.end method

.method public synthetic lambda$finishUserUnlocking$1$UserController(ILcom/android/server/am/UserState;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 594
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    const-string v0, "ActivityManager"

    const-string v1, "User key got locked unexpectedly, leaving user locked."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    .line 599
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 602
    monitor-exit v0

    return-void

    .line 604
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 607
    iget-object v0, p2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 611
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 612
    return-void

    .line 604
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

    .line 2599
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController$Injector;->loadUserRecents(I)V

    .line 2600
    return-void
.end method

.method public synthetic lambda$scheduleStartProfiles$7$UserController()V
    .locals 4

    .line 1253
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1257
    :cond_0
    return-void
.end method

.method public synthetic lambda$startUserInternal$8$UserController(IZLandroid/os/IProgressListener;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "unlockListener"    # Landroid/os/IProgressListener;

    .line 1420
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    return-void
.end method

.method public synthetic lambda$stopSingleUserLU$5$UserController(ILcom/android/server/am/UserState;Z)V
    .locals 21
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;
    .param p3, "allowDelayyLockingCopied"    # Z

    .line 992
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STOPPING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "stoppingIntent":Landroid/content/Intent;
    move-object v5, v2

    .line 993
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 994
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 995
    const-string v3, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 997
    new-instance v7, Lcom/android/server/am/UserController$4;

    move-object/from16 v3, p2

    move/from16 v15, p3

    invoke-direct {v7, v0, v1, v3, v15}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V

    .line 1007
    .local v7, "stoppingReceiver":Landroid/content/IIntentReceiver;
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4, v1}, Lcom/android/server/am/UserController$Injector;->clearBroadcastQueueForUser(I)V

    .line 1009
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1012
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 1013
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 1009
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v15, v17

    const/16 v17, 0x3e8

    const/16 v20, -0x1

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1014
    return-void
.end method

.method onSystemReady()V
    .locals 1

    .line 2166
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 2167
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    .line 2168
    return-void
.end method

.method onUserRemoved(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 2419
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2420
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2421
    .local v1, "size":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2422
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-eq v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 2423
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 2424
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2421
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2428
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 2429
    .end local v1    # "size":I
    monitor-exit v0

    .line 2430
    return-void

    .line 2429
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .locals 2
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .param p2, "name"    # Ljava/lang/String;

    .line 2093
    const-string v0, "Observer name cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2094
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "registerUserSwitchObserver"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 2096
    return-void
.end method

.method restartUser(IZ)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .line 847
    new-instance v5, Lcom/android/server/am/UserController$3;

    invoke-direct {v5, p0, p2}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Z)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v0

    return v0
.end method

.method scheduleStartProfiles()V
    .locals 2

    .line 1252
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$UserController$G0WJmqt4X_QG30fRlvXobn18mrE;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$UserController$G0WJmqt4X_QG30fRlvXobn18mrE;-><init>(Lcom/android/server/am/UserController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1258
    return-void
.end method

.method sendBootCompleted(Landroid/content/IIntentReceiver;)V
    .locals 6
    .param p1, "resultTo"    # Landroid/content/IIntentReceiver;

    .line 2146
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2147
    :try_start_0
    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2148
    .local v1, "systemUserFinishedBooting":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 2149
    .local v2, "startedUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/UserState;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 2151
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 2152
    .local v3, "uss":Lcom/android/server/am/UserState;
    if-eqz v1, :cond_1

    iget-object v4, v3, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2158
    const-string v4, "ActivityManager"

    const-string/jumbo v5, "sendBootCompleted(): skipping on non-current system user"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    goto :goto_2

    .line 2161
    :cond_1
    invoke-direct {p0, v3, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 2150
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2163
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 2149
    .end local v1    # "systemUserFinishedBooting":Z
    .end local v2    # "startedUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/UserState;>;"
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

    .line 1869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1870
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1871
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1873
    return-void
.end method

.method sendForegroundProfileChanged(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2099
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2100
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2101
    return-void
.end method

.method sendUserSwitchBroadcasts(II)V
    .locals 39
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .line 1900
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    .line 1901
    .local v21, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    .line 1902
    .local v22, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 1905
    .local v23, "ident":J
    const/4 v0, 0x0

    const-string v15, "android.intent.extra.USER"

    const-string v14, "android.intent.extra.user_handle"

    const/high16 v13, 0x50000000

    if-ltz v2, :cond_1

    .line 1907
    :try_start_0
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v4

    move-object v12, v4

    .line 1908
    .local v12, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    move v11, v4

    .line 1909
    .local v11, "count":I
    const/4 v4, 0x0

    move v10, v4

    .local v10, "i":I
    :goto_0
    if-ge v10, v11, :cond_0

    .line 1910
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    move v9, v4

    .line 1911
    .local v9, "profileUserId":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v4

    .line 1912
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1914
    invoke-virtual {v8, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1917
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v8, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1918
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    sget v29, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    move-object v5, v8

    move-object/from16 v30, v8

    .end local v8    # "intent":Landroid/content/Intent;
    .local v30, "intent":Landroid/content/Intent;
    move/from16 v8, v16

    move/from16 v31, v9

    .end local v9    # "profileUserId":I
    .local v31, "profileUserId":I
    move-object/from16 v9, v18

    move/from16 v32, v10

    .end local v10    # "i":I
    .local v32, "i":I
    move-object/from16 v10, v19

    move/from16 v33, v11

    .end local v11    # "count":I
    .local v33, "count":I
    move-object/from16 v11, v20

    move-object/from16 v34, v12

    .end local v12    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v34, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v35, v14

    move/from16 v14, v27

    move-object/from16 v36, v15

    move/from16 v15, v28

    move/from16 v16, v29

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v31

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1909
    nop

    .end local v31    # "profileUserId":I
    add-int/lit8 v10, v32, 0x1

    move/from16 v11, v33

    move-object/from16 v12, v34

    move-object/from16 v14, v35

    move-object/from16 v15, v36

    const/high16 v13, 0x50000000

    .end local v32    # "i":I
    .restart local v10    # "i":I
    goto :goto_0

    .end local v30    # "intent":Landroid/content/Intent;
    .end local v33    # "count":I
    .end local v34    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v11    # "count":I
    .restart local v12    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    move/from16 v32, v10

    move/from16 v33, v11

    move-object/from16 v34, v12

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    .end local v10    # "i":I
    .end local v11    # "count":I
    .end local v12    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v32    # "i":I
    .restart local v33    # "count":I
    .restart local v34    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_1

    .line 1960
    .end local v32    # "i":I
    .end local v33    # "count":I
    .end local v34    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 1905
    :cond_1
    move-object/from16 v35, v14

    move-object/from16 v36, v15

    .line 1924
    :goto_1
    if-ltz v3, :cond_3

    .line 1926
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1927
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v15, v4

    .line 1928
    .local v15, "count":I
    const/4 v4, 0x0

    move v14, v4

    .local v14, "i":I
    :goto_2
    if-ge v14, v15, :cond_2

    .line 1929
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    move v13, v4

    .line 1930
    .local v13, "profileUserId":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v4

    .line 1931
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v11, 0x50000000

    invoke-virtual {v12, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1933
    move-object/from16 v10, v35

    invoke-virtual {v12, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1936
    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v9, v36

    invoke-virtual {v12, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1937
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

    move-object v5, v12

    move-object/from16 v37, v9

    move-object/from16 v9, v16

    move-object/from16 v38, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v29, v12

    .end local v12    # "intent":Landroid/content/Intent;
    .local v29, "intent":Landroid/content/Intent;
    move/from16 v12, v20

    move/from16 v30, v13

    .end local v13    # "profileUserId":I
    .local v30, "profileUserId":I
    move-object/from16 v13, v25

    move/from16 v25, v14

    .end local v14    # "i":I
    .local v25, "i":I
    move/from16 v14, v26

    move/from16 v26, v15

    .end local v15    # "count":I
    .local v26, "count":I
    move/from16 v15, v27

    move/from16 v16, v28

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v30

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1928
    nop

    .end local v30    # "profileUserId":I
    add-int/lit8 v14, v25, 0x1

    move/from16 v15, v26

    move-object/from16 v36, v37

    move-object/from16 v35, v38

    .end local v25    # "i":I
    .restart local v14    # "i":I
    goto :goto_2

    .end local v26    # "count":I
    .end local v29    # "intent":Landroid/content/Intent;
    .restart local v15    # "count":I
    :cond_2
    move/from16 v25, v14

    move/from16 v26, v15

    move-object/from16 v38, v35

    move-object/from16 v37, v36

    .line 1942
    .end local v14    # "i":I
    .end local v15    # "count":I
    .restart local v26    # "count":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v4

    .line 1943
    .local v15, "intent":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1945
    move-object/from16 v4, v38

    invoke-virtual {v15, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1948
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v5, v37

    invoke-virtual {v15, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1949
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

    move-object/from16 v25, v15

    .end local v15    # "intent":Landroid/content/Intent;
    .local v25, "intent":Landroid/content/Intent;
    move/from16 v15, v16

    move/from16 v16, v18

    move/from16 v18, v21

    move/from16 v19, v22

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 1956
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-static {v4}, Lcom/android/server/am/UserController$Injector;->access$500(Lcom/android/server/am/UserController$Injector;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 1960
    .end local v0    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v25    # "intent":Landroid/content/Intent;
    .end local v26    # "count":I
    :goto_3
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1961
    throw v0

    .line 1960
    :cond_3
    :goto_4
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1961
    nop

    .line 1962
    return-void
.end method

.method setInitialConfig(ZIZ)V
    .locals 2
    .param p1, "userSwitchUiEnabled"    # Z
    .param p2, "maxRunningUsers"    # I
    .param p3, "delayUserDataLocking"    # Z

    .line 407
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 409
    iput p2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    .line 410
    iput-boolean p3, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    .line 411
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    .line 412
    monitor-exit v0

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "switchingFromSystemUserMessage"    # Ljava/lang/String;

    .line 2458
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2459
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 2460
    monitor-exit v0

    .line 2461
    return-void

    .line 2460
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

    .line 2464
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2465
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 2466
    monitor-exit v0

    .line 2467
    return-void

    .line 2466
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

    .line 2438
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2439
    return v1

    .line 2441
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2442
    return v1

    .line 2444
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2445
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    .line 2446
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 2449
    .end local v0    # "km":Landroid/app/KeyguardManager;
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v0

    return v0
.end method

.method startProfiles()V
    .locals 9

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 1262
    .local v0, "currentUserId":I
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "startProfilesLocked"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 1265
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1266
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

    .line 1267
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->flags:I

    const/16 v8, 0x10

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_1

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v0, :cond_1

    .line 1268
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1269
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    goto :goto_0

    .line 1272
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1273
    .local v5, "profilesToStartSize":I
    const/4 v6, 0x0

    .line 1274
    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getMaxRunningUsers()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_3

    .line 1275
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7, v3}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    .line 1274
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1277
    :cond_3
    if-ge v6, v5, :cond_4

    .line 1278
    const-string v3, "More profiles than MAX_RUNNING_USERS"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_4
    return-void
.end method

.method startUser(IZ)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .line 1283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method startUser(IZLandroid/os/IProgressListener;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "unlockListener"    # Landroid/os/IProgressListener;

    .line 1323
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "startUser"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 1327
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUser-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v2, "fg"

    goto :goto_0

    :cond_0
    const-string v2, "bg"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1329
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/UserController;->startUserInternal(IZLandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1329
    return v1

    .line 1331
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1332
    throw v1
.end method

.method startUserInForeground(I)V
    .locals 3
    .param p1, "targetUserId"    # I

    .line 1580
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    move-result v0

    .line 1581
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 1582
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1584
    :cond_0
    return-void
.end method

.method stopRunningUsersLU(I)V
    .locals 11
    .param p1, "maxRunningUsers"    # I

    .line 471
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v0

    .line 472
    .local v0, "currentlyRunning":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 473
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 474
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 475
    .local v2, "userId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v3, v4, :cond_1

    .line 477
    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v3

    if-nez v3, :cond_2

    .line 484
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 486
    .end local v2    # "userId":Ljava/lang/Integer;
    :cond_2
    goto :goto_0

    .line 487
    :cond_3
    return-void
.end method

.method stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .locals 3
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "allowDelayedLocking"    # Z
    .param p4, "stopUserCallback"    # Landroid/app/IStopUserCallback;
    .param p5, "keyEvictedCallback"    # Lcom/android/server/am/UserState$KeyEvictedCallback;

    .line 860
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "stopUser"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    if-ltz p1, :cond_0

    if-eqz p1, :cond_0

    .line 864
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 865
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 868
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 862
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
.end method

.method switchUser(I)Z
    .locals 9
    .param p1, "targetUserId"    # I

    .line 1680
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 1681
    const/16 v0, 0x757b

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1682
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 1683
    .local v0, "currentUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1684
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 1685
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

    .line 1686
    return v2

    .line 1688
    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 1689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No user info for user #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    return v3

    .line 1692
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1693
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

    .line 1694
    return v3

    .line 1696
    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1697
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

    .line 1698
    return v3

    .line 1701
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1702
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    if-nez v5, :cond_4

    .line 1703
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot switch to User #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": UserController not ready yet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    monitor-exit v4

    return v3

    .line 1707
    :cond_4
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1708
    iget-boolean v5, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 1709
    .local v5, "userSwitchUiEnabled":Z
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1710
    if-eqz v5, :cond_5

    .line 1711
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1712
    .local v3, "currentUserInfo":Landroid/content/pm/UserInfo;
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1713
    .local v4, "userNames":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1714
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1716
    .end local v3    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "userNames":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    goto :goto_0

    .line 1717
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x78

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1718
    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1721
    :goto_0
    return v2

    .line 1709
    .end local v5    # "userSwitchUiEnabled":Z
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

    .line 1588
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "unlockUser"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const/16 v0, 0x757d

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1590
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1592
    .local v0, "binderToken":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1592
    return v2

    .line 1594
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1595
    throw v2
.end method

.method unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;

    .line 2104
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2105
    return-void
.end method

.method unsafeConvertIncomingUser(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 2081
    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2082
    :cond_0
    move v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 2081
    :goto_1
    return v0
.end method
