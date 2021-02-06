.class public Lcom/android/server/vr/VrManagerService;
.super Lcom/android/server/SystemService;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/VrManagerService$LocalService;,
        Lcom/android/server/vr/VrManagerService$NotificationAccessManager;,
        Lcom/android/server/vr/VrManagerService$VrState;,
        Lcom/android/server/vr/VrManagerService$SettingEvent;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final EVENT_LOG_SIZE:I = 0x40

.field private static final FLAG_ALL:I = 0x7

.field private static final FLAG_AWAKE:I = 0x1

.field private static final FLAG_KEYGUARD_UNLOCKED:I = 0x4

.field private static final FLAG_NONE:I = 0x0

.field private static final FLAG_SCREEN_ON:I = 0x2

.field private static final INVALID_APPOPS_MODE:I = -0x1

.field private static final MSG_PENDING_VR_STATE_CHANGE:I = 0x1

.field private static final MSG_PERSISTENT_VR_MODE_STATE_CHANGE:I = 0x2

.field private static final MSG_VR_STATE_CHANGE:I = 0x0

.field private static final PENDING_STATE_DELAY_MS:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "VrManagerService"

.field private static final sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;


# instance fields
.field private mBootsToVr:Z

.field private mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

.field private mCurrentVrModeComponent:Landroid/content/ComponentName;

.field private mCurrentVrModeUser:I

.field private mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

.field private mDefaultVrService:Landroid/content/ComponentName;

.field private final mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

.field private mGuard:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mLogLimitHit:Z

.field private final mLoggingDeque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/utils/ManagedApplicationService$LogFormattable;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private final mOverlayToken:Landroid/os/IBinder;

.field private mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

.field private mPersistentVrModeEnabled:Z

.field private final mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/service/vr/IPersistentVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousCoarseLocationMode:I

.field private mPreviousManageOverlayMode:I

.field private mRunning2dInVr:Z

.field private mStandby:Z

.field private mSystemSleepFlags:I

.field private mUseStandbyToExitVrMode:Z

.field private mUserUnlocked:Z

.field private mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

.field private mVrAppProcessId:I

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private mVrModeAllowed:Z

.field private mVrModeEnabled:Z

