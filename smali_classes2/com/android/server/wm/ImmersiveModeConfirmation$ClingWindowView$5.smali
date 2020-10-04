.class Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

.field final synthetic val$cling:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 299
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    iput-object p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;->val$cling:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;->val$cling:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 303
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 304
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 305
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 306
    invoke-static {v3}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->access$500(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/high16 v5, -0x80000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->access$602(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->access$600(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5$1;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5$1;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->access$600(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->access$600(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-static {v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->access$500(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->access$600(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 321
    return-void
.end method
