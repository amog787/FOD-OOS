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

.field private mCancelDeferredWithScreenshot:Z

.field private mCancelOnNextTransitionStart:Z

.field private mCanceled:Z

.field private final mController:Landroid/view/IRecentsAnimationController;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayId:I

.field private final mFailsafeRunnable:Ljava/lang/Runnable;

.field private mIirsChipEnable:Z

.field private mInputConsumerEnabled:Z

.field private mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

.field private mLinkedToDeathOfRunner:Z

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

.field private final mPendingNewTaskTargets:Landroid/util/IntArray;

.field private mPendingStart:Z

.field private final mPendingWallpaperAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mRequestDeferCancelUntilNextTransition:Z

.field private mRunner:Landroid/view/IRecentsAnimationRunner;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private mTargetActivityType:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWillFinishToHome:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    const-class v0, Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;I)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "remoteAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;
    .param p3, "callbacks"    # Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
    .param p4, "displayId"    # I

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 116
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    .line 117
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$4jQqaDgSmtGCjbUJiVoDh_jr9rY;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$4jQqaDgSmtGCjbUJiVoDh_jr9rY;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mMinimizedHomeBounds:Landroid/graphics/Rect;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 139
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 158
    new-array v0, v0, [I

    const/16 v2, 0x124

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mIirsChipEnable:Z

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    .line 166
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$1;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 197
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$2;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mController:Landroid/view/IRecentsAnimationController;

    .line 356
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 357
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 358
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    .line 359
    iput p4, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    .line 360
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 361
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 362
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/RecentsAnimationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 91
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/RecentsAnimationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 91
    iget v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityType:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/wm/RecentsAnimationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/wm/RecentsAnimationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/RecentsAnimationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 91
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wm/RecentsAnimationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wm/RecentsAnimationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 91
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/RecentsAnimationController;)Landroid/util/IntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/RecentsAnimationController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;
    .param p1, "x1"    # I

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->removeTaskInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    return-object v0
.end method

