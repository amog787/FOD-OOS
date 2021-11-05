.class public Lcom/android/server/wm/FixedRotationAnimationController;
.super Ljava/lang/Object;
.source "FixedRotationAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;
    }
.end annotation


# instance fields
.field private final mAnimatedWindowToken:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDeferredFinishCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowToken;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavigationBar:Lcom/android/server/wm/WindowState;

.field private final mStatusBar:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mAnimatedWindowToken:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mDeferredFinishCallbacks:Landroid/util/ArrayMap;

    .line 52
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    .line 54
    .local v0, "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 56
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/FixedRotationAnimationController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/FixedRotationAnimationController;

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mDeferredFinishCallbacks:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 106
    new-instance v0, Lcom/android/server/wm/FixedRotationAnimationController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/FixedRotationAnimationController$1;-><init>(Lcom/android/server/wm/FixedRotationAnimationController;Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private fadeWindowToken(ZLcom/android/server/wm/WindowToken;)V
    .locals 9
    .param p1, "show"    # Z
    .param p2, "windowToken"    # Lcom/android/server/wm/WindowToken;

    .line 80
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mContext:Landroid/content/Context;

    .line 85
    if-eqz p1, :cond_1

    const/high16 v1, 0x10a0000

    goto :goto_0

    :cond_1
    const v1, 0x10a0001

    .line 84
    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 86
    .local v0, "animation":Landroid/view/animation/Animation;
    nop

    .line 87
    invoke-direct {p0, v0}, Lcom/android/server/wm/FixedRotationAnimationController;->createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    move-result-object v7

    .line 89
    .local v7, "windowAnimationSpec":Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    new-instance v8, Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;

    .line 90
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v4

    move-object v1, v8

    move-object v2, p0

    move-object v3, v7

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;-><init>(Lcom/android/server/wm/FixedRotationAnimationController;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;)V

    move-object v3, v8

    .line 94
    .local v3, "animationAdapter":Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;
    if-eqz p1, :cond_2

    new-instance v1, Lcom/android/server/wm/-$$Lambda$FixedRotationAnimationController$G3brwTIu6NI4WRL2IEx6JMKcwNY;

    invoke-direct {v1, p0, p2}, Lcom/android/server/wm/-$$Lambda$FixedRotationAnimationController$G3brwTIu6NI4WRL2IEx6JMKcwNY;-><init>(Lcom/android/server/wm/FixedRotationAnimationController;Lcom/android/server/wm/WindowToken;)V

    move-object v6, v1

    goto :goto_1

    .line 99
    :cond_2
    const/4 v1, 0x0

    move-object v6, v1

    :goto_1
    nop

    .line 100
    .local v6, "finishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/16 v5, 0x40

    move-object v1, p2

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mAnimatedWindowToken:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    return-void

    .line 81
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v3    # "animationAdapter":Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;
    .end local v6    # "finishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .end local v7    # "windowAnimationSpec":Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method hide()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/FixedRotationAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/FixedRotationAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;)V

    .line 77
    :cond_1
    return-void
.end method

.method public synthetic lambda$fadeWindowToken$0$FixedRotationAnimationController(Lcom/android/server/wm/WindowToken;ILcom/android/server/wm/AnimationAdapter;)V
    .locals 1
    .param p1, "windowToken"    # Lcom/android/server/wm/WindowToken;
    .param p2, "t"    # I
    .param p3, "r"    # Lcom/android/server/wm/AnimationAdapter;

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mDeferredFinishCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 96
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 99
    :cond_0
    return-void
.end method

.method show()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mAnimatedWindowToken:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 64
    iget-object v2, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mAnimatedWindowToken:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 65
    .local v2, "windowToken":Lcom/android/server/wm/WindowToken;
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/FixedRotationAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;)V

    .line 63
    .end local v2    # "windowToken":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
