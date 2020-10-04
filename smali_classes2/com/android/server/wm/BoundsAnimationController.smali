.class public Lcom/android/server/wm/BoundsAnimationController;
.super Ljava/lang/Object;
.source "BoundsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;,
        Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;,
        Lcom/android/server/wm/BoundsAnimationController$AnimationType;,
        Lcom/android/server/wm/BoundsAnimationController$SchedulePipModeChangedState;
    }
.end annotation


# static fields
.field public static final BOUNDS:I = 0x0

.field private static final DEBUG:Z

.field private static final DEBUG_ANIMATION_SLOW_DOWN_FACTOR:I = 0x1

.field private static final DEBUG_LOCAL:Z = false

.field private static final DEFAULT_TRANSITION_DURATION:I = 0x1a9

.field public static final FADE_IN:I = 0x1

.field private static final FADE_IN_DURATION:I = 0x1f4

.field public static final NO_PIP_MODE_CHANGED_CALLBACKS:I = 0x0

.field public static final SCHEDULE_PIP_MODE_CHANGED_ON_END:I = 0x2

.field public static final SCHEDULE_PIP_MODE_CHANGED_ON_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WAIT_FOR_DRAW_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mAnimationHandler:Landroid/animation/AnimationHandler;

.field private mAnimationType:I
    .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
    .end annotation
.end field

.field private final mAppTransition:Lcom/android/server/wm/AppTransition;

.field private final mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

.field private mChoreographer:Landroid/view/Choreographer;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFinishAnimationAfterTransition:Z

.field private final mHandler:Landroid/os/Handler;

