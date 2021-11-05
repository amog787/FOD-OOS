.class public final synthetic Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$SGOilG6qRe0XTsTJRQqQKhta0pA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

.field public final synthetic f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$SGOilG6qRe0XTsTJRQqQKhta0pA;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$SGOilG6qRe0XTsTJRQqQKhta0pA;->f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$SGOilG6qRe0XTsTJRQqQKhta0pA;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$SGOilG6qRe0XTsTJRQqQKhta0pA;->f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->lambda$onAnimationCancelled$2$SurfaceAnimationRunner(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    return-void
.end method
