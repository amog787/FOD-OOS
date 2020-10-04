.class public final synthetic Lcom/android/server/wm/-$$Lambda$LocalAnimationAdapter$X--EomqUvw4qy89IeeTFTH7aCMo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/LocalAnimationAdapter;

.field private final synthetic f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$LocalAnimationAdapter$X--EomqUvw4qy89IeeTFTH7aCMo;->f$0:Lcom/android/server/wm/LocalAnimationAdapter;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$LocalAnimationAdapter$X--EomqUvw4qy89IeeTFTH7aCMo;->f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$LocalAnimationAdapter$X--EomqUvw4qy89IeeTFTH7aCMo;->f$0:Lcom/android/server/wm/LocalAnimationAdapter;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$LocalAnimationAdapter$X--EomqUvw4qy89IeeTFTH7aCMo;->f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LocalAnimationAdapter;->lambda$startAnimation$0$LocalAnimationAdapter(Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    return-void
.end method