.field private final mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/service/vr/IVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mWasDefaultGranted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 434
    new-instance v0, Lcom/android/server/vr/VrManagerService$3;

    invoke-direct {v0}, Lcom/android/server/vr/VrManagerService$3;-><init>()V

    sput-object v0, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 750
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 134
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    .line 151
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 153
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/vr/VrManagerService;->mPreviousCoarseLocationMode:I

    .line 156
    iput v0, p0, Lcom/android/server/vr/VrManagerService;->mPreviousManageOverlayMode:I

    .line 159
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    .line 160
    new-instance v0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    .line 163
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 177
    new-instance v0, Lcom/android/server/vr/VrManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$1;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    .line 305
    new-instance v0, Lcom/android/server/vr/VrManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$2;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 533
    new-instance v0, Lcom/android/server/vr/VrManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$4;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    .line 751
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/vr/VrManagerService;Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Lcom/android/server/utils/ManagedApplicationService$LogFormattable;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeNotificationListenerAccess(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->revokeNotificationPolicyAccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->grantNotificationPolicyAccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantNotificationListenerAccess(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Landroid/service/vr/IVrStateCallbacks;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Landroid/service/vr/IVrStateCallbacks;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->addPersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->removePersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/vr/VrManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getVrMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/vr/VrManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getPersistentVrMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/vr/VrManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getVr2dDisplayId()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setAndBindCompositor(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/vr/VrManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Z

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setStandbyEnabled(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/vr/VrManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/vr/VrManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->dumpStateTransitions(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/vr/VrManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/ComponentName;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/content/ComponentName;

    .line 109
    invoke-direct/range {p0 .. p5}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/vr/VrManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Z

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setScreenOn(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isCurrentVrListener(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->hasVrPackage(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/vr/VrManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->setUserUnlocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/vr/VrManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/vr/VrManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/vr/VrManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Z

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/vr/VrManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/vr/VrManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 109
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked()V

    return-void
.end method

.method private addPersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 1413
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1414
    return-void
.end method

.method private addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .line 1405
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1406
    return-void
.end method

.method private callFocusedActivityChangedLocked()V
    .locals 5

    .line 995
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 996
    .local v0, "c":Landroid/content/ComponentName;
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 997
    .local v1, "b":Z
    iget v2, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    .line 998
    .local v2, "pid":I
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    new-instance v4, Lcom/android/server/vr/VrManagerService$6;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/server/vr/VrManagerService$6;-><init>(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;ZI)V

    invoke-virtual {v3, v4}, Lcom/android/server/utils/ManagedApplicationService;->sendEvent(Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)V

    .line 1009
    return-void
.end method

.method private changeVrModeLocked(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1151
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_1

    .line 1152
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VR mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->setVrModeNative(Z)V

    .line 1158
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->onVrModeChangedLocked()V

    .line 1160
    :cond_1
    return-void
.end method

.method private consumeAndApplyPendingStateLocked()V
    .locals 1

    .line 1201
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    .line 1202
    return-void
.end method

.method private consumeAndApplyPendingStateLocked(Z)V
    .locals 8
    .param p1, "disconnectIfNoPendingState"    # Z

    .line 1212
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-eqz v0, :cond_0

    .line 1213
    iget-boolean v2, v0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v3, v0, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-object v4, v0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget v5, v0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget v6, v0, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-object v7, v0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 1216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    goto :goto_0

    .line 1217
    :cond_0
    if-eqz p1, :cond_1

    .line 1218
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 1220
    :cond_1
    :goto_0
    return-void
.end method

.method private createAndConnectService(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1138
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->createVrListenerService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1139
    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-void
.end method

.method private createVrCompositorService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;
    .locals 11
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1189
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v8, v0

    goto :goto_0

    .line 1190
    :cond_0
    const/4 v0, 0x3

    move v8, v0

    :goto_0
    nop

    .line 1191
    .local v8, "retryType":I
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v10}, Lcom/android/server/utils/ManagedApplicationService;->build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    return-object v0
.end method

.method private createVrListenerService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;
    .locals 11
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1177
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v8, v0

    goto :goto_0

    .line 1178
    :cond_0
    const/4 v0, 0x2

    move v8, v0

    :goto_0
    nop

    .line 1179
    .local v8, "retryType":I
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040830

    sget-object v6, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    const-string v5, "android.settings.VR_LISTENER_SETTINGS"

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v10}, Lcom/android/server/utils/ManagedApplicationService;->build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    return-object v0
.end method

.method private dumpStateTransitions(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1240
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1241
    .local v0, "d":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 1242
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1243
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1244
    const-string v2, "None"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

    if-eqz v2, :cond_1

    .line 1248
    const-string v2, "..."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    :cond_1
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/ManagedApplicationService$LogFormattable;

    .line 1252
    .local v3, "event":Lcom/android/server/utils/ManagedApplicationService$LogFormattable;
    invoke-interface {v3, v0}, Lcom/android/server/utils/ManagedApplicationService$LogFormattable;->toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    .end local v3    # "event":Lcom/android/server/utils/ManagedApplicationService$LogFormattable;
    goto :goto_0

    .line 1254
    :cond_2
    monitor-exit v1

    .line 1255
    return-void

    .line 1254
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private varargs enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 692
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 693
    .local v2, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 695
    return-void

    .line 692
    .end local v2    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not hold at least one of the permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static formatSettings(Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1116
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, ""

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1120
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1121
    .local v1, "b":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 1122
    .local v2, "start":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1123
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1124
    goto :goto_0

    .line 1126
    :cond_1
    if-nez v2, :cond_2

    .line 1127
    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1129
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    const/4 v2, 0x0

    .line 1131
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1132
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1117
    .end local v1    # "b":Ljava/lang/StringBuilder;
    .end local v2    # "start":Z
    :cond_4
    :goto_1
    return-object v0
.end method

.method private getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1100
    const-string v0, "enabled_notification_listeners"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, "flat":Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1104
    .local v1, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 1105
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1106
    .local v2, "allowed":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1107
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1108
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1106
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1112
    .end local v2    # "allowed":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private getPersistentVrMode()Z
    .locals 2

    .line 1427
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1428
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    monitor-exit v0

    return v1

    .line 1429
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getStateAsString()Ljava/lang/String;
    .locals 3

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v1, v1, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, "awake, "

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, "screen_on, "

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v2, "keyguard_off"

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    return-object v0
.end method

.method private getVr2dDisplayId()I
    .locals 2

    .line 1333
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    if-eqz v0, :cond_0

    .line 1334
    invoke-virtual {v0}, Lcom/android/server/vr/Vr2dDisplay;->getVirtualDisplayId()I

    move-result v0

    return v0

    .line 1336
    :cond_0
    const-string v0, "VrManagerService"

    const-string v1, "Vr2dDisplay is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    const/4 v0, -0x1

    return v0
.end method

.method private getVrMode()Z
    .locals 2

    .line 1421
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1422
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    monitor-exit v0

    return v1

    .line 1423
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1066
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1068
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    goto :goto_0

    .line 1070
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not grant coarse location permission, package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was removed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VrManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void
.end method

.method private grantNotificationListenerAccess(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1040
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1041
    .local v0, "nm":Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1042
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.service.notification.NotificationListenerService"

    const-string v3, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-static {v1, p2, v2, v3}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    .line 1046
    .local v2, "possibleServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1047
    .local v4, "c":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1048
    const/4 v5, 0x1

    invoke-virtual {v0, v4, p2, v5}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 1050
    .end local v4    # "c":Landroid/content/ComponentName;
    :cond_0
    goto :goto_0

    .line 1051
    :cond_1
    return-void
.end method

.method private grantNotificationPolicyAccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1027
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1028
    .local v0, "nm":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 1029
    return-void
.end method

.method private hasVrPackage(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "targetPackageName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1385
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1386
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1387
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native initializeNative()V
.end method

.method private isCurrentVrListener(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1391
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1392
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1393
    monitor-exit v0

    return v2

    .line 1395
    :cond_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1396
    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v1

    if-ne p2, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit v0

    .line 1395
    return v2

    .line 1397
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isDefaultAllowed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1012
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1014
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1016
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1018
    goto :goto_0

    .line 1017
    :catch_0
    move-exception v2

    .line 1020
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1023
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 1021
    :cond_1
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method private isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1093
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    .line 1095
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    .locals 3
    .param p1, "event"    # Lcom/android/server/utils/ManagedApplicationService$LogFormattable;

    .line 1230
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 1231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    .line 1232
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

    .line 1235
    :cond_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1236
    monitor-exit v0

    .line 1237
    return-void

    .line 1236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logStateLocked()V
    .locals 9

    .line 1223
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    .line 1224
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v4, v0

    :goto_0
    nop

    .line 1225
    .local v4, "currentBoundService":Landroid/content/ComponentName;
    new-instance v0, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget v5, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    iget v6, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v7, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    iget-boolean v8, p0, Lcom/android/server/vr/VrManagerService;->mWasDefaultGranted:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 1227
    return-void
.end method

.method private onVrModeChangedLocked()V
    .locals 3

    .line 1168
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 1169
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 1168
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1170
    return-void
.end method

.method private removePersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 1417
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1418
    return-void
.end method

.method private removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .line 1409
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1410
    return-void
.end method

.method private revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1080
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1082
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    goto :goto_0

    .line 1084
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke coarse location permission, package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was removed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VrManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void
.end method

.method private revokeNotificationListenerAccess(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1054
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1055
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v1

    .line 1057
    .local v1, "current":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1058
    .local v3, "component":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1059
    const/4 v4, 0x0

    invoke-virtual {v0, v3, p2, v4}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 1061
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_0
    goto :goto_0

    .line 1062
    :cond_1
    return-void
.end method

.method private revokeNotificationPolicyAccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1032
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1034
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 1036
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 1037
    return-void
.end method

.method private setAndBindCompositor(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1341
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1342
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1344
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1345
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 1346
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1348
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    nop

    .line 1350
    return-void

    .line 1346
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "userId":I
    .end local v1    # "token":J
    .end local p0    # "this":Lcom/android/server/vr/VrManagerService;
    .end local p1    # "componentName":Landroid/content/ComponentName;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1348
    .restart local v0    # "userId":I
    .restart local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/vr/VrManagerService;
    .restart local p1    # "componentName":Landroid/content/ComponentName;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    throw v3
.end method

.method private setPersistentModeAndNotifyListenersLocked(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 1372
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-ne v0, p1, :cond_0

    .line 1373
    return-void

    .line 1375
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persistent VR mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v1, "enabled"

    goto :goto_0

    :cond_1
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1376
    .local v0, "eventName":Ljava/lang/String;
    const-string v1, "VrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    new-instance v1, Lcom/android/server/vr/VrManagerService$SettingEvent;

    invoke-direct {v1, v0}, Lcom/android/server/vr/VrManagerService$SettingEvent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 1378
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    .line 1380
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 1381
    const/4 v3, 0x0

    .line 1380
    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1382
    return-void
.end method

.method private setPersistentVrModeEnabled(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .line 1309
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    .line 1312
    if-nez p1, :cond_0

    .line 1313
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 1315
    :cond_0
    monitor-exit v0

    .line 1316
    return-void

    .line 1315
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setScreenOn(Z)V
    .locals 1
    .param p1, "isScreenOn"    # Z

    .line 251
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 252
    return-void
.end method

.method private setStandbyEnabled(Z)V
    .locals 3
    .param p1, "standby"    # Z

    .line 295
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-nez v1, :cond_0

    .line 297
    const-string v1, "VrManagerService"

    const-string v2, "Attempting to set standby mode on a non-standalone device"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    monitor-exit v0

    return-void

    .line 300
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mStandby:Z

    .line 301
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

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

.method private setSystemState(IZ)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "isOn"    # Z

    .line 265
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 267
    .local v1, "oldState":I
    if-eqz p2, :cond_0

    .line 268
    iget v2, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    or-int/2addr v2, p1

    iput v2, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    goto :goto_0

    .line 270
    :cond_0
    iget v2, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    not-int v3, p1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 272
    :goto_0
    iget v2, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    if-eq v1, v2, :cond_1

    .line 274
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    .line 276
    .end local v1    # "oldState":I
    :cond_1
    monitor-exit v0

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setUserUnlocked()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    .line 290
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    .line 291
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .locals 19
    .param p1, "enabled"    # Z
    .param p2, "targetPackageName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "processId"    # I
    .param p5, "callingPackage"    # Landroid/content/ComponentName;

    .line 1263
    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1269
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :try_start_0
    iget-boolean v2, v8, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    .line 1305
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 1269
    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    move/from16 v17, v2

    .line 1270
    .local v17, "targetEnabledState":Z
    if-nez p1, :cond_2

    iget-boolean v2, v8, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 1271
    .local v0, "running2dInVr":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 1272
    iget-object v2, v8, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    move-object/from16 v18, v2

    .local v2, "targetListener":Landroid/content/ComponentName;
    goto :goto_2

    .line 1274
    .end local v2    # "targetListener":Landroid/content/ComponentName;
    :cond_3
    move-object/from16 v2, p2

    move-object/from16 v18, v2

    .line 1277
    .local v18, "targetListener":Landroid/content/ComponentName;
    :goto_2
    new-instance v2, Lcom/android/server/vr/VrManagerService$VrState;

    move-object v10, v2

    move/from16 v11, v17

    move v12, v0

    move-object/from16 v13, v18

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    invoke-direct/range {v10 .. v16}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    move-object v10, v2

    .line 1280
    .local v10, "pending":Lcom/android/server/vr/VrManagerService$VrState;
    iget-boolean v2, v8, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-nez v2, :cond_4

    .line 1284
    iput-object v10, v8, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 1285
    monitor-exit v9

    return-void

    .line 1288
    :cond_4
    if-nez v17, :cond_6

    iget-object v2, v8, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v2, :cond_6

    .line 1291
    iget-object v2, v8, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-nez v2, :cond_5

    .line 1292
    iget-object v2, v8, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1296
    :cond_5
    iput-object v10, v8, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 1297
    monitor-exit v9

    return-void

    .line 1299
    :cond_6
    iget-object v2, v8, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1300
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 1303
    move-object/from16 v1, p0

    move/from16 v2, v17

    move v3, v0

    move-object/from16 v4, v18

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 1305
    nop

    .end local v0    # "running2dInVr":Z
    .end local v10    # "pending":Lcom/android/server/vr/VrManagerService$VrState;
    .end local v17    # "targetEnabledState":Z
    .end local v18    # "targetListener":Landroid/content/ComponentName;
    monitor-exit v9

    .line 1306
    return-void

    .line 1305
    :goto_3
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native setVrModeNative(Z)V
.end method

.method private updateCompositorServiceLocked(ILandroid/content/ComponentName;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 1353
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    const-string v1, "VrManagerService"

    if-eqz v0, :cond_0

    .line 1354
    invoke-virtual {v0, p2, p1}, Lcom/android/server/utils/ManagedApplicationService;->disconnectIfNotMatching(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting compositor service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1356
    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1355
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1362
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v0, :cond_1

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting compositor service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-direct {p0, p2, p1}, Lcom/android/server/vr/VrManagerService;->createVrCompositorService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1367
    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    .line 1369
    :cond_1
    return-void
.end method

.method private updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z
    .locals 17
    .param p1, "enabled"    # Z
    .param p2, "running2dInVr"    # Z
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "processId"    # I
    .param p6, "calling"    # Landroid/content/ComponentName;

    .line 902
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    const/4 v6, 0x0

    .line 903
    .local v6, "sendUpdatedCaller":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 906
    .local v7, "identity":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v10

    .line 908
    .local v0, "validUserComponent":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v9, v10

    .line 909
    .local v9, "goingIntoVrMode":Z
    :goto_1
    iget-boolean v10, v1, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v10, :cond_2

    if-nez v9, :cond_2

    .line 910
    nop

    .line 990
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 910
    return v0

    .line 913
    :cond_2
    :try_start_1
    iget-object v10, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v10, :cond_3

    .line 914
    :try_start_2
    iget-object v10, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v10}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 990
    .end local v0    # "validUserComponent":Z
    .end local v9    # "goingIntoVrMode":Z
    :catchall_0
    move-exception v0

    move/from16 v14, p5

    goto/16 :goto_5

    .line 914
    .restart local v0    # "validUserComponent":Z
    .restart local v9    # "goingIntoVrMode":Z
    :cond_3
    const/4 v10, 0x0

    .line 915
    .local v10, "oldVrServicePackage":Ljava/lang/String;
    :goto_2
    :try_start_3
    iget v12, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 918
    .local v12, "oldUserId":I
    invoke-direct {v1, v9}, Lcom/android/server/vr/VrManagerService;->changeVrModeLocked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 920
    const/4 v13, 0x0

    .line 921
    .local v13, "nothingChanged":Z
    const-string v15, " for user "

    const-string v11, "VrManagerService"

    if-nez v9, :cond_5

    .line 923
    :try_start_4
    iget-object v14, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v14, :cond_4

    .line 924
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v16, v6

    .end local v6    # "sendUpdatedCaller":Z
    .local v16, "sendUpdatedCaller":Z
    :try_start_5
    const-string v6, "Leaving VR mode, disconnecting "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 925
    invoke-virtual {v6}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 926
    invoke-virtual {v6}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 924
    invoke-static {v11, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v6, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v6}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 928
    const/16 v6, -0x2710

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 929
    iput-object v11, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move/from16 v6, v16

    const/4 v11, 0x0

    goto :goto_3

    .line 931
    .end local v16    # "sendUpdatedCaller":Z
    .restart local v6    # "sendUpdatedCaller":Z
    :cond_4
    move/from16 v16, v6

    .end local v6    # "sendUpdatedCaller":Z
    .restart local v16    # "sendUpdatedCaller":Z
    const/4 v13, 0x1

    const/4 v11, 0x0

    goto :goto_3

    .line 990
    .end local v0    # "validUserComponent":Z
    .end local v9    # "goingIntoVrMode":Z
    .end local v10    # "oldVrServicePackage":Ljava/lang/String;
    .end local v12    # "oldUserId":I
    .end local v13    # "nothingChanged":Z
    .end local v16    # "sendUpdatedCaller":Z
    .restart local v6    # "sendUpdatedCaller":Z
    :catchall_1
    move-exception v0

    move/from16 v16, v6

    move/from16 v14, p5

    goto/16 :goto_5

    .line 935
    .restart local v0    # "validUserComponent":Z
    .restart local v9    # "goingIntoVrMode":Z
    .restart local v10    # "oldVrServicePackage":Ljava/lang/String;
    .restart local v12    # "oldUserId":I
    .restart local v13    # "nothingChanged":Z
    :cond_5
    move/from16 v16, v6

    .end local v6    # "sendUpdatedCaller":Z
    .restart local v16    # "sendUpdatedCaller":Z
    iget-object v6, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v6, :cond_7

    .line 938
    iget-object v6, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/utils/ManagedApplicationService;->disconnectIfNotMatching(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 939
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VR mode component changed to "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", disconnecting "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 940
    invoke-virtual {v14}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 941
    invoke-virtual {v14}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 939
    invoke-static {v11, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/16 v6, -0x2710

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 943
    invoke-direct {v1, v3, v4}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V

    .line 944
    const/4 v6, 0x1

    .end local v16    # "sendUpdatedCaller":Z
    .restart local v6    # "sendUpdatedCaller":Z
    goto :goto_3

    .line 946
    .end local v6    # "sendUpdatedCaller":Z
    .restart local v16    # "sendUpdatedCaller":Z
    :cond_6
    const/4 v11, 0x0

    const/4 v13, 0x1

    move/from16 v6, v16

    goto :goto_3

    .line 952
    :cond_7
    const/4 v11, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 953
    const/4 v6, 0x1

    .line 957
    .end local v16    # "sendUpdatedCaller":Z
    .restart local v6    # "sendUpdatedCaller":Z
    :goto_3
    if-nez v5, :cond_8

    :try_start_6
    iget-boolean v14, v1, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v14, :cond_9

    :cond_8
    iget-object v14, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 958
    invoke-static {v5, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    :cond_9
    iget-boolean v14, v1, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    if-eq v14, v2, :cond_b

    .line 960
    :cond_a
    const/4 v6, 0x1

    .line 962
    :cond_b
    iput-object v5, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 963
    iput-boolean v2, v1, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 964
    move/from16 v14, p5

    :try_start_7
    iput v14, v1, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    .line 966
    iget v15, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    if-eq v15, v4, :cond_c

    .line 967
    iput v4, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 968
    const/4 v6, 0x1

    .line 971
    :cond_c
    iget-object v15, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v15, :cond_d

    .line 972
    iget-object v11, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v11}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_d
    nop

    .line 973
    .local v11, "newVrServicePackage":Ljava/lang/String;
    :goto_4
    iget v15, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 977
    .local v15, "newUserId":I
    invoke-direct {v1, v11, v15, v10, v12}, Lcom/android/server/vr/VrManagerService;->updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V

    .line 980
    iget-object v2, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v2, :cond_e

    if-eqz v6, :cond_e

    .line 981
    invoke-direct/range {p0 .. p0}, Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V

    .line 984
    :cond_e
    if-nez v13, :cond_f

    .line 985
    invoke-direct/range {p0 .. p0}, Lcom/android/server/vr/VrManagerService;->logStateLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 988
    :cond_f
    nop

    .line 990
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 988
    return v0

    .line 990
    .end local v0    # "validUserComponent":Z
    .end local v9    # "goingIntoVrMode":Z
    .end local v10    # "oldVrServicePackage":Ljava/lang/String;
    .end local v11    # "newVrServicePackage":Ljava/lang/String;
    .end local v12    # "oldUserId":I
    .end local v13    # "nothingChanged":Z
    .end local v15    # "newUserId":I
    :catchall_2
    move-exception v0

    goto :goto_5

    .end local v6    # "sendUpdatedCaller":Z
    .restart local v16    # "sendUpdatedCaller":Z
    :catchall_3
    move-exception v0

    move/from16 v14, p5

    move/from16 v6, v16

    goto :goto_5

    .end local v16    # "sendUpdatedCaller":Z
    .restart local v6    # "sendUpdatedCaller":Z
    :catchall_4
    move-exception v0

    move/from16 v14, p5

    move/from16 v16, v6

    :goto_5
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 991
    throw v0
.end method

.method private updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "newVrServicePackage"    # Ljava/lang/String;
    .param p2, "newUserId"    # I
    .param p3, "oldVrServicePackage"    # Ljava/lang/String;
    .param p4, "oldUserId"    # I

    .line 871
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    return-void

    .line 874
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 877
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/vr/VrManagerService;->updateOverlayStateLocked(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 880
    nop

    .line 881
    return-void

    .line 879
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 880
    throw v2
.end method

.method private updateOverlayStateLocked(Ljava/lang/String;II)V
    .locals 7
    .param p1, "exemptedPackage"    # Ljava/lang/String;
    .param p2, "newUserId"    # I
    .param p3, "oldUserId"    # I

    .line 852
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 855
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    if-eq p3, p2, :cond_0

    .line 856
    const/16 v2, 0x18

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    move-object v1, v0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 861
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    new-array v1, v1, [Ljava/lang/String;

    move-object v5, v1

    goto :goto_0

    .line 862
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    move-object v5, v2

    :goto_0
    nop

    .line 864
    .local v5, "exemptions":[Ljava/lang/String;
    const/16 v2, 0x18

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move-object v1, v0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 866
    return-void
.end method

.method private updateVrModeAllowedLocked()V
    .locals 18

    .line 219
    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v7, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v8, v0

    .line 220
    .local v8, "ignoreSleepFlags":Z
    iget-boolean v0, v7, Lcom/android/server/vr/VrManagerService;->mStandby:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v7, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    move v9, v0

    .line 221
    .local v9, "disallowedByStandby":Z
    iget v0, v7, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    if-eqz v8, :cond_3

    :cond_2
    iget-boolean v0, v7, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    if-eqz v0, :cond_3

    if-nez v9, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    move v10, v0

    .line 223
    .local v10, "allowed":Z
    iget-boolean v0, v7, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-eq v0, v10, :cond_7

    .line 224
    iput-boolean v10, v7, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    .line 226
    if-eqz v10, :cond_5

    .line 227
    iget-boolean v0, v7, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_4

    .line 228
    invoke-direct {v7, v1}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    .line 230
    :cond_4
    iget-boolean v0, v7, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v7, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-nez v0, :cond_7

    .line 231
    const/4 v1, 0x1

    iget-object v2, v7, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    goto :goto_4

    .line 236
    :cond_5
    invoke-direct {v7, v2}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    .line 239
    iget-boolean v12, v7, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v12, :cond_6

    iget-object v0, v7, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v0, :cond_6

    .line 240
    new-instance v1, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v13, v7, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    iget-object v0, v7, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 241
    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v15

    iget v0, v7, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v2, v7, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    move-object v11, v1

    move/from16 v16, v0

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v17}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    goto :goto_3

    .line 242
    :cond_6
    const/4 v1, 0x0

    :goto_3
    iput-object v1, v7, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 245
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 248
    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public synthetic lambda$onSwitchUser$0$VrManagerService()V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v1}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 831
    monitor-exit v0

    .line 832
    return-void

    .line 831
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAwakeStateChanged(Z)V
    .locals 1
    .param p1, "isAwake"    # Z

    .line 256
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 257
    return-void
.end method

.method public onBootPhase(I)V
    .locals 11
    .param p1, "phase"    # I

    .line 769
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 770
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 771
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 773
    nop

    .line 774
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 773
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 775
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 777
    .local v1, "looper":Landroid/os/Looper;
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 778
    .local v3, "handler":Landroid/os/Handler;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 779
    .local v10, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-string v4, "enabled_vr_listeners"

    const-string v6, "android.permission.BIND_VR_LISTENER_SERVICE"

    const-string v7, "android.service.vr.VrListenerService"

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    move-object v5, v1

    move-object v9, v10

    invoke-static/range {v2 .. v9}, Lcom/android/server/vr/EnabledComponentsObserver;->build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 785
    invoke-virtual {v2}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 786
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v10    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getDefaultVrComponents()Landroid/util/ArraySet;

    move-result-object v0

    .line 791
    .local v0, "defaultVrComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 792
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    goto :goto_0

    .line 794
    :cond_0
    const-string v1, "VrManagerService"

    const-string v2, "No default vr listener service found."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :goto_0
    nop

    .line 798
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 799
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    new-instance v2, Lcom/android/server/vr/Vr2dDisplay;

    const-class v3, Landroid/app/ActivityManagerInternal;

    .line 801
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    const-class v4, Lcom/android/server/wm/WindowManagerInternal;

    .line 802
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal;

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/server/vr/Vr2dDisplay;-><init>(Landroid/hardware/display/DisplayManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/service/vr/IVrManager;)V

    iput-object v2, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    .line 804
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/vr/Vr2dDisplay;->init(Landroid/content/Context;Z)V

    .line 806
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 807
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/server/vr/VrManagerService$5;

    invoke-direct {v4, p0}, Lcom/android/server/vr/VrManagerService$5;-><init>(Lcom/android/server/vr/VrManagerService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    .line 786
    .end local v0    # "defaultVrComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 817
    :cond_1
    :goto_1
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 846
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v1}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 848
    monitor-exit v0

    .line 849
    return-void

    .line 848
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onEnabledComponentChanged()V
    .locals 11

    .line 501
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 504
    .local v1, "currentUser":I
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v2, v1}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 506
    .local v2, "enabledListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 507
    .local v3, "enabledPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 508
    .local v5, "n":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 509
    .local v6, "pkg":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/vr/VrManagerService;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 510
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 512
    .end local v5    # "n":Landroid/content/ComponentName;
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 513
    :cond_1
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    invoke-virtual {v4, v3}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->update(Ljava/util/Collection;)V

    .line 515
    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-nez v4, :cond_2

    .line 516
    monitor-exit v0

    return-void

    .line 520
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    .line 522
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v4, :cond_3

    .line 523
    monitor-exit v0

    return-void

    .line 527
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v6, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 528
    invoke-virtual {v4}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v4}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v8

    iget v9, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 527
    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 530
    nop

    .end local v1    # "currentUser":I
    .end local v2    # "enabledListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v3    # "enabledPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v0

    .line 531
    return-void

    .line 530
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onKeyguardStateChanged(Z)V
    .locals 2
    .param p1, "isShowing"    # Z

    .line 261
    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 262
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 755
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 756
    :try_start_0
    invoke-static {}, Lcom/android/server/vr/VrManagerService;->initializeNative()V

    .line 757
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 758
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    const-string v0, "ro.boot.vr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    .line 761
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 762
    const-string v0, "persist.vr.use_standby_to_exit_vr_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    .line 763
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    new-instance v1, Lcom/android/server/vr/VrManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 764
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v0}, Landroid/service/vr/IVrManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "vrmanager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/vr/VrManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 765
    return-void

    .line 758
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 821
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v1}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 823
    monitor-exit v0

    .line 824
    return-void

    .line 823
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStopUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 838
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v1}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 840
    monitor-exit v0

    .line 842
    return-void

    .line 840
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 828
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/vr/-$$Lambda$VrManagerService$hhbi29QXTMTcQg-S7n5SpAawSZs;

    invoke-direct {v1, p0}, Lcom/android/server/vr/-$$Lambda$VrManagerService$hhbi29QXTMTcQg-S7n5SpAawSZs;-><init>(Lcom/android/server/vr/VrManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 834
    return-void
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .locals 4
    .param p1, "compatDisplayProp"    # Landroid/app/Vr2dDisplayProperties;

    .line 1320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1322
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    if-eqz v2, :cond_0

    .line 1323
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    invoke-virtual {v2, p1}, Lcom/android/server/vr/Vr2dDisplay;->setVirtualDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1324
    return-void

    .line 1327
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1328
    nop

    .line 1329
    const-string v2, "VrManagerService"

    const-string v3, "Vr2dDisplay is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    return-void

    .line 1327
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1328
    throw v2
.end method
