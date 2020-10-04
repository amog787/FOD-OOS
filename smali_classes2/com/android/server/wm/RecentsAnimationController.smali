.class public Lcom/android/server/wm/RecentsAnimationController;
.super Ljava/lang/Object;
.source "RecentsAnimationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;,
        Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;,
        Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
    }
.end annotation


# static fields
.field private static final FAILSAFE_DELAY:J = 0x3e8L

.field public static final REORDER_KEEP_IN_PLACE:I = 0x0

.field public static final REORDER_MOVE_TO_ORIGINAL_POSITION:I = 0x2

.field public static final REORDER_MOVE_TO_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

.field private final mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

.field private mCancelOnNextTransitionStart:Z

.field private mCancelWithDeferredScreenshot:Z

.field private mCanceled:Z

.field private final mController:Landroid/view/IRecentsAnimationController;

.field private final mDisplayId:I

.field private final mFailsafeRunnable:Ljava/lang/Runnable;

.field private mInputConsumerEnabled:Z

.field private mLinkedToDeathOfRunner:Z

.field final mLock:Ljava/lang/Object;

.field private mMinimizedHomeBounds:Landroid/graphics/Rect;

.field private final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingStart:Z

.field mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mRunner:Landroid/view/IRecentsAnimationRunner;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSplitScreenMinimized:Z

.field private final mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mTargetActivityType:I

.field private mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const-class v0, Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;I)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "remoteAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;
    .param p3, "callbacks"    # Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
    .param p4, "displayId"    # I

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$4jQqaDgSmtGCjbUJiVoDh_jr9rY;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$4jQqaDgSmtGCjbUJiVoDh_jr9rY;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mMinimizedHomeBounds:Landroid/graphics/Rect;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 136
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$1;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 153
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$2;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mController:Landroid/view/IRecentsAnimationController;

    .line 309
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 310
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 311
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    .line 312
    iput p4, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    .line 313
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RecentsAnimationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 75
    iget v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/RecentsAnimationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 75
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/RecentsAnimationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 75
    iget v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wm/RecentsAnimationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;
    .param p1, "x1"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/wm/RecentsAnimationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;
    .param p1, "x1"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mSplitScreenMinimized:Z

    return p1
.end method

.method private cancelAnimation(IZZLjava/lang/String;)V
    .locals 5
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "runSynchronously"    # Z
    .param p3, "screenshot"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 489
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAnimation(): reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " runSynchronously="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 492
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-eqz v1, :cond_1

    .line 494
    monitor-exit v0

    return-void

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 497
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    const/4 v2, 0x0

    if-eqz p3, :cond_2

    .line 501
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$500(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 502
    .local v3, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->screenshotRecentTask(Lcom/android/server/wm/Task;IZ)V

    .line 503
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v4, v1}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 506
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v1, v2}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 509
    goto :goto_0

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v3, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v4, "Failed to cancel recents animation"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    invoke-interface {v1, p1, p2, v2}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZZ)V

    .line 513
    monitor-exit v0

    .line 514
    return-void

    .line 513
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private isAnimatingApp(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 5
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 704
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 705
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$500(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 706
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_1

    .line 707
    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 708
    .local v4, "app":Lcom/android/server/wm/AppWindowToken;
    if-ne v4, p1, :cond_0

    .line 709
    return v1

    .line 706
    .end local v4    # "app":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 704
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 713
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isTargetOverWallpaper()Z
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_0

    .line 689
    const/4 v0, 0x0

    return v0

    .line 691
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v0

    return v0
.end method

.method private linkToDeathOfRunner()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 613
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v0}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    .line 617
    :cond_0
    return-void
.end method

.method private unlinkToDeathOfRunner()V
    .locals 2

    .line 620
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v0}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 622
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    .line 624
    :cond_0
    return-void
.end method


