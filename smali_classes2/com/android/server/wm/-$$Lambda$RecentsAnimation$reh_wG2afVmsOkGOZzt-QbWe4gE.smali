.class public final synthetic Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentsAnimation;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentsAnimation;IZLcom/android/server/wm/RecentsAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;->f$0:Lcom/android/server/wm/RecentsAnimation;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;->f$3:Lcom/android/server/wm/RecentsAnimationController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;->f$0:Lcom/android/server/wm/RecentsAnimation;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;->f$2:Z

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;->f$3:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RecentsAnimation;->lambda$finishAnimation$0$RecentsAnimation(IZLcom/android/server/wm/RecentsAnimationController;)V

    return-void
.end method
