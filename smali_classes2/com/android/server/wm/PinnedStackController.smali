.class Lcom/android/server/wm/PinnedStackController;
.super Ljava/lang/Object;
.source "PinnedStackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;,
        Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;
    }
.end annotation


# static fields
.field public static final INVALID_SNAP_FRACTION:F = -1.0f

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mAspectRatio:F

.field private final mCallbacks:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

.field private mCurrentMinSize:I

.field private mDefaultAspectRatio:F

.field private mDefaultMinSize:I

.field private mDefaultStackGravity:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mImeHeight:I

.field private mIsImeShowing:Z

.field private mIsMinimized:Z

.field private mIsShelfShowing:Z

.field private mLastPipActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxAspectRatio:F

.field private mMinAspectRatio:F

.field private mPinnedStackListener:Landroid/view/IPinnedStackListener;

.field private final mPinnedStackListenerDeathHandler:Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

.field private mReentrySnapFraction:F

.field private mScreenEdgeInsets:Landroid/graphics/Point;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mShelfHeight:I

.field private final mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private final mTmpAnimatingBoundsRect:Landroid/graphics/Rect;

.field private final mTmpDisplaySize:Landroid/graphics/Point;

.field private final mTmpInsets:Landroid/graphics/Rect;

.field private final mTmpMetrics:Landroid/util/DisplayMetrics;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedStackController;Lcom/android/server/wm/PinnedStackController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListenerDeathHandler:Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

    .line 86
    new-instance v0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;-><init>(Lcom/android/server/wm/PinnedStackController;Lcom/android/server/wm/PinnedStackController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mCallbacks:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    .line 98
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    .line 101
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 102
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mStableInsets:Landroid/graphics/Rect;

    .line 110
    iput v0, p0, Lcom/android/server/wm/PinnedStackController;->mReentrySnapFraction:F

    .line 111
    iput-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mLastPipActivity:Ljava/lang/ref/WeakReference;

    .line 118
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mTmpMetrics:Landroid/util/DisplayMetrics;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mTmpInsets:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mTmpRect:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mTmpAnimatingBoundsRect:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 169
    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 170
    iput-object p2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 171
    new-instance v0, Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 173
    invoke-direct {p0}, Lcom/android/server/wm/PinnedStackController;->reloadResources()V

    .line 177
    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultAspectRatio:F

    iput v0, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    .line 178
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/PinnedStackController;)Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListenerDeathHandler:Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/PinnedStackController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/PinnedStackController;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/PinnedStackController;)Landroid/view/DisplayInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/PinnedStackController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;
    .param p1, "x1"    # I

    .line 73
    iput p1, p0, Lcom/android/server/wm/PinnedStackController;->mCurrentMinSize:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/PinnedStackController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;

    .line 73
    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultMinSize:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/PinnedStackController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;
    .param p1, "x1"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/android/server/wm/PinnedStackController;->mIsMinimized:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/PinnedStackController;)Lcom/android/internal/policy/PipSnapAlgorithm;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/PinnedStackController;)Landroid/view/IPinnedStackListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/wm/PinnedStackController;Landroid/view/IPinnedStackListener;)Landroid/view/IPinnedStackListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/PinnedStackController;
    .param p1, "x1"    # Landroid/view/IPinnedStackListener;

    .line 73
    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    return-object p1
.end method

