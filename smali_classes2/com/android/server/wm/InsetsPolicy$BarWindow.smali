.class Lcom/android/server/wm/InsetsPolicy$BarWindow;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarWindow"
.end annotation


# instance fields
.field private final mId:I

.field private mState:I

.field final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InsetsPolicy;I)V
    .locals 0
    .param p2, "id"    # I

    .line 499
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    .line 500
    iput p2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    .line 501
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InsetsPolicy$BarWindow;
    .param p1, "x1"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "x2"    # I

    .line 493
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->updateVisibility(Lcom/android/server/wm/InsetsControlTarget;I)V

    return-void
.end method

.method private setVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .line 512
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 513
    .local v0, "state":I
    :goto_0
    iget v1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    if-eq v1, v0, :cond_1

    .line 514
    iput v0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    .line 515
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->access$300(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 516
    invoke-static {v2}, Lcom/android/server/wm/InsetsPolicy;->access$400(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    .line 515
    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setWindowState(III)V

    .line 519
    iget v1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    invoke-static {v1, p1, v0}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->notifyWindowStateChange(IZI)V

    .line 522
    :cond_1
    return-void
.end method

.method private updateVisibility(Lcom/android/server/wm/InsetsControlTarget;I)V
    .locals 2
    .param p1, "controlTarget"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "type"    # I

    .line 506
    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowState;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 507
    .local v0, "controllingWin":Lcom/android/server/wm/WindowState;
    :goto_0
    if-eqz v0, :cond_2

    .line 508
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 507
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->setVisible(Z)V

    .line 509
    return-void
.end method