.method private cancelAnimation(IZLjava/lang/String;)V
    .locals 7
    .param p1, "reorderMode"    # I
    .param p2, "screenshot"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 637
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x5af48e1b

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v2, v6}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 638
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 639
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-eqz v4, :cond_1

    .line 641
    monitor-exit v0

    return-void

    .line 643
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 644
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 646
    if-eqz p2, :cond_3

    .line 649
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 650
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/RecentsAnimationController;->screenshotRecentTask(Lcom/android/server/wm/Task;I)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    .local v2, "taskSnapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v4, v2}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled(Landroid/app/ActivityManager$TaskSnapshot;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    goto :goto_0

    .line 653
    :catch_0
    move-exception v4

    .line 654
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v5, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v6, "Failed to cancel recents animation"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v2, :cond_2

    .line 657
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    invoke-interface {v4, p1, v3}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 659
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "taskSnapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_2
    goto :goto_2

    .line 664
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v1, v2}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled(Landroid/app/ActivityManager$TaskSnapshot;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 667
    goto :goto_1

    .line 665
    :catch_1
    move-exception v1

    .line 666
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v2, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v4, "Failed to cancel recents animation"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    invoke-interface {v1, p1, v3}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZ)V

    .line 670
    :goto_2
    monitor-exit v0

    .line 671
    return-void

    .line 670
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private createAppAnimations()[Landroid/view/RemoteAnimationTarget;
    .locals 4

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v0, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 605
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 606
    .local v2, "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-virtual {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    .line 607
    .local v3, "target":Landroid/view/RemoteAnimationTarget;
    if-eqz v3, :cond_0

    .line 608
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 610
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 604
    .end local v2    # "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .end local v3    # "target":Landroid/view/RemoteAnimationTarget;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 613
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    return-object v1
.end method

.method private createTaskRemoteAnimation(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Landroid/view/RemoteAnimationTarget;
    .locals 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "finishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 575
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 576
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 577
    .local v0, "recentTaskIds":Landroid/util/SparseBooleanArray;
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 578
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 577
    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 579
    .local v1, "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->add(I)V

    .line 580
    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    return-object v2
.end method

.method private createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;
    .locals 12

    .line 617
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v1, 0x5923e8a1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 618
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    new-instance v10, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$j5cfzBzoc-2KFpZ5MiHSgWihq-Y;

    invoke-direct {v10, p0}, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$j5cfzBzoc-2KFpZ5MiHSgWihq-Y;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iget-object v11, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-static/range {v5 .. v11}, Lcom/android/server/wm/WallpaperAnimationAdapter;->startWallpaperAnimations(Lcom/android/server/wm/WindowManagerService;JJLjava/util/function/Consumer;Ljava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    return-object v0
.end method

.method private isAnimatingApp(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 5
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 899
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 900
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 901
    .local v2, "task":Lcom/android/server/wm/Task;
    sget-object v3, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$jw5vdNcR7ME-ta1B7JaOAiF7wKw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$jw5vdNcR7ME-ta1B7JaOAiF7wKw;

    const-class v4, Lcom/android/server/wm/ActivityRecord;

    .line 903
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    .line 901
    invoke-static {v3, p1, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v3

    .line 904
    .local v3, "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    move-result v4

    .line 905
    .local v4, "isAnimatingApp":Z
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    .line 906
    if-eqz v4, :cond_0

    .line 907
    return v1

    .line 899
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "f":Lcom/android/internal/util/function/pooled/PooledFunction;
    .end local v4    # "isAnimatingApp":Z
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 910
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isTargetOverWallpaper()Z
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    .line 875
    const/4 v0, 0x0

    return v0

    .line 877
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->windowsCanBeWallpaperTarget()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$initialize$1(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "t"    # Lcom/android/server/wm/Task;
    .param p1, "outList"    # Ljava/util/ArrayList;

    .line 383
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$isAnimatingApp$5(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "b"    # Lcom/android/server/wm/ActivityRecord;

    .line 902
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startAnimation$2(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Ljava/lang/Integer;
    .locals 1
    .param p0, "anim"    # Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 538
    invoke-static {p0}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private linkToDeathOfRunner()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 801
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    if-nez v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v0}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    .line 805
    :cond_0
    return-void
.end method

.method private removeTaskInternal(I)Z
    .locals 5
    .param p1, "taskId"    # I

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 588
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 589
    .local v2, "target":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, p1, :cond_1

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isOnTop()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 590
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 591
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    invoke-virtual {v3, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    .line 592
    .local v3, "taskIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 593
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->remove(I)V

    .line 595
    :cond_0
    const/4 v0, 0x1

    .line 596
    goto :goto_1

    .line 585
    .end local v2    # "target":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .end local v3    # "taskIndex":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 599
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method private unlinkToDeathOfRunner()V
    .locals 2

    .line 808
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v0}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 810
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    .line 812
    :cond_0
    return-void
.end method


# virtual methods
.method addAnimation(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/AnimationAdapter;
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isRecentTaskInvisible"    # Z

    .line 439
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    return-object v0
.end method

.method addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/AnimationAdapter;
    .locals 8
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isRecentTaskInvisible"    # Z
    .param p3, "hidden"    # Z
    .param p4, "finishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 446
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x120f4c9b

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 447
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;-><init>(Lcom/android/server/wm/RecentsAnimationController;Lcom/android/server/wm/Task;Z)V

    .line 449
    .local v0, "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/16 v6, 0x8

    move-object v2, p1

    move-object v4, v0

    move v5, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/Task;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 451
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    .line 452
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mIirsChipEnable:Z

    if-eqz v2, :cond_2

    .line 456
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    if-nez v2, :cond_1

    .line 457
    sget-object v2, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_IRIS_SERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v2}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/iris/IOneplusIrisManager;

    iput-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    .line 460
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    if-eqz v2, :cond_2

    .line 461
    invoke-interface {v2, v1}, Lcom/oneplus/iris/IOneplusIrisManager;->notifyRecentAnimatorStatus(Z)V

    .line 465
    :cond_2
    return-object v0
.end method

.method addTaskToTargets(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "finishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    if-eqz v0, :cond_3

    .line 557
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    return-void

    .line 560
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->createTaskRemoteAnimation(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    .line 561
    .local v0, "target":Landroid/view/RemoteAnimationTarget;
    if-nez v0, :cond_1

    .line 562
    return-void

    .line 564
    :cond_1
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, -0xa4e3fa1

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 566
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v1, v0}, Landroid/view/IRecentsAnimationRunner;->onTaskAppeared(Landroid/view/RemoteAnimationTarget;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    goto :goto_0

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to report task appeared"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    .end local v0    # "target":Landroid/view/RemoteAnimationTarget;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return-void
.end method

.method public binderDied()V
    .locals 3

    .line 816
    const/4 v0, 0x2

    const-string v1, "binderDied"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 820
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v1

    .line 821
    .local v1, "inputMonitor":Lcom/android/server/wm/InputMonitor;
    const-string v2, "recents_animation_input_consumer"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z

    .line 822
    nop

    .end local v1    # "inputMonitor":Lcom/android/server/wm/InputMonitor;
    monitor-exit v0

    .line 823
    return-void

    .line 822
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
    .param p2, "reason"    # Ljava/lang/String;

    .line 629
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZLjava/lang/String;)V

    .line 630
    return-void
.end method

.method cancelAnimationWithScreenshot(Z)V
    .locals 2
    .param p1, "screenshot"    # Z

    .line 633
    const/4 v0, 0x0

    const-string v1, "stackOrderChanged"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZLjava/lang/String;)V

    .line 634
    return-void
.end method

.method checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V
    .locals 2
    .param p1, "wallpaperController"    # Lcom/android/server/wm/WallpaperController;

    .line 826
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    if-eqz v0, :cond_2

    .line 827
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 829
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

    .line 830
    .local v0, "wallpaperReady":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 831
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->startAnimation()V

    .line 834
    .end local v0    # "wallpaperReady":Z
    :cond_2
    return-void
.end method

.method cleanupAnimation(I)V
    .locals 13
    .param p1, "reorderMode"    # I

    .line 739
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v5, v0

    .local v5, "protoLogParam0":J
    int-to-long v7, p1

    .local v7, "protoLogParam1":J
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x557b5a7e

    const/4 v10, 0x5

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v0, v9, v10, v3, v11}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 743
    .end local v5    # "protoLogParam0":J
    .end local v7    # "protoLogParam1":J
    :cond_0
    if-eq p1, v2, :cond_1

    .line 746
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->notifyRecentsWillBeTop()V

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 749
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 750
    .local v2, "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    if-eq p1, v4, :cond_2

    if-nez p1, :cond_3

    .line 751
    :cond_2
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->dontAnimateDimExit()V

    .line 753
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 748
    .end local v2    # "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 756
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 757
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 758
    .local v2, "wallpaperAdapter":Lcom/android/server/wm/WallpaperAnimationAdapter;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentsAnimationController;->removeWallpaperAnimation(Lcom/android/server/wm/WallpaperAnimationAdapter;)V

    .line 756
    .end local v2    # "wallpaperAdapter":Lcom/android/server/wm/WallpaperAnimationAdapter;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 762
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 763
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppTransition;->unregisterListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 766
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->unlinkToDeathOfRunner()V

    .line 767
    iput-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 768
    iput-boolean v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 771
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_6

    .line 772
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 773
    iput-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 777
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    .line 778
    .local v0, "inputMonitor":Lcom/android/server/wm/InputMonitor;
    invoke-virtual {v0, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 782
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_8

    .line 783
    if-eq p1, v4, :cond_7

    if-nez p1, :cond_8

    .line 784
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 788
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->onFinishRecentsAnimation()V

    .line 791
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v2, :cond_9

    .line 792
    invoke-interface {v2, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onRecentsAnimationStateChanged(Z)V

    .line 794
    :cond_9
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1038
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

    .line 1039
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

    .line 1040
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

    .line 1041
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

    .line 1042
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

    .line 1043
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTargetActivityRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
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

    .line 1045
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRequestDeferCancelUntilNextTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCancelOnNextTransitionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCancelDeferredWithScreenshot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    return-void
.end method

.method public initialize(ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/ActivityRecord;)V
    .locals 10
    .param p1, "targetActivityType"    # I
    .param p2, "recentTaskIds"    # Landroid/util/SparseBooleanArray;
    .param p3, "targetActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 371
    iput p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityType:I

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 379
    .local v0, "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 380
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 381
    .local v1, "targetStack":Lcom/android/server/wm/ActivityStack;
    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 382
    sget-object v4, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$EI4Oe4vlsDKieYi6iTTlm_g_DcI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$EI4Oe4vlsDKieYi6iTTlm_g_DcI;

    const-class v5, Lcom/android/server/wm/Task;

    .line 383
    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    .line 382
    invoke-static {v4, v5, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v4

    .line 385
    .local v4, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 386
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 389
    .end local v4    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 390
    .local v4, "taskCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 391
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 392
    .local v6, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    .line 393
    .local v7, "config":Landroid/app/WindowConfiguration;
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v8

    if-nez v8, :cond_2

    .line 394
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 395
    goto :goto_1

    .line 397
    :cond_1
    iget v8, v6, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v3

    invoke-virtual {p0, v6, v8}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/AnimationAdapter;

    .line 390
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "config":Landroid/app/WindowConfiguration;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 401
    .end local v5    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_4

    .line 402
    const-string v2, "initialize-noVisibleTasks"

    invoke-virtual {p0, v6, v2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 403
    return-void

    .line 407
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->linkToDeathOfRunner()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    nop

    .line 414
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x5a95a778

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v2

    invoke-static {v7, v8, v2, v6, v9}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 416
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_5
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 417
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 418
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 419
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 423
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 424
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 425
    .local v2, "rootHomeTask":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    :cond_7
    iput-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mMinimizedHomeBounds:Landroid/graphics/Rect;

    .line 427
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 429
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v5, p3}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->onStartRecentsAnimation(Lcom/android/server/wm/ActivityRecord;)V

    .line 432
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v5, :cond_8

    .line 433
    invoke-interface {v5, v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onRecentsAnimationStateChanged(Z)V

    .line 435
    :cond_8
    return-void

    .line 408
    .end local v2    # "rootHomeTask":Lcom/android/server/wm/ActivityStack;
    :catch_0
    move-exception v2

    .line 409
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "initialize-failedToLinkToDeath"

    invoke-virtual {p0, v6, v3}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 410
    return-void
.end method

.method isAnimatingTask(Lcom/android/server/wm/Task;)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 881
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 882
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 883
    return v1

    .line 881
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 886
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isAnimatingWallpaper(Lcom/android/server/wm/WallpaperWindowToken;)Z
    .locals 3
    .param p1, "token"    # Lcom/android/server/wm/WallpaperWindowToken;

    .line 890
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 891
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperAnimationAdapter;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 892
    return v1

    .line 890
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 895
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 870
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

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
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 837
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v0, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v2, :cond_1

    .line 839
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 840
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 837
    :goto_0
    return v0
.end method

.method public synthetic lambda$createWallpaperAnimations$3$RecentsAnimationController(Lcom/android/server/wm/WallpaperAnimationAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 620
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 623
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 624
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 625
    return-void

    .line 624
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$new$0$RecentsAnimationController()V
    .locals 2

    .line 117
    nop

    .line 118
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 117
    :goto_0
    const-string v1, "failSafeRunnable"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$screenshotRecentTask$4$RecentsAnimationController(IILcom/android/server/wm/AnimationAdapter;)V
    .locals 5
    .param p1, "reorderMode"    # I
    .param p2, "type"    # I
    .param p3, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 731
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v2, -0x7398423d

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    invoke-interface {v0, p1, v1}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZ)V

    .line 733
    return-void
.end method

.method linkFixedRotationTransformIfNeeded(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wm/WindowToken;

    .line 925
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    .line 926
    return-void

    .line 928
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 929
    return-void
.end method

.method removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V
    .locals 9
    .param p1, "taskAdapter"    # Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 470
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v3, v0

    .local v3, "protoLogParam0":J
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x500facd

    const/4 v6, 0x0

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v0, v5, v2, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 472
    .end local v3    # "protoLogParam0":J
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 473
    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$1400(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$1300(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)I

    move-result v2

    invoke-interface {v0, v2, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 478
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mIirsChipEnable:Z

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    if-nez v0, :cond_1

    .line 480
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_IRIS_SERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/iris/IOneplusIrisManager;

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    if-eqz v0, :cond_2

    .line 484
    invoke-interface {v0, v1}, Lcom/oneplus/iris/IOneplusIrisManager;->notifyRecentAnimatorStatus(Z)V

    .line 488
    :cond_2
    return-void
.end method

.method removeWallpaperAnimation(Lcom/android/server/wm/WallpaperAnimationAdapter;)V
    .locals 5
    .param p1, "wallpaperAdapter"    # Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 492
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v1, -0x696a0b14

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 493
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v0

    .line 494
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLastAnimationType()I

    move-result v1

    .line 493
    invoke-interface {v0, v1, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 496
    return-void
.end method

.method scheduleFailsafe()V
    .locals 4

    .line 797
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 798
    return-void
.end method

.method screenshotRecentTask(Lcom/android/server/wm/Task;I)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "reorderMode"    # I

    .line 715
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 716
    .local v0, "snapshotController":Lcom/android/server/wm/TaskSnapshotController;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 717
    .local v1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 718
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V

    .line 719
    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v4, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v3, v4, v2, v2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v3

    .line 721
    .local v3, "taskSnapshot":Landroid/app/ActivityManager$TaskSnapshot;
    if-nez v3, :cond_0

    .line 722
    const/4 v2, 0x0

    return-object v2

    .line 725
    :cond_0
    new-instance v4, Lcom/android/server/wm/TaskScreenshotAnimatable;

    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSurfaceControlFactory:Ljava/util/function/Function;

    new-instance v6, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    .line 726
    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v7

    .line 727
    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v8

    invoke-direct {v6, v7, v8, v2}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;-><init>(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;Z)V

    invoke-direct {v4, v5, p1, v6}, Lcom/android/server/wm/TaskScreenshotAnimatable;-><init>(Ljava/util/function/Function;Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V

    move-object v2, v4

    .line 728
    .local v2, "animatable":Lcom/android/server/wm/TaskScreenshotAnimatable;
    new-instance v4, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$N3j3xQ1hfm1lj2ROiq1dyExvslk;

    invoke-direct {v5, p0, p2}, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$N3j3xQ1hfm1lj2ROiq1dyExvslk;-><init>(Lcom/android/server/wm/RecentsAnimationController;I)V

    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v2, v5, v6}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 734
    iget-object v5, p1, Lcom/android/server/wm/Task;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/SurfaceAnimator;->transferAnimation(Lcom/android/server/wm/SurfaceAnimator;)V

    .line 735
    return-object v3
.end method

.method setCancelOnNextTransitionStart()V
    .locals 1

    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    .line 684
    return-void
.end method

.method setDeferredCancel(ZZ)V
    .locals 0
    .param p1, "defer"    # Z
    .param p2, "screenshot"    # Z

    .line 693
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    .line 694
    iput-boolean p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    .line 695
    return-void
.end method

.method shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 850
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 851
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 850
    :goto_0
    return v0
.end method

.method shouldDeferCancelUntilNextTransition()Z
    .locals 1

    .line 702
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    return v0
.end method

.method shouldDeferCancelWithScreenshot()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldIgnoreForAccessibility(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 914
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 915
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method startAnimation()V
    .locals 11

    .line 499
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .local v0, "protoLogParam0":Z
    iget-boolean v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .local v5, "protoLogParam1":Z
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x10e05f4

    const/16 v8, 0xf

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v6, v7, v8, v3, v9}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 501
    .end local v0    # "protoLogParam0":Z
    .end local v5    # "protoLogParam1":Z
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 507
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->createAppAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    .line 510
    .local v0, "appTargets":[Landroid/view/RemoteAnimationTarget;
    array-length v5, v0

    if-nez v5, :cond_2

    .line 511
    const-string v3, "startAnimation-noAppWindows"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 512
    return-void

    .line 516
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v8

    .line 518
    .local v8, "wallpaperTargets":[Landroid/view/RemoteAnimationTarget;
    iput-boolean v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 522
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v4, v4}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 525
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 526
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mMinimizedHomeBounds:Landroid/graphics/Rect;

    move-object v10, v1

    goto :goto_0

    .line 527
    :cond_3
    move-object v10, v3

    :goto_0
    nop

    .line 529
    .local v10, "minimizedHomeBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 530
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "contentInsets":Landroid/graphics/Rect;
    goto :goto_1

    .line 533
    .end local v1    # "contentInsets":Landroid/graphics/Rect;
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v6}, Lcom/android/server/wm/WindowManagerService;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 534
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 536
    .restart local v1    # "contentInsets":Landroid/graphics/Rect;
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mController:Landroid/view/IRecentsAnimationController;

    move-object v7, v0

    move-object v9, v1

    invoke-interface/range {v5 .. v10}, Landroid/view/IRecentsAnimationRunner;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 538
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$Qf54zw-ZSotFC4zX6WOgsNr8yHw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$Qf54zw-ZSotFC4zX6WOgsNr8yHw;

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, -0x47fceb0f

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v5, v9, v4

    invoke-static {v6, v7, v4, v3, v9}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v0    # "appTargets":[Landroid/view/RemoteAnimationTarget;
    .end local v1    # "contentInsets":Landroid/graphics/Rect;
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "wallpaperTargets":[Landroid/view/RemoteAnimationTarget;
    .end local v10    # "minimizedHomeBounds":Landroid/graphics/Rect;
    :cond_5
    goto :goto_2

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start recents animation"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_6

    .line 547
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 548
    .local v0, "reasons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    .line 550
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    .line 552
    .end local v0    # "reasons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Ljava/lang/Integer;>;"
    :cond_6
    return-void

    .line 503
    :cond_7
    :goto_3
    return-void
.end method

.method updateInputConsumerForApp(Landroid/view/InputWindowHandle;Z)Z
    .locals 3
    .param p1, "inputWindowHandle"    # Landroid/view/InputWindowHandle;
    .param p2, "hasFocus"    # Z

    .line 857
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_0

    .line 859
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 860
    .local v0, "targetAppMainWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 861
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getBounds(Landroid/graphics/Rect;)V

    .line 862
    iput-boolean p2, p1, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 863
    iget-object v1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 864
    const/4 v1, 0x1

    return v1

    .line 866
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
