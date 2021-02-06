.class public Lcom/android/server/wm/DisplayRotation;
.super Ljava/lang/Object;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayRotation$ContentObserverRegister;,
        Lcom/android/server/wm/DisplayRotation$SettingsObserver;,
        Lcom/android/server/wm/DisplayRotation$OrientationListener;,
        Lcom/android/server/wm/DisplayRotation$AllowAllRotations;,
        Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    }
.end annotation


# static fields
.field private static final ACTION_WIFI_DISPLAY_VIDEO:Ljava/lang/String; = "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

.field private static final ALLOW_ALL_ROTATIONS_DISABLED:I = 0x0

.field private static final ALLOW_ALL_ROTATIONS_ENABLED:I = 0x1

.field private static final ALLOW_ALL_ROTATIONS_UNDEFINED:I = -0x1

.field private static final REMOTE_ROTATION_TIMEOUT_MS:I = 0x320

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final isDefaultDisplay:Z

.field private mAllowAllRotations:I

.field private mAllowSeamlessRotationDespiteNavBarMoving:Z

.field private final mCarDockRotation:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentAppOrientation:I

.field private mDefaultFixedToUserRotation:Z

.field private mDeferredRotationPauseCount:I

.field private mDemoHdmiRotation:I

.field private mDemoHdmiRotationLock:Z

.field private mDemoRotation:I

.field private mDemoRotationLock:Z

.field private final mDeskDockRotation:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field private final mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

.field private final mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

.field private mFixedToUserRotation:I

.field private mIsWaitingForRemoteRotation:Z

.field mLandscapeRotation:I

.field private mLastOrientation:I

.field private final mLidOpenRotation:I

.field private final mLock:Ljava/lang/Object;

.field private mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

.field mPortraitRotation:I

.field private final mRemoteRotationCallback:Landroid/view/IDisplayWindowRotationCallback;

.field private mRotatingSeamlessly:Z

.field private mRotation:I

.field private mSeamlessRotationCount:I

.field mSeascapeRotation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

.field private mShowRotationSuggestions:I

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mSupportAutoRotation:Z

.field private final mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

.field private final mUndockedHdmiRotation:I

.field mUpsideDownRotation:I

.field private mUserRotation:I

.field private mUserRotationMode:I

.field private mWifiDisplayConnected:Z

