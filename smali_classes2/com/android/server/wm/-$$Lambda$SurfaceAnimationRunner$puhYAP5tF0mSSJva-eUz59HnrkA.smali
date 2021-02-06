.class public final synthetic Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$puhYAP5tF0mSSJva-eUz59HnrkA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

.field public final synthetic f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

.field public final synthetic f$2:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$puhYAP5tF0mSSJva-eUz59HnrkA;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$puhYAP5tF0mSSJva-eUz59HnrkA;->f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$puhYAP5tF0mSSJva-eUz59HnrkA;->f$2:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$puhYAP5tF0mSSJva-eUz59HnrkA;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$puhYAP5tF0mSSJva-eUz59HnrkA;->f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$puhYAP5tF0mSSJva-eUz59HnrkA;->f$2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->lambda$startAnimationLocked$3$SurfaceAnimationRunner(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
