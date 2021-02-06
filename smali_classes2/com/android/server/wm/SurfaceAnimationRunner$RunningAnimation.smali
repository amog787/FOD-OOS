.class final Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
.super Ljava/lang/Object;
.source "SurfaceAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SurfaceAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RunningAnimation"
.end annotation


# instance fields
.field mAnim:Landroid/animation/ValueAnimator;

.field final mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

.field private mCancelled:Z

.field final mFinishCallback:Ljava/lang/Runnable;

.field final mLeash:Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "animSpec"    # Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "finishCallback"    # Ljava/lang/Runnable;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 277
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    .line 278
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mFinishCallback:Ljava/lang/Runnable;

    .line 279
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 266
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    .param p1, "x1"    # Z

    .line 266
    iput-boolean p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z

    return p1
.end method