.field private mRunningAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/BoundsAnimationTarget;",
            "Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    sput-boolean v0, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transition"    # Lcom/android/server/wm/AppTransition;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "animationHandler"    # Landroid/animation/AnimationHandler;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 120
    new-instance v0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    .line 131
    iput-object p3, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    .line 132
    iput-object p2, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 134
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 136
    iput-object p4, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 137
    if-eqz p4, :cond_0

    .line 139
    new-instance v0, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$3-yWz6AXIW5r1KElGtHEgHZdi5Q;

    invoke-direct {v0, p0, p4}, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$3-yWz6AXIW5r1KElGtHEgHZdi5Q;-><init>(Lcom/android/server/wm/BoundsAnimationController;Landroid/animation/AnimationHandler;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/BoundsAnimationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/BoundsAnimationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/BoundsAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController;->updateBooster()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/BoundsAnimationController;)Lcom/android/server/wm/AppTransition;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/BoundsAnimationController;)Landroid/animation/AnimationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method private isRunningFadeInAnimation(Lcom/android/server/wm/BoundsAnimationTarget;)Z
    .locals 3
    .param p1, "target"    # Lcom/android/server/wm/BoundsAnimationTarget;

    .line 559
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 560
    .local v0, "existing":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1400(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$MoVv_WhxoMrTVo-xz1qu2FMcYrM(Lcom/android/server/wm/BoundsAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController;->resume()V

    return-void
.end method

.method private resume()V
    .locals 2

    .line 564
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 566
    .local v1, "b":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    invoke-virtual {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->resume()V

    .line 564
    .end local v1    # "b":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateBooster()V
    .locals 2

    .line 571
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 572
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 571
    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setBoundsAnimationRunning(Z)V

    .line 573
    return-void
.end method


# virtual methods
.method public animateBounds(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)V
    .locals 0
    .param p1, "target"    # Lcom/android/server/wm/BoundsAnimationTarget;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "animationDuration"    # I
    .param p5, "schedulePipModeChangedState"    # I
    .param p6, "moveFromFullscreen"    # Z
    .param p7, "moveToFullscreen"    # Z
    .param p8, "animationType"    # I
        .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
        .end annotation
    .end param

    .line 434
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/wm/BoundsAnimationController;->animateBoundsImpl(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 436
    return-void
.end method

.method animateBoundsImpl(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    .locals 23
    .param p1, "target"    # Lcom/android/server/wm/BoundsAnimationTarget;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "animationDuration"    # I
    .param p5, "schedulePipModeChangedState"    # I
    .param p6, "moveFromFullscreen"    # Z
    .param p7, "moveToFullscreen"    # Z
    .param p8, "animationType"    # I
        .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 455
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move/from16 v0, p5

    iget-object v1, v11, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 457
    .local v14, "existing":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/BoundsAnimationController;->isRunningFadeInAnimation(Lcom/android/server/wm/BoundsAnimationTarget;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 459
    const/4 v1, 0x1

    move v15, v1

    .end local p8    # "animationType":I
    .local v1, "animationType":I
    goto :goto_0

    .line 461
    .end local v1    # "animationType":I
    .restart local p8    # "animationType":I
    :cond_0
    move/from16 v15, p8

    .end local p8    # "animationType":I
    .local v15, "animationType":I
    :goto_0
    const/4 v1, 0x0

    const/4 v10, 0x1

    if-eqz v14, :cond_1

    move v2, v10

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    move v9, v2

    .line 462
    .local v9, "replacing":Z
    const/4 v2, 0x0

    .line 465
    .local v2, "prevSchedulePipModeChangedState":I
    sget-boolean v3, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    const-string v4, "WindowManager"

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animateBounds: target="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " schedulePipModeChangedState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " replacing="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move-object/from16 v8, p2

    .line 469
    :goto_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v3

    .line 470
    .local v7, "frozenTask":Landroid/graphics/Rect;
    const/4 v6, 0x2

    if-eqz v9, :cond_e

    .line 471
    invoke-virtual {v14, v13}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->isAnimatingTo(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p7, :cond_3

    invoke-static {v14}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$900(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    if-eqz p6, :cond_4

    .line 472
    invoke-static {v14}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1000(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 476
    :cond_4
    sget-boolean v1, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateBounds: same destination and moveTo/From flags as existing="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", ignoring..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_5
    return-object v14

    .line 482
    :cond_6
    invoke-static {v14}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1100(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v2

    .line 485
    invoke-static {v14}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1100(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v3

    if-ne v3, v10, :cond_9

    .line 486
    if-ne v0, v10, :cond_7

    .line 487
    sget-boolean v3, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "animateBounds: still animating to fullscreen, keep existing deferred state"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 490
    :cond_7
    sget-boolean v3, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "animateBounds: fullscreen animation canceled, callback on start already processed, schedule deferred update on end"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_8
    const/4 v0, 0x2

    .end local p5    # "schedulePipModeChangedState":I
    .local v0, "schedulePipModeChangedState":I
    goto :goto_3

    .line 494
    .end local v0    # "schedulePipModeChangedState":I
    .restart local p5    # "schedulePipModeChangedState":I
    :cond_9
    invoke-static {v14}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1100(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v3

    if-ne v3, v6, :cond_c

    .line 495
    if-ne v0, v10, :cond_a

    .line 496
    sget-boolean v3, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "animateBounds: non-fullscreen animation canceled, callback on start will be processed"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 499
    :cond_a
    sget-boolean v3, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "animateBounds: still animating from fullscreen, keep existing deferred state"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_b
    const/4 v0, 0x2

    .line 507
    .end local p5    # "schedulePipModeChangedState":I
    .restart local v0    # "schedulePipModeChangedState":I
    :cond_c
    :goto_3
    if-nez p6, :cond_d

    if-nez p7, :cond_d

    .line 508
    invoke-static {v14}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$900(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v3

    .line 509
    .end local p7    # "moveToFullscreen":Z
    .local v3, "moveToFullscreen":Z
    invoke-static {v14}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1000(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v4

    .end local p6    # "moveFromFullscreen":Z
    .local v4, "moveFromFullscreen":Z
    goto :goto_4

    .line 515
    .end local v3    # "moveToFullscreen":Z
    .end local v4    # "moveFromFullscreen":Z
    .restart local p6    # "moveFromFullscreen":Z
    .restart local p7    # "moveToFullscreen":Z
    :cond_d
    move/from16 v4, p6

    move/from16 v3, p7

    .end local p6    # "moveFromFullscreen":Z
    .end local p7    # "moveToFullscreen":Z
    .restart local v3    # "moveToFullscreen":Z
    .restart local v4    # "moveFromFullscreen":Z
    :goto_4
    invoke-static {v14}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1200(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v5

    invoke-static {v14}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1300(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v6

    invoke-virtual {v7, v1, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 518
    invoke-virtual {v14}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancel()V

    move/from16 v16, v0

    move/from16 v19, v2

    move/from16 v18, v3

    move/from16 v17, v4

    goto :goto_5

    .line 470
    .end local v0    # "schedulePipModeChangedState":I
    .end local v3    # "moveToFullscreen":Z
    .end local v4    # "moveFromFullscreen":Z
    .restart local p5    # "schedulePipModeChangedState":I
    .restart local p6    # "moveFromFullscreen":Z
    .restart local p7    # "moveToFullscreen":Z
    :cond_e
    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v16, v0

    move/from16 v19, v2

    .line 520
    .end local v2    # "prevSchedulePipModeChangedState":I
    .end local p5    # "schedulePipModeChangedState":I
    .end local p6    # "moveFromFullscreen":Z
    .end local p7    # "moveToFullscreen":Z
    .local v16, "schedulePipModeChangedState":I
    .local v17, "moveFromFullscreen":Z
    .local v18, "moveToFullscreen":Z
    .local v19, "prevSchedulePipModeChangedState":I
    :goto_5
    if-ne v15, v10, :cond_f

    .line 521
    const/4 v0, 0x0

    invoke-interface {v12, v13, v0}, Lcom/android/server/wm/BoundsAnimationTarget;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 524
    :cond_f
    new-instance v20, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v15

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    const/4 v13, 0x2

    move/from16 v6, v16

    move-object/from16 v21, v7

    .end local v7    # "frozenTask":Landroid/graphics/Rect;
    .local v21, "frozenTask":Landroid/graphics/Rect;
    move/from16 v7, v19

    move/from16 v8, v17

    move/from16 v22, v9

    .end local v9    # "replacing":Z
    .local v22, "replacing":Z
    move/from16 v9, v18

    move-object/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationTarget;ILandroid/graphics/Rect;Landroid/graphics/Rect;IIZZLandroid/graphics/Rect;)V

    .line 527
    .local v0, "animator":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    iget-object v1, v11, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    new-array v1, v13, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setFloatValues([F)V

    .line 529
    const/4 v1, 0x1

    if-ne v15, v1, :cond_10

    const-wide/16 v1, 0x1f4

    move/from16 v3, p4

    goto :goto_7

    .line 530
    :cond_10
    const/4 v2, -0x1

    move/from16 v3, p4

    if-eq v3, v2, :cond_11

    move v2, v3

    goto :goto_6

    :cond_11
    const/16 v2, 0x1a9

    :goto_6
    mul-int/2addr v2, v1

    int-to-long v1, v2

    .line 529
    :goto_7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 532
    iget-object v1, v11, Lcom/android/server/wm/BoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 533
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->start()V

    .line 534
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method cancel(Lcom/android/server/wm/BoundsAnimationTarget;)V
    .locals 3
    .param p1, "target"    # Lcom/android/server/wm/BoundsAnimationTarget;

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 443
    .local v0, "existing":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    if-eqz v0, :cond_1

    .line 445
    sget-boolean v1, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel: mTarget= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$800(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)V

    .line 448
    :cond_1
    return-void
.end method

.method public getAnimationType()I
    .locals 2
    .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
    .end annotation

    .line 543
    iget v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationType:I

    .line 545
    .local v0, "animationType":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationType:I

    .line 546
    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public synthetic lambda$new$0$BoundsAnimationController(Landroid/animation/AnimationHandler;)V
    .locals 2
    .param p1, "animationHandler"    # Landroid/animation/AnimationHandler;

    .line 140
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mChoreographer:Landroid/view/Choreographer;

    .line 141
    new-instance v0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mChoreographer:Landroid/view/Choreographer;

    invoke-direct {v0, v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>(Landroid/view/Choreographer;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    .line 142
    return-void
.end method

.method public onAllWindowsDrawn()V
    .locals 2

    .line 554
    sget-boolean v0, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "onAllWindowsDrawn:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$MoVv_WhxoMrTVo-xz1qu2FMcYrM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$MoVv_WhxoMrTVo-xz1qu2FMcYrM;-><init>(Lcom/android/server/wm/BoundsAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void
.end method

.method public setAnimationType(I)V
    .locals 0
    .param p1, "animationType"    # I
        .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
        .end annotation
    .end param

    .line 538
    iput p1, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationType:I

    .line 539
    return-void
.end method
