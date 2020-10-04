.class public final synthetic Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$M9kRDTUpVS03LTqe-QLQz3DnMhk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SurfaceAnimator;

.field private final synthetic f$1:Lcom/android/server/wm/AnimationAdapter;

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/AnimationAdapter;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$M9kRDTUpVS03LTqe-QLQz3DnMhk;->f$0:Lcom/android/server/wm/SurfaceAnimator;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$M9kRDTUpVS03LTqe-QLQz3DnMhk;->f$1:Lcom/android/server/wm/AnimationAdapter;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$M9kRDTUpVS03LTqe-QLQz3DnMhk;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$M9kRDTUpVS03LTqe-QLQz3DnMhk;->f$0:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$M9kRDTUpVS03LTqe-QLQz3DnMhk;->f$1:Lcom/android/server/wm/AnimationAdapter;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$M9kRDTUpVS03LTqe-QLQz3DnMhk;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->lambda$getFinishedCallback$0$SurfaceAnimator(Lcom/android/server/wm/AnimationAdapter;Ljava/lang/Runnable;)V

    return-void
.end method