.method private applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;

    .line 574
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 575
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mTmpDisplaySize:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 576
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 577
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mTmpDisplaySize:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/internal/policy/PipSnapAlgorithm;->applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 579
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private dpToPx(FLandroid/util/DisplayMetrics;)I
    .locals 1
    .param p1, "dpValue"    # F
    .param p2, "dm"    # Landroid/util/DisplayMetrics;

    .line 594
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getInsetBounds(Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 532
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 533
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v1, Landroid/view/DisplayInfo;->rotation:I

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v7, p0, Lcom/android/server/wm/PinnedStackController;->mTmpInsets:Landroid/graphics/Rect;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 536
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mTmpInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mTmpInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Lcom/android/server/wm/PinnedStackController;->mTmpInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/PinnedStackController;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, p0, Lcom/android/server/wm/PinnedStackController;->mTmpInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/wm/PinnedStackController;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 539
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 540
    return-void

    .line 539
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .line 547
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 548
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;ZZ)Landroid/graphics/Rect;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 550
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getMovementBounds(Landroid/graphics/Rect;ZZ)Landroid/graphics/Rect;
    .locals 6
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "adjustForIme"    # Z
    .param p3, "adjustForShelf"    # Z

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 559
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 560
    .local v1, "movementBounds":Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Lcom/android/server/wm/PinnedStackController;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 563
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    .line 564
    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-boolean v4, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    goto :goto_0

    :cond_0
    move v4, v3

    .line 565
    :goto_0
    if-eqz p3, :cond_1

    iget-boolean v5, p0, Lcom/android/server/wm/PinnedStackController;->mIsShelfShowing:Z

    if-eqz v5, :cond_1

    iget v3, p0, Lcom/android/server/wm/PinnedStackController;->mShelfHeight:I

    .line 564
    :cond_1
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 563
    invoke-virtual {v2, p1, v1, v1, v3}, Lcom/android/internal/policy/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 566
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 567
    .end local v1    # "movementBounds":Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getSnapFraction(Landroid/graphics/Rect;)F
    .locals 2
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .line 587
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    return v0
.end method

