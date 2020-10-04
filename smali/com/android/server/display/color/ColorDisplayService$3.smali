.class Lcom/android/server/display/color/ColorDisplayService$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/color/ColorDisplayService;->applyTint(Lcom/android/server/display/color/TintController;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;

.field final synthetic val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

.field final synthetic val$tintController:Lcom/android/server/display/color/TintController;

.field final synthetic val$to:[F


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;[F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 669
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iput-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

    iput-object p3, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    iput-object p4, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$to:[F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService$3;->mIsCancelled:Z

    .line 676
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 680
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService$3;->mIsCancelled:Z

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$to:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/TintController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 687
    return-void
.end method
