.class public Lcom/android/server/wm/StatusBarController;
.super Lcom/android/server/wm/BarController;
.source "StatusBarController.java"


# instance fields
.field private final mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;


# direct methods
.method constructor <init>(I)V
    .locals 9
    .param p1, "displayId"    # I

    .line 88
    const-string v1, "StatusBar"

    const/high16 v3, 0x4000000

    const/high16 v4, 0x10000000

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/high16 v7, 0x4000000

    const/16 v8, 0x8

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/BarController;-><init>(Ljava/lang/String;IIIIIII)V

    .line 35
    new-instance v0, Lcom/android/server/wm/StatusBarController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/StatusBarController$1;-><init>(Lcom/android/server/wm/StatusBarController;)V

    iput-object v0, p0, Lcom/android/server/wm/StatusBarController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 96
    return-void
.end method


# virtual methods
.method getAppTransitionListener()Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/StatusBarController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    return-object v0
.end method

.method setTopAppHidesStatusBar(Z)V
    .locals 1
    .param p1, "hidesStatusBar"    # Z

    .line 99
    invoke-virtual {p0}, Lcom/android/server/wm/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 100
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setTopAppHidesStatusBar(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method protected skipAnimation()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/StatusBarController;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
