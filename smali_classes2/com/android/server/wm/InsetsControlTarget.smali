.class interface abstract Lcom/android/server/wm/InsetsControlTarget;
.super Ljava/lang/Object;
.source "InsetsControlTarget.java"


# direct methods
.method public static asWindowOrNull(Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p0, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 75
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public canShowTransient()Z
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestedInsetsState()Landroid/view/InsetsState;
    .locals 1

    .line 45
    sget-object v0, Landroid/view/InsetsState;->EMPTY:Landroid/view/InsetsState;

    return-object v0
.end method

.method public getWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideInsets(IZ)V
    .locals 0
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 64
    return-void
.end method

.method public notifyInsetsControlChanged()V
    .locals 0

    .line 32
    return-void
.end method

.method public showInsets(IZ)V
    .locals 0
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z

    .line 55
    return-void
.end method