.field private mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiDisplayRotation:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 7
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 252
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v5, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 253
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v6

    .line 252
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "displayPolicy"    # Lcom/android/server/wm/DisplayPolicy;
    .param p4, "displayWindowSettings"    # Lcom/android/server/wm/DisplayWindowSettings;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "lock"    # Ljava/lang/Object;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;-><init>(Lcom/android/server/wm/DisplayRotation$1;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 123
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 182
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 185
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 188
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 201
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 210
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    .line 212
    new-instance v2, Lcom/android/server/wm/DisplayRotation$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayRotation$1;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    .line 220
    new-instance v2, Lcom/android/server/wm/DisplayRotation$2;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayRotation$2;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mRemoteRotationCallback:Landroid/view/IDisplayWindowRotationCallback;

    .line 248
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    .line 249
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    .line 276
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 277
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 278
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 279
    iput-object p4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 280
    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 281
    iput-object p6, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 282
    iget-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 284
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 285
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 286
    const v0, 0x10e006f

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    .line 287
    const v0, 0x10e002e

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    .line 288
    const v0, 0x10e0048

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    .line 289
    const v0, 0x10e00cd

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .line 291
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 293
    .local v0, "uiHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 294
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->setCurrentRotation(I)V

    .line 295
    new-instance v1, Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    .line 303
    new-instance v1, Lcom/android/server/wm/DisplayRotation$4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayRotation$4;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    new-instance v1, Lcom/android/server/wm/DisplayRotation$5;

    invoke-direct {v1, p0, p5}, Lcom/android/server/wm/DisplayRotation$5;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;)V

    .line 369
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 371
    .end local v0    # "uiHandler":Landroid/os/Handler;
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayRotation;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;

    .line 86
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayRotation;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"    # I

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isRotationChoicePossible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayRotation;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"    # I

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isValidRotationChoice(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayRotation;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->sendProposedRotationChangeToStatusBarInternal(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayRotation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;

    .line 86
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayRotation;ILandroid/window/WindowContainerTransaction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/window/WindowContainerTransaction;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->continueRotation(ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayRotation;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/DisplayRotation;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .line 86
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayRotation$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/DisplayRotation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"    # Z

    .line 86
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/wm/DisplayRotation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayRotation;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayRotation;

    .line 86
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return v0
.end method

.method private static allowAllRotationsToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "allowAll"    # I

    .line 1500
    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1508
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1506
    :cond_0
    const-string v0, "true"

    return-object v0

    .line 1504
    :cond_1
    const-string v0, "false"

    return-object v0

    .line 1502
    :cond_2
    const-string v0, "unknown"

    return-object v0
.end method

.method private continueRotation(ILandroid/window/WindowContainerTransaction;)V
    .locals 3
    .param p1, "targetRotation"    # I
    .param p2, "t"    # Landroid/window/WindowContainerTransaction;

    .line 651
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 652
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 658
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    .line 659
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 661
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 662
    if-eqz p2, :cond_1

    .line 663
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 667
    nop

    .line 668
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 669
    return-void

    .line 666
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 667
    nop

    .end local p0    # "this":Lcom/android/server/wm/DisplayRotation;
    .end local p1    # "targetRotation":I
    .end local p2    # "t":Landroid/window/WindowContainerTransaction;
    throw v1

    .line 655
    .restart local p0    # "this":Lcom/android/server/wm/DisplayRotation;
    .restart local p1    # "targetRotation":I
    .restart local p2    # "t":Landroid/window/WindowContainerTransaction;
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 668
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private isAnyPortrait(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .line 1395
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

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

.method private isLandscapeOrSeascape(I)Z
    .locals 1
    .param p1, "rotation"    # I

    .line 1391
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

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

.method private isRotationChoicePossible(I)Z
    .locals 9
    .param p1, "orientation"    # I

    .line 1426
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 1432
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1433
    return v2

    .line 1436
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    .line 1437
    .local v0, "lidState":I
    if-ne v0, v1, :cond_2

    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v3, :cond_2

    .line 1438
    return v2

    .line 1441
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v3

    .line 1442
    .local v3, "dockMode":I
    const/4 v4, 0x0

    .line 1443
    .local v4, "carDockEnablesAccelerometer":Z
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 1444
    return v2

    .line 1447
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1448
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v6

    .line 1449
    .local v6, "deskDockEnablesAccelerometer":Z
    if-eq v3, v1, :cond_4

    const/4 v7, 0x3

    if-eq v3, v7, :cond_4

    const/4 v7, 0x4

    if-ne v3, v7, :cond_5

    :cond_4
    if-nez v6, :cond_5

    .line 1453
    return v2

    .line 1456
    :cond_5
    iget-object v7, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v7

    .line 1457
    .local v7, "hdmiPlugged":Z
    if-eqz v7, :cond_6

    iget-boolean v8, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v8, :cond_6

    .line 1458
    return v2

    .line 1460
    :cond_6
    if-eqz v7, :cond_7

    if-nez v3, :cond_7

    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v8, :cond_7

    .line 1462
    return v2

    .line 1464
    :cond_7
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v8, :cond_8

    .line 1465
    return v2

    .line 1467
    :cond_8
    iget-object v8, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1468
    return v2

    .line 1470
    :cond_9
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v8, :cond_a

    .line 1471
    return v2

    .line 1475
    :cond_a
    const/4 v8, -0x1

    if-eq p1, v8, :cond_b

    if-eq p1, v5, :cond_b

    packed-switch p1, :pswitch_data_0

    .line 1486
    return v2

    .line 1482
    :cond_b
    :pswitch_0
    return v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidRotationChoice(I)Z
    .locals 4
    .param p1, "preferredRotation"    # I

    .line 1400
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 1421
    return v3

    .line 1403
    :pswitch_0
    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 1409
    :pswitch_1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    .line 1413
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v0

    return v0

    .line 1418
    :cond_2
    if-ltz p1, :cond_3

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    if-eq p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$cancelSeamlessRotation$0(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 688
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz v0, :cond_0

    .line 689
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->finishSeamlessRotation(Z)V

    .line 690
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 692
    :cond_0
    return-void
.end method

.method static synthetic lambda$shouldRotateSeamlessly$1(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 763
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    return v0
.end method

.method private needSensorRunning()Z
    .locals 5

    .line 1112
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1115
    return v1

    .line 1118
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 1119
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq v0, v2, :cond_1

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    .line 1125
    :cond_1
    return v3

    .line 1129
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    .line 1130
    .local v0, "dockMode":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1132
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    if-ne v0, v2, :cond_5

    .line 1138
    :cond_4
    return v3

    .line 1141
    :cond_5
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v2, v3, :cond_7

    .line 1153
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-ne v2, v3, :cond_6

    move v1, v3

    :cond_6
    return v1

    .line 1156
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    return v1
.end method

.method private prepareSeamlessRotation()V
    .locals 1

    .line 701
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 703
    return-void
.end method

.method private readRotation(I)I
    .locals 2
    .param p1, "resID"    # I

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .local v0, "rotation":I
    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    .line 388
    .end local v0    # "rotation":I
    goto :goto_0

    .line 384
    .restart local v0    # "rotation":I
    :cond_0
    const/4 v1, 0x3

    return v1

    .line 382
    :cond_1
    const/4 v1, 0x2

    return v1

    .line 380
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 378
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 386
    .end local v0    # "rotation":I
    :catch_0
    move-exception v0

    .line 389
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    .locals 8

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 818
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 819
    .local v0, "forceJumpcut":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 820
    .local v3, "topFullscreen":Lcom/android/server/wm/WindowState;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectRotationAnimation topFullscreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " rotationAnimation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    if-nez v3, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " forceJumpcut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 820
    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_3
    const v4, 0x10a0087

    const v5, 0x10a0086

    if-eqz v0, :cond_4

    .line 825
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v4, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 826
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v5, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 827
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    return-object v1

    .line 829
    :cond_4
    if-eqz v3, :cond_8

    .line 830
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getRotationAnimationHint()I

    move-result v6

    .line 831
    .local v6, "animationHint":I
    if-gez v6, :cond_5

    iget-object v7, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->isTopLayoutFullscreen()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 832
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 834
    :cond_5
    if-eq v6, v1, :cond_7

    const/4 v1, 0x2

    if-eq v6, v1, :cond_6

    const/4 v1, 0x3

    if-eq v6, v1, :cond_7

    .line 846
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    goto :goto_3

    .line 841
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v4, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 842
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v5, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 843
    goto :goto_3

    .line 837
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    const v2, 0x10a0088

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 838
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v5, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 839
    nop

    .line 849
    .end local v6    # "animationHint":I
    :goto_3
    goto :goto_4

    .line 850
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 852
    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    return-object v1
.end method

.method private sendProposedRotationChangeToStatusBarInternal(IZ)V
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "isValid"    # Z

    .line 1491
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_0

    .line 1492
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1494
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_1

    .line 1495
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onProposedRotationChanged(IZ)V

    .line 1497
    :cond_1
    return-void
.end method

.method private startRemoteRotation(II)V
    .locals 4
    .param p1, "fromRotation"    # I
    .param p2, "toRotation"    # I

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayRotationController:Landroid/view/IDisplayWindowRotationController;

    if-nez v0, :cond_0

    .line 636
    return-void

    .line 638
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayRotationController:Landroid/view/IDisplayWindowRotationController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mRemoteRotationCallback:Landroid/view/IDisplayWindowRotationCallback;

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/view/IDisplayWindowRotationController;->onRotateDisplay(IIILandroid/view/IDisplayWindowRotationCallback;)V

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    nop

    .line 648
    return-void

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    .line 646
    return-void
.end method

.method private updateOrientationListenerLw()V
    .locals 19

    .line 1062
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 1067
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v1

    .line 1068
    .local v1, "screenOnEarly":Z
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v2

    .line 1069
    .local v2, "awake":Z
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v3

    .line 1070
    .local v3, "keyguardDrawComplete":Z
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v4

    .line 1074
    .local v4, "windowManagerDrawComplete":Z
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    move v5, v1

    .local v5, "protoLogParam0":Z
    move v7, v2

    .local v7, "protoLogParam1":Z
    iget v8, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    int-to-long v8, v8

    .local v8, "protoLogParam2":J
    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v10, v10, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .local v10, "protoLogParam3":Z
    move v11, v3

    .local v11, "protoLogParam4":Z
    move v12, v4

    .local v12, "protoLogParam5":Z
    sget-object v13, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v15, 0xfdf

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v14, v17

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v14, v6

    const/16 v17, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x4

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x5

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v14, v17

    move/from16 v16, v5

    const/4 v5, 0x0

    const v6, -0x6f5952a9

    .end local v5    # "protoLogParam0":Z
    .local v16, "protoLogParam0":Z
    invoke-static {v13, v6, v15, v5, v14}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1081
    .end local v7    # "protoLogParam1":Z
    .end local v8    # "protoLogParam2":J
    .end local v10    # "protoLogParam3":Z
    .end local v11    # "protoLogParam4":Z
    .end local v12    # "protoLogParam5":Z
    .end local v16    # "protoLogParam0":Z
    :cond_1
    const/4 v5, 0x1

    .line 1085
    .local v5, "disable":Z
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 1086
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->needSensorRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1087
    const/4 v5, 0x0

    .line 1089
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-nez v6, :cond_2

    .line 1096
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->enable(Z)V

    .line 1101
    :cond_2
    if-eqz v5, :cond_3

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-eqz v6, :cond_3

    .line 1102
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->disable()V

    .line 1104
    :cond_3
    return-void

    .line 1064
    .end local v1    # "screenOnEarly":Z
    .end local v2    # "awake":Z
    .end local v3    # "keyguardDrawComplete":Z
    .end local v4    # "windowManagerDrawComplete":Z
    .end local v5    # "disable":Z
    :cond_4
    :goto_0
    return-void
.end method

.method private updateSettings()Z
    .locals 10

    .line 1520
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1521
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 1523
    .local v1, "shouldUpdateRotation":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1524
    const/4 v3, 0x0

    .line 1528
    .local v3, "shouldUpdateOrientationListener":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 1529
    move v4, v7

    goto :goto_0

    .line 1530
    :cond_0
    const-string v4, "show_rotation_suggestions"

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    :goto_0
    nop

    .line 1534
    .local v4, "showRotationSuggestions":I
    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-eq v8, v4, :cond_1

    .line 1535
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    .line 1536
    const/4 v3, 0x1

    .line 1540
    :cond_1
    const-string v8, "user_rotation"

    invoke-static {v0, v8, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 1543
    .local v8, "userRotation":I
    iget v9, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v9, v8, :cond_2

    .line 1544
    iput v8, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 1545
    const/4 v1, 0x1

    .line 1549
    :cond_2
    const-string v9, "accelerometer_rotation"

    .line 1548
    invoke-static {v0, v9, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_3

    .line 1550
    move v5, v7

    goto :goto_1

    .line 1551
    :cond_3
    nop

    :goto_1
    nop

    .line 1552
    .local v5, "userRotationMode":I
    iget v6, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v6, v5, :cond_4

    .line 1553
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 1554
    const/4 v3, 0x1

    .line 1555
    const/4 v1, 0x1

    .line 1558
    :cond_4
    if-eqz v3, :cond_5

    .line 1559
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 1561
    .end local v3    # "shouldUpdateOrientationListener":Z
    .end local v4    # "showRotationSuggestions":I
    .end local v5    # "userRotationMode":I
    .end local v8    # "userRotation":I
    :cond_5
    monitor-exit v2

    .line 1563
    return v1

    .line 1561
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method applyCurrentRotation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->setCurrentRotation(I)V

    .line 463
    :cond_0
    return-void
.end method

.method cancelSeamlessRotation()V
    .locals 3

    .line 684
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    if-nez v0, :cond_0

    .line 685
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$DisplayRotation$XcFKA0vAcDK0Q2CR5rqPDdsewi8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayRotation$XcFKA0vAcDK0Q2CR5rqPDdsewi8;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 693
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 694
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 695
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->finishFixedRotationAnimationIfPossible()V

    .line 696
    return-void
.end method

.method configure(IIII)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "shortSizeDp"    # I
    .param p4, "longSizeDp"    # I

    .line 402
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 403
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x11100bd

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le p1, p2, :cond_1

    .line 404
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 405
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 406
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 408
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_0

    .line 410
    :cond_0
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 411
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_0

    .line 414
    :cond_1
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 415
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    .line 416
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 418
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    goto :goto_0

    .line 420
    :cond_2
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 421
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 427
    :goto_0
    const-string v1, "persist.demo.hdmirotation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "portrait"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 428
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto :goto_1

    .line 430
    :cond_3
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    .line 432
    :goto_1
    const-string v1, "persist.demo.hdmirotationlock"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    .line 436
    const-string v1, "persist.demo.remoterotation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 437
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto :goto_2

    .line 439
    :cond_4
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    .line 441
    :goto_2
    const-string v1, "persist.demo.rotationlock"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    .line 444
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 447
    .local v1, "isCar":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.software.leanback"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 449
    .local v2, "isTv":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-nez v3, :cond_5

    move v3, v4

    goto :goto_3

    :cond_5
    move v3, v5

    .line 451
    .local v3, "forceDesktopMode":Z
    :goto_3
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez v6, :cond_6

    if-eqz v3, :cond_7

    .line 456
    :cond_6
    const-string v6, "config.override_forced_orient"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    .line 457
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayRotation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCurrentAppOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 1569
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1568
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLastOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeferredRotationPauseCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLandscapeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSeascapeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mPortraitRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUpsideDownRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mSupportAutoRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1580
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_0

    .line 1581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1583
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCarDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeskDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserRotationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 1588
    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->userRotationModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1587
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAllowAllRotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->allowAllRotationsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDemoHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDemoHdmiRotationLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUndockedHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLidOpenRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mFixedToUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    return-void
.end method

.method freezeRotation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .line 947
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    move p1, v0

    .line 948
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    .line 949
    return-void
.end method

.method public getCurrentAppOrientation()I
    .locals 1

    .line 1001
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return v0
.end method

.method public getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object v0
.end method

.method public getLandscapeRotation()I
    .locals 1

    .line 985
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0
.end method

.method getLastOrientation()I
    .locals 1

    .line 477
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    return v0
.end method

.method public getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    return-object v0
.end method

.method public getPortraitRotation()I
    .locals 1

    .line 993
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0
.end method

.method getRotation()I
    .locals 1

    .line 472
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    return v0
.end method

.method public getSeascapeRotation()I
    .locals 1

    .line 989
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v0
.end method

.method public getUpsideDownRotation()I
    .locals 1

    .line 997
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v0
.end method

.method public getUserRotation()I
    .locals 1

    .line 1013
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v0
.end method

.method public getUserRotationMode()I
    .locals 1

    .line 1017
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    return v0
.end method

.method hasSeamlessRotatingWindow()Z
    .locals 1

    .line 710
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFixedToUserRotation()Z
    .locals 3

    .line 965
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 971
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    return v0

    .line 969
    :cond_0
    return v1

    .line 967
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isLandscapeOrSeascape()Z
    .locals 2

    .line 1385
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayRotation()I

    move-result v0

    .line 1386
    .local v0, "rot":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    return v1
.end method

.method isRotatingSeamlessly()Z
    .locals 1

    .line 706
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    return v0
.end method

.method isRotationFrozen()Z
    .locals 5

    .line 956
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 957
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, -0x2

    const-string v4, "accelerometer_rotation"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method isWaitingForRemoteRotation()Z
    .locals 1

    .line 631
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    return v0
.end method

.method public synthetic lambda$onSeamlessRotationTimeout$2$DisplayRotation([ZLcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "isLayoutNeeded"    # [Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 796
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v0, :cond_0

    .line 797
    return-void

    .line 799
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    .line 800
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 801
    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowState;->finishSeamlessRotation(Z)V

    .line 802
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/DisplayRotation;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 803
    return-void
.end method

.method markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V
    .locals 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "seamlesslyRotated"    # Z

    .line 771
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eq p2, v0, :cond_4

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 775
    :cond_0
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 776
    if-eqz p2, :cond_1

    .line 777
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    goto :goto_0

    .line 779
    :cond_1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 781
    :goto_0
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    if-nez v0, :cond_3

    .line 782
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v2, -0x2256254a

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 785
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 786
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->finishFixedRotationAnimationIfPossible()V

    .line 788
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    .line 790
    :cond_3
    return-void

    .line 772
    :cond_4
    :goto_1
    return-void
.end method

.method needsUpdate()Z
    .locals 3

    .line 1167
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 1168
    .local v0, "oldRotation":I
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v1

    .line 1169
    .local v1, "rotation":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onDisplayRemoved()V
    .locals 1

    .line 260
    new-instance v0, Lcom/android/server/wm/DisplayRotation$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayRotation$3;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    .line 268
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 269
    return-void
.end method

.method onSeamlessRotationTimeout()V
    .locals 5

    .line 793
    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 795
    .local v1, "isLayoutNeeded":[Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$DisplayRotation$U-vCBL3JcMFTFCBOM9boFL8nSM0;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wm/-$$Lambda$DisplayRotation$U-vCBL3JcMFTFCBOM9boFL8nSM0;-><init>(Lcom/android/server/wm/DisplayRotation;[Z)V

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 805
    aget-boolean v0, v1, v2

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 808
    :cond_0
    return-void
.end method

.method public onUserSwitch()V
    .locals 2

    .line 1513
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    if-eqz v0, :cond_0

    .line 1514
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->onChange(Z)V

    .line 1516
    :cond_0
    return-void
.end method

.method pause()V
    .locals 1

    .line 1035
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    .line 1036
    return-void
.end method

.method prepareNormalRotationAnimation()V
    .locals 5

    .line 672
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->cancelSeamlessRotation()V

    .line 673
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    move-result-object v0

    .line 674
    .local v0, "anim":Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    iget v3, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IILcom/android/server/wm/DisplayContent;)V

    .line 675
    return-void
.end method

.method respectAppRequestedOrientation()Z
    .locals 1

    .line 981
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method restoreSettings(III)V
    .locals 4
    .param p1, "userRotationMode"    # I
    .param p2, "userRotation"    # I
    .param p3, "fixedToUserRotation"    # I

    .line 883
    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 886
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    .line 887
    return-void

    .line 889
    :cond_0
    const-string v0, " for "

    const-string v1, "WindowManager"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to restore an invalid user rotation mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 p1, 0x0

    .line 895
    :cond_1
    if-ltz p2, :cond_2

    const/4 v2, 0x3

    if-le p2, v2, :cond_3

    .line 896
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to restore an invalid user rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 p2, 0x0

    .line 900
    :cond_3
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 901
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 902
    return-void
.end method

.method resume()V
    .locals 1

    .line 1040
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-gtz v0, :cond_0

    .line 1041
    return-void

    .line 1044
    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    .line 1045
    if-nez v0, :cond_1

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    .line 1048
    :cond_1
    return-void
.end method

.method rotationForOrientation(II)I
    .locals 24
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I

    .line 1185
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v7, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v3, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    int-to-long v12, v1

    .local v12, "protoLogParam1":J
    invoke-static/range {p2 .. p2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .local v14, "protoLogParam2":Ljava/lang/String;
    int-to-long v4, v2

    .local v4, "protoLogParam3":J
    iget v15, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v15}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .local v18, "protoLogParam4":Ljava/lang/String;
    iget v15, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    int-to-long v8, v15

    .local v8, "protoLogParam5":J
    iget v15, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v15, v11, :cond_0

    const-string v15, "USER_ROTATION_LOCKED"

    goto :goto_0

    :cond_0
    const-string v15, ""

    :goto_0
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .local v21, "protoLogParam6":Ljava/lang/String;
    sget-object v15, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v6, v11

    const/16 v20, 0x2

    aput-object v14, v6, v20

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v22, 0x3

    aput-object v23, v6, v22

    const/16 v19, 0x4

    aput-object v18, v6, v19

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v16, 0x5

    aput-object v23, v6, v16

    const/16 v17, 0x6

    aput-object v21, v6, v17

    const v7, 0xc0e4c8a

    const/16 v10, 0x444

    const/4 v11, 0x0

    invoke-static {v15, v7, v10, v11, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1195
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam3":J
    .end local v8    # "protoLogParam5":J
    .end local v12    # "protoLogParam1":J
    .end local v14    # "protoLogParam2":Ljava/lang/String;
    .end local v18    # "protoLogParam4":Ljava/lang/String;
    .end local v21    # "protoLogParam6":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    new-array v4, v3, [I

    const/16 v3, 0x3e

    const/4 v5, 0x0

    aput v3, v4, v5

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isShuttingDown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1196
    const-string v3, "WindowManager"

    const-string v4, "Power off return ROTATION_0"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    return v5

    .line 1200
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1201
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v3

    .line 1204
    :cond_3
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    .line 1205
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->getProposedRotation()I

    move-result v3

    goto :goto_1

    .line 1206
    :cond_4
    move v3, v4

    :goto_1
    nop

    .line 1207
    .local v3, "sensorRotation":I
    if-gez v3, :cond_5

    .line 1208
    move/from16 v3, p2

    .line 1211
    :cond_5
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v5

    .line 1212
    .local v5, "lidState":I
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v6

    .line 1213
    .local v6, "dockMode":I
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v7

    .line 1214
    .local v7, "hdmiPlugged":Z
    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1215
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v8

    .line 1216
    .local v8, "carDockEnablesAccelerometer":Z
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1217
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v9

    .line 1220
    .local v9, "deskDockEnablesAccelerometer":Z
    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/16 v11, 0xc

    const/16 v12, 0xb

    if-nez v10, :cond_6

    .line 1223
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .local v4, "preferredRotation":I
    goto/16 :goto_7

    .line 1224
    .end local v4    # "preferredRotation":I
    :cond_6
    const/4 v10, 0x1

    if-ne v5, v10, :cond_7

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v10, :cond_7

    .line 1226
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 1227
    .end local v4    # "preferredRotation":I
    :cond_7
    const/4 v10, 0x2

    if-ne v6, v10, :cond_a

    if-nez v8, :cond_8

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    if-ltz v10, :cond_a

    .line 1232
    :cond_8
    if-eqz v8, :cond_9

    move v4, v3

    goto :goto_2

    :cond_9
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    .restart local v4    # "preferredRotation":I
    :goto_2
    goto/16 :goto_7

    .line 1233
    .end local v4    # "preferredRotation":I
    :cond_a
    const/4 v10, 0x1

    if-eq v6, v10, :cond_b

    const/4 v10, 0x3

    if-eq v6, v10, :cond_b

    const/4 v10, 0x4

    if-ne v6, v10, :cond_c

    :cond_b
    if-nez v9, :cond_1d

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    if-ltz v10, :cond_c

    goto/16 :goto_6

    .line 1241
    :cond_c
    if-nez v7, :cond_d

    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    if-eqz v10, :cond_e

    :cond_d
    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v10, :cond_e

    .line 1244
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 1245
    .end local v4    # "preferredRotation":I
    :cond_e
    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    if-eqz v10, :cond_f

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    if-le v10, v4, :cond_f

    .line 1247
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 1248
    .end local v4    # "preferredRotation":I
    :cond_f
    if-eqz v7, :cond_10

    if-nez v6, :cond_10

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v10, :cond_10

    .line 1254
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 1255
    .end local v4    # "preferredRotation":I
    :cond_10
    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v10, :cond_11

    .line 1258
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 1259
    .end local v4    # "preferredRotation":I
    :cond_11
    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1264
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 1265
    .end local v4    # "preferredRotation":I
    :cond_12
    const/16 v10, 0xe

    if-ne v1, v10, :cond_13

    .line 1267
    move/from16 v4, p2

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 1268
    .end local v4    # "preferredRotation":I
    :cond_13
    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v10, :cond_14

    .line 1271
    const/4 v4, -0x1

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_7

    .line 1272
    .end local v4    # "preferredRotation":I
    :cond_14
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/16 v13, 0xd

    const/16 v14, 0xa

    if-nez v10, :cond_15

    const/4 v10, 0x2

    if-eq v1, v10, :cond_18

    if-eq v1, v4, :cond_18

    if-eq v1, v12, :cond_18

    if-eq v1, v11, :cond_18

    if-eq v1, v13, :cond_18

    :cond_15
    const/4 v10, 0x4

    if-eq v1, v10, :cond_18

    if-eq v1, v14, :cond_18

    const/4 v10, 0x6

    if-eq v1, v10, :cond_18

    const/4 v10, 0x7

    if-ne v1, v10, :cond_16

    goto :goto_3

    .line 1300
    :cond_16
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_17

    const/4 v4, 0x5

    if-eq v1, v4, :cond_17

    if-eqz v1, :cond_17

    if-eq v1, v10, :cond_17

    const/16 v4, 0x8

    if-eq v1, v4, :cond_17

    const/16 v4, 0x9

    if-eq v1, v4, :cond_17

    .line 1314
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .restart local v4    # "preferredRotation":I
    goto :goto_7

    .line 1318
    .end local v4    # "preferredRotation":I
    :cond_17
    const/4 v4, -0x1

    .restart local v4    # "preferredRotation":I
    goto :goto_7

    .line 1284
    .end local v4    # "preferredRotation":I
    :cond_18
    :goto_3
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    if-ne v10, v4, :cond_1a

    .line 1287
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x111000d

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1289
    const/4 v4, 0x1

    goto :goto_4

    .line 1290
    :cond_19
    const/4 v4, 0x0

    :goto_4
    iput v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 1292
    :cond_1a
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v10, 0x1

    if-eq v4, v10, :cond_1c

    if-eq v1, v14, :cond_1c

    if-ne v1, v13, :cond_1b

    goto :goto_5

    .line 1298
    :cond_1b
    move/from16 v4, p2

    .restart local v4    # "preferredRotation":I
    goto :goto_7

    .line 1296
    .end local v4    # "preferredRotation":I
    :cond_1c
    :goto_5
    move v4, v3

    .restart local v4    # "preferredRotation":I
    goto :goto_7

    .line 1240
    .end local v4    # "preferredRotation":I
    :cond_1d
    :goto_6
    if-eqz v9, :cond_1e

    move v4, v3

    goto :goto_7

    :cond_1e
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    .line 1321
    .restart local v4    # "preferredRotation":I
    :goto_7
    if-eqz v1, :cond_2a

    const/4 v10, 0x1

    if-eq v1, v10, :cond_28

    if-eq v1, v12, :cond_25

    if-eq v1, v11, :cond_22

    packed-switch v1, :pswitch_data_0

    .line 1375
    if-ltz v4, :cond_1f

    .line 1376
    return v4

    .line 1378
    :cond_1f
    const/4 v10, 0x0

    return v10

    .line 1338
    :pswitch_0
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 1339
    return v4

    .line 1341
    :cond_20
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v10

    .line 1345
    :pswitch_1
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 1346
    return v4

    .line 1348
    :cond_21
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v10

    .line 1364
    :cond_22
    :pswitch_2
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 1365
    return v4

    .line 1367
    :cond_23
    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1368
    return v2

    .line 1370
    :cond_24
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v10

    .line 1353
    :cond_25
    :pswitch_3
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 1354
    return v4

    .line 1356
    :cond_26
    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v10

    if-eqz v10, :cond_27

    .line 1357
    return v2

    .line 1359
    :cond_27
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v10

    .line 1324
    :cond_28
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 1325
    return v4

    .line 1327
    :cond_29
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v10

    .line 1331
    :cond_2a
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 1332
    return v4

    .line 1334
    :cond_2b
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v10

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setFixedToUserRotation(I)V
    .locals 3
    .param p1, "fixedToUserRotation"    # I

    .line 905
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    if-ne v0, p1, :cond_0

    .line 906
    return-void

    .line 909
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 910
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V

    .line 911
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 913
    return-void
.end method

.method setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .line 467
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 468
    return-void
.end method

.method setUserRotation(II)V
    .locals 5
    .param p1, "userRotationMode"    # I
    .param p2, "userRotation"    # I

    .line 917
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 921
    .local v0, "res":Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 922
    .local v1, "accelerometerRotation":I
    :goto_0
    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 924
    const-string v2, "user_rotation"

    invoke-static {v0, v2, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 926
    return-void

    .line 929
    .end local v0    # "res":Landroid/content/ContentResolver;
    .end local v1    # "accelerometerRotation":I
    :cond_1
    const/4 v0, 0x0

    .line 930
    .local v0, "changed":Z
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v3, p1, :cond_2

    .line 931
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 932
    const/4 v0, 0x1

    .line 934
    :cond_2
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v3, p2, :cond_3

    .line 935
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 936
    const/4 v0, 0x1

    .line 938
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setUserRotation(Lcom/android/server/wm/DisplayContent;II)V

    .line 940
    if-eqz v0, :cond_4

    .line 941
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 944
    :cond_4
    return-void
.end method

.method shouldRotateSeamlessly(IIZ)Z
    .locals 5
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I
    .param p3, "forceUpdate"    # Z

    .line 717
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 718
    return v1

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 722
    .local v0, "w":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v0, v3, :cond_1

    goto :goto_3

    .line 728
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 736
    :cond_2
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    if-eq p1, v3, :cond_9

    if-ne p2, v3, :cond_3

    goto :goto_1

    .line 743
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v3

    if-nez v3, :cond_4

    .line 744
    return v2

    .line 749
    :cond_4
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v3

    if-nez v3, :cond_5

    .line 750
    return v2

    .line 755
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 756
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    .line 763
    :cond_6
    if-nez p3, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    sget-object v4, Lcom/android/server/wm/-$$Lambda$DisplayRotation$lsr6xPkBu86tvqZ1VLc3Gk1VT6c;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayRotation$lsr6xPkBu86tvqZ1VLc3Gk1VT6c;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 764
    return v2

    .line 767
    :cond_7
    return v1

    .line 757
    :cond_8
    :goto_0
    return v2

    .line 737
    :cond_9
    :goto_1
    return v2

    .line 729
    :cond_a
    :goto_2
    return v2

    .line 723
    :cond_b
    :goto_3
    return v2
.end method

.method thawRotation()V
    .locals 2

    .line 952
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    .line 953
    return-void
.end method

.method updateOrientation(IZ)Z
    .locals 1
    .param p1, "newOrientation"    # I
    .param p2, "forceUpdate"    # Z

    .line 481
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 482
    const/4 v0, 0x0

    return v0

    .line 484
    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 485
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_1

    .line 486
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 487
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_1

    .line 488
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 491
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result v0

    return v0
.end method

.method public updateOrientationListener()V
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1022
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 1023
    monitor-exit v0

    .line 1024
    return-void

    .line 1023
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateRotationAndSendNewConfigIfChanged()Z
    .locals 2

    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result v0

    .line 501
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 504
    :cond_0
    return v0
.end method

.method updateRotationUnchecked(Z)Z
    .locals 29
    .param p1, "forceUpdate"    # Z

    .line 523
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 524
    .local v2, "displayId":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_6

    .line 525
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-lez v5, :cond_1

    .line 528
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0x593f0c8c

    move-object v7, v3

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v3, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 529
    :cond_0
    return v4

    .line 538
    :cond_1
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 540
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v5

    .line 541
    .local v5, "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/android/server/wm/IScreenRotationAnimation;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 545
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x11755f60

    move-object v8, v3

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v4, v3, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 546
    :cond_2
    return v4

    .line 548
    :cond_3
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v6, :cond_5

    .line 552
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x7410831a

    move-object v8, v3

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v4, v3, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 554
    :cond_4
    return v4

    .line 557
    :cond_5
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    .line 558
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->isTopFixedOrientationRecentsAnimating()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 563
    return v4

    .line 567
    .end local v5    # "screenRotationAnimation":Lcom/android/server/wm/IScreenRotationAnimation;
    :cond_6
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v5, :cond_8

    .line 569
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v6, -0x429d369a

    move-object v7, v3

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v3, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 570
    :cond_7
    return v4

    .line 573
    :cond_8
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 574
    .local v5, "oldRotation":I
    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 575
    .local v6, "lastOrientation":I
    invoke-virtual {v0, v6, v5}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v7

    .line 576
    .local v7, "rotation":I
    sget-boolean v8, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v8, :cond_9

    invoke-static {v7}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    int-to-long v14, v7

    .local v14, "protoLogParam1":J
    int-to-long v9, v2

    .local v9, "protoLogParam2":J
    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .local v18, "protoLogParam3":Ljava/lang/String;
    int-to-long v11, v6

    .local v11, "protoLogParam4":J
    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-wide/from16 v23, v14

    .end local v14    # "protoLogParam1":J
    .local v21, "protoLogParam5":Ljava/lang/String;
    .local v23, "protoLogParam1":J
    int-to-long v13, v5

    .local v13, "protoLogParam6":J
    sget-object v15, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v4

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const/16 v22, 0x1

    aput-object v26, v3, v22

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const/16 v20, 0x2

    aput-object v26, v3, v20

    const/16 v19, 0x3

    aput-object v18, v3, v19

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const/16 v17, 0x4

    aput-object v26, v3, v17

    const/16 v16, 0x5

    aput-object v21, v3, v16

    const/16 v26, 0x6

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v3, v26

    move-object/from16 v25, v8

    move-wide/from16 v27, v9

    const v4, -0x4b4cac2a

    const/16 v8, 0x1114

    const/4 v9, 0x0

    .end local v8    # "protoLogParam0":Ljava/lang/String;
    .end local v9    # "protoLogParam2":J
    .local v25, "protoLogParam0":Ljava/lang/String;
    .local v27, "protoLogParam2":J
    invoke-static {v15, v4, v8, v9, v3}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 584
    .end local v11    # "protoLogParam4":J
    .end local v13    # "protoLogParam6":J
    .end local v18    # "protoLogParam3":Ljava/lang/String;
    .end local v21    # "protoLogParam5":Ljava/lang/String;
    .end local v23    # "protoLogParam1":J
    .end local v25    # "protoLogParam0":Ljava/lang/String;
    .end local v27    # "protoLogParam2":J
    :cond_9
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v3, :cond_a

    int-to-long v3, v2

    .local v3, "protoLogParam0":J
    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam1":Ljava/lang/String;
    int-to-long v9, v6

    .restart local v9    # "protoLogParam2":J
    invoke-static {v7}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam3":Ljava/lang/String;
    int-to-long v12, v7

    .local v12, "protoLogParam4":J
    sget-object v14, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v23, 0x0

    aput-object v16, v15, v23

    const/16 v16, 0x1

    aput-object v8, v15, v16

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v20, 0x2

    aput-object v16, v15, v20

    const/16 v16, 0x3

    aput-object v11, v15, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x4

    aput-object v16, v15, v17

    move-wide/from16 v23, v3

    move-object/from16 v16, v8

    const v3, -0x2da92224

    const/16 v4, 0x111

    const/4 v8, 0x0

    .end local v3    # "protoLogParam0":J
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    .local v16, "protoLogParam1":Ljava/lang/String;
    .local v23, "protoLogParam0":J
    invoke-static {v14, v3, v4, v8, v15}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 589
    .end local v9    # "protoLogParam2":J
    .end local v11    # "protoLogParam3":Ljava/lang/String;
    .end local v12    # "protoLogParam4":J
    .end local v16    # "protoLogParam1":Ljava/lang/String;
    .end local v23    # "protoLogParam0":J
    :cond_a
    if-ne v5, v7, :cond_b

    .line 591
    const/4 v3, 0x0

    return v3

    .line 594
    :cond_b
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v3, :cond_c

    int-to-long v3, v2

    .restart local v3    # "protoLogParam0":J
    int-to-long v8, v7

    .local v8, "protoLogParam1":J
    int-to-long v10, v5

    .local v10, "protoLogParam2":J
    int-to-long v12, v6

    .local v12, "protoLogParam3":J
    sget-object v14, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v21, 0x0

    aput-object v17, v15, v21

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v21, 0x1

    aput-object v17, v15, v21

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move/from16 v21, v2

    const/4 v2, 0x2

    .end local v2    # "displayId":I
    .local v21, "displayId":I
    aput-object v17, v15, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v19, 0x3

    aput-object v17, v15, v19

    move-wide/from16 v16, v3

    const v2, -0x6720172c

    const/16 v3, 0x55

    const/4 v4, 0x0

    .end local v3    # "protoLogParam0":J
    .local v16, "protoLogParam0":J
    invoke-static {v14, v2, v3, v4, v15}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v8    # "protoLogParam1":J
    .end local v10    # "protoLogParam2":J
    .end local v12    # "protoLogParam3":J
    .end local v16    # "protoLogParam0":J
    .end local v21    # "displayId":I
    .restart local v2    # "displayId":I
    :cond_c
    move/from16 v21, v2

    .line 598
    .end local v2    # "displayId":I
    .restart local v21    # "displayId":I
    :goto_0
    invoke-static {v7, v5}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    .line 599
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    goto :goto_1

    .line 598
    :cond_d
    const/4 v3, 0x1

    .line 602
    :goto_1
    iput v7, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 604
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 605
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xb

    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v2, v3, v4, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    .line 608
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 610
    invoke-virtual {v0, v5, v7, v1}, Lcom/android/server/wm/DisplayRotation;->shouldRotateSeamlessly(IIZ)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 614
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->prepareSeamlessRotation()V

    goto :goto_2

    .line 616
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->prepareNormalRotationAnimation()V

    .line 620
    :goto_2
    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-direct {v0, v5, v2}, Lcom/android/server/wm/DisplayRotation;->startRemoteRotation(II)V

    .line 622
    const/4 v2, 0x1

    return v2
.end method

.method updateUserDependentConfiguration(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "currentUserRes"    # Landroid/content/res/Resources;

    .line 397
    nop

    .line 398
    const v0, 0x1110013

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 399
    return-void
.end method

.method validateRotationAnimation(IIZ)Z
    .locals 4
    .param p1, "exitAnimId"    # I
    .param p2, "enterAnimId"    # I
    .param p3, "forceDefault"    # Z

    .line 868
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 878
    return v0

    .line 872
    :pswitch_0
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 873
    return v1

    .line 875
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    move-result-object v2

    .line 876
    .local v2, "anim":Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    iget v3, v2, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    if-ne p1, v3, :cond_1

    iget v3, v2, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x10a0087
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