# virtual methods
.method addAnimation(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/AnimationAdapter;
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isRecentTaskInvisible"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 394
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAnimation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;-><init>(Lcom/android/server/wm/RecentsAnimationController;Lcom/android/server/wm/Task;Z)V

    .line 397
    .local v0, "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/server/wm/Task;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 398
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    .line 399
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    return-object v0
.end method

.method public binderDied()V
    .locals 3

    .line 628
    const/4 v0, 0x2

    const-string v1, "binderDied"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    .line 633
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v1

    .line 634
    .local v1, "inputMonitor":Lcom/android/server/wm/InputMonitor;
    const-string v2, "recents_animation_input_consumer"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z

    .line 635
    nop

    .end local v1    # "inputMonitor":Lcom/android/server/wm/InputMonitor;
    monitor-exit v0

    .line 636
    return-void

    .line 635
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method cancelAnimation(ILjava/lang/String;)V
    .locals 1
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "reason"    # Ljava/lang/String;

    .line 475
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZZLjava/lang/String;)V

    .line 476
    return-void
.end method

.method cancelAnimationSynchronously(ILjava/lang/String;)V
    .locals 2
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "reason"    # Ljava/lang/String;

    .line 479
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZZLjava/lang/String;)V

    .line 480
    return-void
.end method

.method cancelAnimationWithScreenShot()V
    .locals 3

    .line 483
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "stackOrderChanged"

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZZLjava/lang/String;)V

    .line 485
    return-void
.end method

.method cancelOnNextTransitionStart()V
    .locals 1

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    .line 527
    return-void
.end method

.method checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V
    .locals 2
    .param p1, "wallpaperController"    # Lcom/android/server/wm/WallpaperController;

    .line 639
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    if-eqz v0, :cond_2

    .line 640
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 643
    .local v0, "wallpaperReady":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 644
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->startAnimation()V

    .line 647
    .end local v0    # "wallpaperReady":Z
    :cond_2
    return-void
.end method

