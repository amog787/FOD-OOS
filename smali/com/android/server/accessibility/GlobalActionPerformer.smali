.class public Lcom/android/server/accessibility/GlobalActionPerformer;
.super Ljava/lang/Object;
.source "GlobalActionPerformer.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mScreenshotHelperSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/util/ScreenshotHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/wm/WindowManagerInternal;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/util/ScreenshotHelper;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p3, "screenshotHelperSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/internal/util/ScreenshotHelper;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/GlobalActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;)V

    .line 62
    iput-object p3, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    .line 63
    return-void
.end method

.method private expandNotifications()V
    .locals 4

    .line 130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 132
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 134
    .local v2, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V

    .line 136
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    return-void
.end method

.method private expandQuickSettings()V
    .locals 4

    .line 140
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 142
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 144
    .local v2, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    return-void
.end method

.method private lockScreen()Z
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 186
    iget-object v0, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->lockNow()V

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method private openRecents()Z
    .locals 4

    .line 150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 152
    .local v0, "token":J
    :try_start_0
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .local v2, "statusBarService":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-nez v2, :cond_0

    .line 155
    const/4 v3, 0x0

    .line 159
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    return v3

    .line 157
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .end local v2    # "statusBarService":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    nop

    .line 161
    const/4 v2, 0x1

    return v2

    .line 159
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDownAndUpKeyEvents(I)V
    .locals 11
    .param p1, "keyCode"    # I

    .line 109
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 112
    .local v0, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 113
    .local v9, "downTime":J
    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    move-wide v5, v9

    move-wide v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/GlobalActionPerformer;->sendKeyEventIdentityCleared(IIJJ)V

    .line 114
    nop

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 114
    const/4 v4, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/GlobalActionPerformer;->sendKeyEventIdentityCleared(IIJJ)V

    .line 117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    return-void
.end method

.method private sendKeyEventIdentityCleared(IIJJ)V
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "action"    # I
    .param p3, "downTime"    # J
    .param p5, "time"    # J

    .line 121
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    move v4, p2

    move v5, p1

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 124
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 125
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 126
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 127
    return-void
.end method

.method private showGlobalActions()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->showGlobalActions()V

    .line 166
    return-void
.end method

.method private takeScreenshot()Z
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ScreenshotHelper;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper;

    iget-object v1, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    .line 193
    .local v0, "screenshotHelper":Lcom/android/internal/util/ScreenshotHelper;
    :goto_0
    new-instance v1, Landroid/os/Handler;

    .line 194
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZLandroid/os/Handler;)V

    .line 195
    return v2
.end method

.method private toggleSplitScreen()Z
    .locals 4

    .line 169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 171
    .local v0, "token":J
    :try_start_0
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .local v2, "statusBarService":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-nez v2, :cond_0

    .line 174
    const/4 v3, 0x0

    .line 178
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    return v3

    .line 176
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .end local v2    # "statusBarService":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    nop

    .line 180
    const/4 v2, 0x1

    return v2

    .line 178
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public performGlobalAction(I)Z
    .locals 4
    .param p1, "action"    # I

    .line 66
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 68
    .local v0, "identity":J
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 102
    const/4 v2, 0x0

    .line 104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    return v2

    .line 99
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/GlobalActionPerformer;->takeScreenshot()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    return v2

    .line 96
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/accessibility/GlobalActionPerformer;->lockScreen()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    return v2

    .line 93
    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/accessibility/GlobalActionPerformer;->toggleSplitScreen()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    return v2

    .line 89
    :pswitch_3
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/accessibility/GlobalActionPerformer;->showGlobalActions()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    nop

    .line 104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    return v2

    .line 85
    :pswitch_4
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/accessibility/GlobalActionPerformer;->expandQuickSettings()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    nop

    .line 104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    return v2

    .line 81
    :pswitch_5
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/accessibility/GlobalActionPerformer;->expandNotifications()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 83
    nop

    .line 104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    return v2

    .line 78
    :pswitch_6
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/accessibility/GlobalActionPerformer;->openRecents()Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    return v2

    .line 74
    :pswitch_7
    const/4 v3, 0x3

    :try_start_7
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/GlobalActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 76
    nop

    .line 104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    return v2

    .line 70
    :pswitch_8
    const/4 v3, 0x4

    :try_start_8
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/GlobalActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 72
    nop

    .line 104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    return v2

    .line 104
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
