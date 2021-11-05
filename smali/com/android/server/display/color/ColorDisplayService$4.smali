.class Lcom/android/server/display/color/ColorDisplayService$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/color/ColorDisplayService;->applyTintForTrueTone(Lcom/android/server/display/color/TintController;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;

.field final synthetic val$tintController:Lcom/android/server/display/color/TintController;

.field final synthetic val$to:I

.field final synthetic val$trueToneActivated:Z


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;ZILcom/android/server/display/color/TintController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 956
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iput-boolean p2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$trueToneActivated:Z

    iput p3, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$to:I

    iput-object p4, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/TintController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->mIsCancelled:Z

    .line 964
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$trueToneActivated:Z

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$2400(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 965
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-boolean v2, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$trueToneActivated:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-static {v1, v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2500(Lcom/android/server/display/color/ColorDisplayService;I)V

    .line 967
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 971
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->mIsCancelled:Z

    if-nez v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$to:I

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2600(Lcom/android/server/display/color/ColorDisplayService;I)V

    .line 974
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2702(Lcom/android/server/display/color/ColorDisplayService;I)I

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$tintController:Lcom/android/server/display/color/TintController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/TintController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 978
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$trueToneActivated:Z

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2400(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 979
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$4;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService$4;->val$trueToneActivated:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2500(Lcom/android/server/display/color/ColorDisplayService;I)V

    .line 981
    :cond_2
    return-void
.end method
