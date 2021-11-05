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
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;[FLcom/android/server/display/color/DisplayTransformManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 872
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iput-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    iput-object p3, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$to:[F

    iput-object p4, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService$3;->mIsCancelled:Z

    .line 879
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 883
    move-object v0, p1

    check-cast v0, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    .line 884
    .local v0, "t":Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Animation cancelled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/color/ColorDisplayService$3;->mIsCancelled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to matrix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$to:[F

    .line 886
    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " min matrix coefficients: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->getMin()[F

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " max matrix coefficients: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->getMax()[F

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 884
    const-string v2, "ColorDisplayService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->mIsCancelled:Z

    if-nez v1, :cond_0

    .line 895
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$dtm:Lcom/android/server/display/color/DisplayTransformManager;

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {v2}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$to:[F

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 897
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$3;->val$tintController:Lcom/android/server/display/color/TintController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/TintController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 898
    return-void
.end method
