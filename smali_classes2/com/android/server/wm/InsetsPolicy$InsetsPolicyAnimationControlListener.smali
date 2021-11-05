.class Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;
.super Landroid/view/InsetsController$InternalAnimationControlListener;
.source "InsetsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsetsPolicyAnimationControlListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;
    }
.end annotation


# instance fields
.field mControlCallbacks:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;

.field mFinishCallback:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InsetsPolicy;ZLjava/lang/Runnable;I)V
    .locals 6
    .param p2, "show"    # Z
    .param p3, "finishCallback"    # Ljava/lang/Runnable;
    .param p4, "types"    # I

    .line 530
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 532
    nop

    .line 533
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->access$400(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, -0x3d600000    # -80.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int v5, p1

    .line 532
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/InsetsController$InternalAnimationControlListener;-><init>(ZZIZI)V

    .line 535
    iput-object p3, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->mFinishCallback:Ljava/lang/Runnable;

    .line 536
    new-instance p1, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;

    invoke-direct {p1, p0, p0}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;-><init>(Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->mControlCallbacks:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;

    .line 537
    return-void
.end method


# virtual methods
.method protected onAnimationFinish()V
    .locals 2

    .line 541
    invoke-super {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->onAnimationFinish()V

    .line 542
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    return-void
.end method