.method cleanupAnimation(I)V
    .locals 4
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 565
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupAnimation(): Notify animation finished mPendingAnimations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 567
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reorderMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 569
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 570
    .local v2, "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    if-eq p1, v1, :cond_1

    if-nez p1, :cond_2

    .line 571
    :cond_1
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$500(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->dontAnimateDimExit()V

    .line 573
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 568
    .end local v2    # "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 577
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 580
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->unlinkToDeathOfRunner()V

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 582
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 585
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v2, :cond_4

    .line 586
    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 587
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 591
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    .line 592
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    .line 593
    .local v0, "inputMonitor":Lcom/android/server/wm/InputMonitor;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 597
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_6

    .line 598
    if-eq p1, v1, :cond_5

    if-nez p1, :cond_6

    .line 599
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    .line 600
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 605
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onRecentsAnimationStateChanged(Z)V

    .line 606
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPendingStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPendingAnimations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInputConsumerEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSplitScreenMinimized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mSplitScreenMinimized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTargetAppToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTargetOverWallpaper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public initialize(ILandroid/util/SparseBooleanArray;)V
    .locals 2
    .param p1, "targetActivityType"    # I
    .param p2, "recentTaskIds"    # Landroid/util/SparseBooleanArray;

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->initialize(Lcom/android/server/wm/DisplayContent;ILandroid/util/SparseBooleanArray;)V

    .line 318
    return-void
.end method

.method initialize(Lcom/android/server/wm/DisplayContent;ILandroid/util/SparseBooleanArray;)V
    .locals 10
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "targetActivityType"    # I
    .param p3, "recentTaskIds"    # Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 327
    iput p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityType:I

    .line 328
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 332
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 333
    .local v0, "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 334
    .local v2, "targetStack":Lcom/android/server/wm/TaskStack;
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 335
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 336
    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskStack;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 337
    .local v5, "t":Lcom/android/server/wm/Task;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 338
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .end local v5    # "t":Lcom/android/server/wm/Task;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 342
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 343
    .local v4, "taskCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 344
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 345
    .local v6, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    .line 346
    .local v7, "config":Landroid/app/WindowConfiguration;
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v8

    if-nez v8, :cond_3

    .line 347
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 348
    goto :goto_2

    .line 350
    :cond_2
    iget v8, v6, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v3

    invoke-virtual {p0, v6, v8}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/AnimationAdapter;

    .line 343
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "config":Landroid/app/WindowConfiguration;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 354
    .end local v5    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_5

    .line 355
    const-string v1, "initialize-noVisibleTasks"

    invoke-virtual {p0, v6, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 356
    return-void

    .line 360
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->linkToDeathOfRunner()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    nop

    .line 367
    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 369
    .local v1, "recentsComponentAppToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_7

    .line 370
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setHomeApp("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 370
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_6
    iput-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 373
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 374
    iget v5, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 375
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 380
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    .line 381
    .local v5, "dockedStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v6

    .line 382
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 383
    if-nez v5, :cond_8

    const/4 v8, -0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v8

    :goto_3
    iget-object v9, p0, Lcom/android/server/wm/RecentsAnimationController;->mMinimizedHomeBounds:Landroid/graphics/Rect;

    .line 381
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/DockedStackDividerController;->getHomeStackBoundsInDockedMode(Landroid/content/res/Configuration;ILandroid/graphics/Rect;)V

    .line 386
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 389
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v6, v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onRecentsAnimationStateChanged(Z)V

    .line 390
    return-void

    .line 361
    .end local v1    # "recentsComponentAppToken":Lcom/android/server/wm/AppWindowToken;
    .end local v5    # "dockedStack":Lcom/android/server/wm/TaskStack;
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "initialize-failedToLinkToDeath"

    invoke-virtual {p0, v6, v3}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 363
    return-void
.end method

.method isAnimatingTask(Lcom/android/server/wm/Task;)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 695
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 696
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$500(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 697
    return v1

    .line 695
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 700
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isSplitScreenMinimized()Z
    .locals 1

    .line 650
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mSplitScreenMinimized:Z

    return v0
.end method

.method isTargetApp(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 684
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 654
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 654
    :goto_0
    return v0
.end method

.method public synthetic lambda$new$0$RecentsAnimationController()V
    .locals 2

    .line 97
    const/4 v0, 0x2

    const-string v1, "failSafeRunnable"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$screenshotRecentTask$1$RecentsAnimationController(IZ)V
    .locals 2
    .param p1, "reorderMode"    # I
    .param p2, "runSynchronously"    # Z

    .line 554
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_0

    .line 555
    sget-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v1, "mRecentScreenshotAnimator finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZZ)V

    .line 559
    return-void
.end method

.method onTransitionStart()V
    .locals 1

    .line 538
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 539
    return-void

    .line 542
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    if-eqz v0, :cond_1

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    .line 544
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationWithScreenShot()V

    .line 546
    :cond_1
    return-void
.end method

.method removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V
    .locals 3
    .param p1, "taskAdapter"    # Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 405
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAnimation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$500(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$500(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 408
    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$1000(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V

    .line 409
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 410
    return-void
.end method

.method scheduleFailsafe()V
    .locals 4

    .line 609
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 610
    return-void
.end method

.method screenshotRecentTask(Lcom/android/server/wm/Task;IZ)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p3, "runSynchronously"    # Z

    .line 549
    invoke-static {p1}, Lcom/android/server/wm/TaskScreenshotAnimatable;->create(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskScreenshotAnimatable;

    move-result-object v0

    .line 550
    .local v0, "animatable":Lcom/android/server/wm/TaskScreenshotAnimatable;
    if-eqz v0, :cond_0

    .line 551
    new-instance v1, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$UtmXbQuPny5O24HGUrj6wbS-P2A;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$UtmXbQuPny5O24HGUrj6wbS-P2A;-><init>(Lcom/android/server/wm/RecentsAnimationController;IZ)V

    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Ljava/lang/Runnable;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 560
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v2, p1, Lcom/android/server/wm/Task;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->transferAnimation(Lcom/android/server/wm/SurfaceAnimator;)V

    .line 562
    :cond_0
    return-void
.end method

.method setCancelWithDeferredScreenshotLocked(Z)V
    .locals 0
    .param p1, "screenshot"    # Z

    .line 530
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelWithDeferredScreenshot:Z

    .line 531
    return-void
.end method

.method shouldApplyInputConsumer(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 665
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldCancelWithDeferredScreenshot()Z
    .locals 1

    .line 534
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelWithDeferredScreenshot:Z

    return v0
.end method

.method startAnimation()V
    .locals 11

    .line 413
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnimation(): mPendingStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-eqz v0, :cond_1

    goto/16 :goto_6

    .line 420
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v1, "appAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 422
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 423
    .local v3, "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-virtual {v3}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->createRemoteAnimationApp()Landroid/view/RemoteAnimationTarget;

    move-result-object v4

    .line 424
    .local v4, "target":Landroid/view/RemoteAnimationTarget;
    if-eqz v4, :cond_2

    .line 425
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 427
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 421
    .end local v3    # "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .end local v4    # "target":Landroid/view/RemoteAnimationTarget;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 432
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 433
    const/4 v2, 0x2

    const-string v3, "startAnimation-noAppWindows"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 434
    return-void

    .line 437
    :cond_4
    nop

    .line 438
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/RemoteAnimationTarget;

    .line 437
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/RemoteAnimationTarget;

    .line 439
    .local v2, "appTargets":[Landroid/view/RemoteAnimationTarget;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 443
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 444
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v4, v3, v3}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 447
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->inSplitScreenSecondaryWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 448
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mMinimizedHomeBounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 449
    :cond_5
    const/4 v5, 0x0

    :goto_2
    nop

    .line 451
    .local v5, "minimizedHomeBounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 452
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v6

    .local v6, "contentInsets":Landroid/graphics/Rect;
    goto :goto_3

    .line 455
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    :cond_6
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v7, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    iget-object v8, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 456
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 458
    .restart local v6    # "contentInsets":Landroid/graphics/Rect;
    :goto_3
    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    iget-object v8, p0, Lcom/android/server/wm/RecentsAnimationController;->mController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v7, v8, v2, v6, v5}, Landroid/view/IRecentsAnimationRunner;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 459
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v7, :cond_7

    .line 460
    sget-object v7, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v8, "startAnimation(): Notify animation start:"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    nop

    .local v3, "i":I
    :goto_4
    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    .line 462
    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v7}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$500(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v7

    .line 463
    .local v7, "task":Lcom/android/server/wm/Task;
    sget-object v8, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    nop

    .end local v7    # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 468
    .end local v1    # "appAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    .end local v2    # "appTargets":[Landroid/view/RemoteAnimationTarget;
    .end local v3    # "i":I
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "minimizedHomeBounds":Landroid/graphics/Rect;
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    :cond_7
    goto :goto_5

    .line 466
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start recents animation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 470
    .local v1, "reasons":Landroid/util/SparseIntArray;
    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 471
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyAppTransitionStarting(Landroid/util/SparseIntArray;J)V

    .line 472
    return-void

    .line 417
    .end local v1    # "reasons":Landroid/util/SparseIntArray;
    :cond_8
    :goto_6
    return-void
.end method

.method updateInputConsumerForApp(Landroid/view/InputWindowHandle;Z)Z
    .locals 3
    .param p1, "inputWindowHandle"    # Landroid/view/InputWindowHandle;
    .param p2, "hasFocus"    # Z

    .line 671
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_0

    .line 673
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 674
    .local v0, "targetAppMainWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 675
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getBounds(Landroid/graphics/Rect;)V

    .line 676
    iput-boolean p2, p1, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 677
    iget-object v1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 678
    const/4 v1, 0x1

    return v1

    .line 680
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