.method private isSameDimensionAndRotation(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)Z
    .locals 2
    .param p1, "display1"    # Landroid/view/DisplayInfo;
    .param p2, "display2"    # Landroid/view/DisplayInfo;

    .line 439
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iget v1, p2, Landroid/view/DisplayInfo;->rotation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v1, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyActionsChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 486
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-eqz v0, :cond_0

    .line 488
    :try_start_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/view/IPinnedStackListener;->onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error delivering actions changed event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyImeVisibilityChanged(ZI)V
    .locals 3
    .param p1, "imeVisible"    # Z
    .param p2, "imeHeight"    # I

    .line 450
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-eqz v0, :cond_0

    .line 452
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/view/IPinnedStackListener;->onImeVisibilityChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error delivering bounds changed event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyMinimizeChanged(Z)V
    .locals 3
    .param p1, "isMinimized"    # Z

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-eqz v0, :cond_0

    .line 475
    :try_start_0
    invoke-interface {v0, p1}, Landroid/view/IPinnedStackListener;->onMinimizedStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error delivering minimize changed event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyMovementBoundsChanged(ZZ)V
    .locals 12
    .param p1, "fromImeAdjustment"    # Z
    .param p2, "fromShelfAdjustment"    # Z

    .line 500
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 501
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-nez v1, :cond_0

    .line 502
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 505
    :cond_0
    :try_start_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 506
    .local v1, "insetBounds":Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Lcom/android/server/wm/PinnedStackController;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 507
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v2}, Lcom/android/server/wm/PinnedStackController;->getDefaultBounds(F)Landroid/graphics/Rect;

    move-result-object v2

    move-object v9, v2

    .line 508
    .local v9, "normalBounds":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    invoke-virtual {p0, v2}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    iget v2, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    const/4 v3, 0x0

    invoke-virtual {p0, v9, v2, v3}, Lcom/android/server/wm/PinnedStackController;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;

    .line 512
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mTmpAnimatingBoundsRect:Landroid/graphics/Rect;

    move-object v10, v2

    .line 513
    .local v10, "animatingBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    move-object v11, v2

    .line 514
    .local v11, "pinnedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v11, :cond_2

    .line 515
    invoke-virtual {v11, v10}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 517
    :cond_2
    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 519
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v3, Landroid/view/DisplayInfo;->rotation:I

    move-object v3, v1

    move-object v4, v9

    move-object v5, v10

    move v6, p1

    move v7, p2

    invoke-interface/range {v2 .. v8}, Landroid/view/IPinnedStackListener;->onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    .end local v1    # "insetBounds":Landroid/graphics/Rect;
    .end local v9    # "normalBounds":Landroid/graphics/Rect;
    .end local v10    # "animatingBounds":Landroid/graphics/Rect;
    .end local v11    # "pinnedStack":Lcom/android/server/wm/TaskStack;
    goto :goto_1

    .line 522
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "WindowManager"

    const-string v3, "Error delivering actions changed event."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private notifyShelfVisibilityChanged(ZI)V
    .locals 3
    .param p1, "shelfVisible"    # Z
    .param p2, "shelfHeight"    # I

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-eqz v0, :cond_0

    .line 462
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/view/IPinnedStackListener;->onShelfVisibilityChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error delivering bounds changed event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private reloadResources()V
    .locals 7

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 189
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10500e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultMinSize:I

    .line 191
    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultMinSize:I

    iput v1, p0, Lcom/android/server/wm/PinnedStackController;->mCurrentMinSize:I

    .line 192
    const v1, 0x10500aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultAspectRatio:F

    .line 194
    const v1, 0x1040167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "screenEdgeInsetsDpString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    goto :goto_0

    .line 198
    :cond_0
    const/4 v2, 0x0

    :goto_0
    nop

    .line 199
    .local v2, "screenEdgeInsetsDp":Landroid/util/Size;
    const v3, 0x10e003e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultStackGravity:I

    .line 201
    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/PinnedStackController;->mTmpMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 202
    if-nez v2, :cond_1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    goto :goto_1

    .line 203
    :cond_1
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/PinnedStackController;->mTmpMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/PinnedStackController;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result v4

    .line 204
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/PinnedStackController;->mTmpMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/PinnedStackController;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    :goto_1
    iput-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mScreenEdgeInsets:Landroid/graphics/Point;

    .line 205
    const v3, 0x10500ad

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/PinnedStackController;->mMinAspectRatio:F

    .line 207
    const v3, 0x10500ac

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/PinnedStackController;->mMaxAspectRatio:F

    .line 209
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PinnedStackController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  defaultBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Lcom/android/server/wm/PinnedStackController;->getDefaultBounds(F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 601
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDefaultMinSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultMinSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDefaultStackGravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultStackGravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDefaultAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  movementBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 607
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mIsImeShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mImeHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mIsShelfShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/PinnedStackController;->mIsShelfShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mShelfHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mShelfHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mReentrySnapFraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mReentrySnapFraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mIsMinimized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/PinnedStackController;->mIsMinimized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mMinAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mMinAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mMaxAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mMaxAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mActions=[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 620
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mActions=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 622
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RemoteAction;

    .line 623
    .local v1, "action":Landroid/app/RemoteAction;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Action["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    const-string v2, ""

    invoke-virtual {v1, v2, p2}, Landroid/app/RemoteAction;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 621
    .end local v1    # "action":Landroid/app/RemoteAction;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method getAspectRatio()F
    .locals 1

    .line 423
    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    return v0
.end method

.method getDefaultBounds(F)Landroid/graphics/Rect;
    .locals 11
    .param p1, "snapFraction"    # F

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 294
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 295
    .local v1, "insetBounds":Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Lcom/android/server/wm/PinnedStackController;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 297
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v2

    .line 298
    .local v9, "defaultBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget v3, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultAspectRatio:F

    iget v4, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultMinSize:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v6, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSizeForAspectRatio(FFII)Landroid/util/Size;

    move-result-object v2

    move-object v10, v2

    .line 300
    .local v10, "size":Landroid/util/Size;
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p1, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v9, v3, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 302
    invoke-direct {p0, v9}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 303
    .local v2, "movementBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v3, v9, v2, p1}, Lcom/android/internal/policy/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 304
    .end local v2    # "movementBounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 305
    :cond_0
    iget v2, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultStackGravity:I

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    .line 306
    iget-boolean v7, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    goto :goto_0

    :cond_1
    move v7, v3

    .line 307
    :goto_0
    iget-boolean v8, p0, Lcom/android/server/wm/PinnedStackController;->mIsShelfShowing:Z

    if-eqz v8, :cond_2

    iget v3, p0, Lcom/android/server/wm/PinnedStackController;->mShelfHeight:I

    .line 306
    :cond_2
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 305
    move v3, v4

    move v4, v5

    move-object v5, v1

    move-object v8, v9

    invoke-static/range {v2 .. v8}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 310
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v9

    .line 311
    .end local v1    # "insetBounds":Landroid/graphics/Rect;
    .end local v9    # "defaultBounds":Landroid/graphics/Rect;
    .end local v10    # "size":Landroid/util/Size;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getDefaultOrLastSavedBounds()Landroid/graphics/Rect;
    .locals 1

    .line 285
    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mReentrySnapFraction:F

    invoke-virtual {p0, v0}, Lcom/android/server/wm/PinnedStackController;->getDefaultBounds(F)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public isValidPictureInPictureAspectRatio(F)Z
    .locals 1
    .param p1, "aspectRatio"    # F

    .line 236
    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mMinAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mMaxAspectRatio:F

    .line 237
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0
.end method

.method onConfigurationChanged()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/android/server/wm/PinnedStackController;->reloadResources()V

    .line 182
    return-void
.end method

.method declared-synchronized onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .locals 1
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 319
    .end local p0    # "this":Lcom/android/server/wm/PinnedStackController;
    .end local p1    # "displayInfo":Landroid/view/DisplayInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onTaskStackBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "targetBounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 330
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 331
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/PinnedStackController;->isSameDimensionAndRotation(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 334
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 335
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 339
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 340
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 343
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 344
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mTmpRect:Landroid/graphics/Rect;

    .line 347
    .local v2, "postChangeStackBounds":Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Lcom/android/server/wm/PinnedStackController;->getSnapFraction(Landroid/graphics/Rect;)F

    move-result v4

    .line 348
    .local v4, "snapFraction":F
    iget-object v5, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v5, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 352
    invoke-direct {p0, v2, v3, v3}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;ZZ)Landroid/graphics/Rect;

    move-result-object v5

    .line 354
    .local v5, "postChangeMovementBounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v6, v2, v5, v4}, Lcom/android/internal/policy/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 356
    iget-boolean v6, p0, Lcom/android/server/wm/PinnedStackController;->mIsMinimized:Z

    if-eqz v6, :cond_2

    .line 357
    invoke-direct {p0, v2, v5}, Lcom/android/server/wm/PinnedStackController;->applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 360
    :cond_2
    invoke-direct {p0, v3, v3}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(ZZ)V

    .line 363
    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 364
    const/4 v3, 0x1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 365
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v2    # "postChangeStackBounds":Landroid/graphics/Rect;
    .end local v4    # "snapFraction":F
    .end local v5    # "postChangeMovementBounds":Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method registerPinnedStackListener(Landroid/view/IPinnedStackListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/IPinnedStackListener;

    .line 216
    :try_start_0
    invoke-interface {p1}, Landroid/view/IPinnedStackListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListenerDeathHandler:Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mCallbacks:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

    invoke-interface {p1, v0}, Landroid/view/IPinnedStackListener;->onListenerRegistered(Landroid/view/IPinnedStackController;)V

    .line 218
    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    .line 219
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PinnedStackController;->notifyImeVisibilityChanged(ZI)V

    .line 220
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedStackController;->mIsShelfShowing:Z

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mShelfHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PinnedStackController;->notifyShelfVisibilityChanged(ZI)V

    .line 223
    invoke-direct {p0, v2, v2}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(ZZ)V

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedStackController;->notifyActionsChanged(Ljava/util/List;)V

    .line 226
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedStackController;->mIsMinimized:Z

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedStackController;->notifyMinimizeChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to register pinned stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method resetReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mLastPipActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 276
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/PinnedStackController;->mReentrySnapFraction:F

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mLastPipActivity:Ljava/lang/ref/WeakReference;

    .line 279
    :cond_0
    return-void
.end method

.method saveReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "stackBounds"    # Landroid/graphics/Rect;

    .line 267
    invoke-direct {p0, p2}, Lcom/android/server/wm/PinnedStackController;->getSnapFraction(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/PinnedStackController;->mReentrySnapFraction:F

    .line 268
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mLastPipActivity:Ljava/lang/ref/WeakReference;

    .line 269
    return-void
.end method

.method setActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 430
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 431
    if-eqz p1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedStackController;->notifyActionsChanged(Ljava/util/List;)V

    .line 435
    return-void
.end method

.method setAdjustedForIme(ZI)V
    .locals 4
    .param p1, "adjustedForIme"    # Z
    .param p2, "imeHeight"    # I

    .line 376
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 377
    .local v2, "imeShowing":Z
    :goto_0
    if-eqz v2, :cond_1

    move v3, p2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    move p2, v3

    .line 378
    iget-boolean v3, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    if-ne p2, v3, :cond_2

    .line 379
    return-void

    .line 382
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    .line 383
    iput p2, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    .line 387
    invoke-static {v2, p2}, Lcom/android/server/wm/OpQuickReplyInjector;->notifyImeVisibilityChanged(ZI)V

    .line 389
    invoke-direct {p0, v2, p2}, Lcom/android/server/wm/PinnedStackController;->notifyImeVisibilityChanged(ZI)V

    .line 390
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(ZZ)V

    .line 391
    return-void
.end method

.method setAdjustedForShelf(ZI)V
    .locals 4
    .param p1, "adjustedForShelf"    # Z
    .param p2, "shelfHeight"    # I

    .line 397
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 398
    .local v2, "shelfShowing":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/PinnedStackController;->mIsShelfShowing:Z

    if-ne v2, v3, :cond_1

    iget v3, p0, Lcom/android/server/wm/PinnedStackController;->mShelfHeight:I

    if-ne p2, v3, :cond_1

    .line 399
    return-void

    .line 402
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wm/PinnedStackController;->mIsShelfShowing:Z

    .line 403
    iput p2, p0, Lcom/android/server/wm/PinnedStackController;->mShelfHeight:I

    .line 404
    invoke-direct {p0, v2, p2}, Lcom/android/server/wm/PinnedStackController;->notifyShelfVisibilityChanged(ZI)V

    .line 405
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(ZZ)V

    .line 406
    return-void
.end method

.method setAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .line 412
    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iput p1, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    .line 414
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(ZZ)V

    .line 417
    :cond_0
    return-void
.end method

.method transformBoundsToAspectRatio(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;
    .locals 7
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "aspectRatio"    # F
    .param p3, "useCurrentMinEdgeSize"    # Z

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    .line 248
    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 247
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    .line 250
    .local v0, "snapFraction":F
    if-eqz p3, :cond_0

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mCurrentMinSize:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultMinSize:I

    .line 251
    .local v1, "minEdgeSize":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    int-to-float v3, v1

    iget-object v4, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v5, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v2, p2, v3, v4, v5}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSizeForAspectRatio(FFII)Landroid/util/Size;

    move-result-object v2

    .line 253
    .local v2, "size":Landroid/util/Size;
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 254
    .local v3, "left":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    float-to-int v4, v4

    .line 255
    .local v4, "top":I
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 256
    iget-object v5, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, p1, v6, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 257
    iget-boolean v5, p0, Lcom/android/server/wm/PinnedStackController;->mIsMinimized:Z

    if-eqz v5, :cond_1

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/wm/PinnedStackController;->applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 260
    :cond_1
    return-object p1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 632
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 633
    .local v0, "token":J
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v2}, Lcom/android/server/wm/PinnedStackController;->getDefaultBounds(F)Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 634
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 635
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 636
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 637
    return-void
.end method
