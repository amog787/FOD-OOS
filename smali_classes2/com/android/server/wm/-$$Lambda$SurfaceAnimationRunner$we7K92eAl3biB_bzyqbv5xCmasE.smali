.class public final synthetic Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$we7K92eAl3biB_bzyqbv5xCmasE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SurfaceAnimationRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$we7K92eAl3biB_bzyqbv5xCmasE;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    return-void
.end method


# virtual methods
.method public final makeAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$we7K92eAl3biB_bzyqbv5xCmasE;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->lambda$new$1$SurfaceAnimationRunner()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method
