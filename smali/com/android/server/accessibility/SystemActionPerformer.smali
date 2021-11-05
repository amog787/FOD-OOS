.class public Lcom/android/server/accessibility/SystemActionPerformer;
.super Ljava/lang/Object;
.source "SystemActionPerformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;
    }
.end annotation


# static fields
.field private static final EXTRA_FOCUS_WINDOW:Ljava/lang/String; = "focusWindow"

.field private static final EXTRA_LONGSHOT:Ljava/lang/String; = "longshot"

.field private static final EXTRA_VOICE_LONGSHOT:Ljava/lang/String; = "voiceLongshot"

.field private static final TAG:Ljava/lang/String; = "SystemActionPerformer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private final mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private final mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private final mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private final mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private final mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private final mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private final mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private final mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

.field private final mRegisteredSystemActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotHelperSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/util/ScreenshotHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemActionLock:Ljava/lang/Object;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/accessibility/SystemActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
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

    .line 112
    .local p3, "screenshotHelperSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/internal/util/ScreenshotHelper;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/accessibility/SystemActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p4, "listener"    # Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/wm/WindowManagerInternal;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/util/ScreenshotHelper;",
            ">;",
            "Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;",
            ")V"
        }
    .end annotation

    .line 119
    .local p3, "screenshotHelperSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/internal/util/ScreenshotHelper;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 120
    iput-object p1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 122
    iput-object p4, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

    .line 123
    iput-object p3, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    .line 125
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10400db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 129
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10400d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 133
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10400e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 137
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10400dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 141
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10400e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 145
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10400e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 149
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10400dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 153
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10400e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 157
    return-void
.end method

.method private addLegacySystemActions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p1, "systemActions":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x4

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 225
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x5

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 229
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x6

    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 233
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/16 v1, 0x8

    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 237
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 239
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/16 v1, 0x9

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 241
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 243
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_7
    return-void
.end method

.method private expandNotifications()V
    .locals 4

    .line 336
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 338
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 340
    .local v2, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V

    .line 342
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 343
    return-void
.end method

.method private expandQuickSettings()V
    .locals 4

    .line 346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 348
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 350
    .local v2, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    .line 352
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    return-void
.end method

.method private lockScreen()Z
    .locals 5

    .line 390
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 392
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->lockNow()V

    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method private openRecents()Z
    .locals 4

    .line 356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 358
    .local v0, "token":J
    :try_start_0
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .local v2, "statusBarService":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-nez v2, :cond_0

    .line 361
    const/4 v3, 0x0

    .line 365
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    return v3

    .line 363
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    .end local v2    # "statusBarService":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    nop

    .line 367
    const/4 v2, 0x1

    return v2

    .line 365
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    throw v2
.end method

.method private sendDownAndUpKeyEvents(I)V
    .locals 11
    .param p1, "keyCode"    # I

    .line 315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 318
    .local v0, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 319
    .local v9, "downTime":J
    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    move-wide v5, v9

    move-wide v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/SystemActionPerformer;->sendKeyEventIdentityCleared(IIJJ)V

    .line 320
    nop

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 320
    const/4 v4, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/SystemActionPerformer;->sendKeyEventIdentityCleared(IIJJ)V

    .line 323
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    return-void
.end method

.method private sendKeyEventIdentityCleared(IIJJ)V
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "action"    # I
    .param p3, "downTime"    # J
    .param p5, "time"    # J

    .line 327
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

    .line 330
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 331
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 332
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 333
    return-void
.end method

.method private showGlobalActions()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->showGlobalActions()V

    .line 372
    return-void
.end method

.method private takeScreenshot()Z
    .locals 10

    .line 397
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    .line 398
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ScreenshotHelper;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper;

    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    .line 400
    .local v0, "screenshotHelper":Lcom/android/internal/util/ScreenshotHelper;
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 401
    .local v1, "screenshotBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "voiceLongshot"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 402
    const-string/jumbo v2, "longshot"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 403
    const-string v2, "focusWindow"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotHelper;->getScreenshotHelperInjector()Lcom/android/internal/util/ScreenshotHelperInjector;

    move-result-object v9

    .line 406
    .local v9, "screenshotHelperInjector":Lcom/android/internal/util/ScreenshotHelperInjector;
    if-eqz v9, :cond_1

    .line 407
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-instance v6, Landroid/os/Handler;

    .line 408
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v7, 0x0

    .line 407
    move-object v2, v9

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/util/ScreenshotHelperInjector;->takeScreenshot(IZZLandroid/os/Handler;ZLandroid/os/Bundle;)V

    .line 410
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private toggleSplitScreen()Z
    .locals 4

    .line 375
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 377
    .local v0, "token":J
    :try_start_0
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    .local v2, "statusBarService":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-nez v2, :cond_0

    .line 380
    const/4 v3, 0x0

    .line 384
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 380
    return v3

    .line 382
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    .end local v2    # "statusBarService":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    nop

    .line 386
    const/4 v2, 0x1

    return v2

    .line 384
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    throw v2
.end method


# virtual methods
.method public getSystemActions()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "systemActions":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 203
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/RemoteAction;>;"
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 204
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 205
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/RemoteAction;

    invoke-virtual {v6}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 206
    .local v4, "systemAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/RemoteAction;>;"
    .end local v4    # "systemAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    goto :goto_0

    .line 210
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SystemActionPerformer;->addLegacySystemActions(Ljava/util/List;)V

    .line 211
    monitor-exit v1

    .line 212
    return-object v0

    .line 211
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public performSystemAction(I)Z
    .locals 9
    .param p1, "actionId"    # I

    .line 251
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 253
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RemoteAction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    .local v3, "registeredAction":Landroid/app/RemoteAction;
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 259
    :try_start_2
    invoke-virtual {v3}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/PendingIntent;->send()V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 260
    return v5

    .line 261
    :catch_0
    move-exception v5

    .line 262
    .local v5, "ex":Landroid/app/PendingIntent$CanceledException;
    :try_start_4
    const-string v6, "SystemActionPerformer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canceled PendingIntent for global action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v3}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 262
    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    nop

    .end local v5    # "ex":Landroid/app/PendingIntent$CanceledException;
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    return v4

    .line 269
    .end local v3    # "registeredAction":Landroid/app/RemoteAction;
    :cond_0
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 273
    packed-switch p1, :pswitch_data_0

    .line 306
    :try_start_6
    const-string v2, "SystemActionPerformer"

    goto :goto_0

    .line 303
    :pswitch_0
    const/16 v2, 0x4f

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 304
    nop

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    return v5

    .line 301
    :pswitch_1
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->takeScreenshot()Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 301
    return v2

    .line 299
    :pswitch_2
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->lockScreen()Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    return v2

    .line 297
    :pswitch_3
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->toggleSplitScreen()Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 297
    return v2

    .line 293
    :pswitch_4
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->showGlobalActions()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 294
    nop

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    return v5

    .line 289
    :pswitch_5
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->expandQuickSettings()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 290
    nop

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    return v5

    .line 285
    :pswitch_6
    :try_start_c
    invoke-direct {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->expandNotifications()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 286
    nop

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 286
    return v5

    .line 283
    :pswitch_7
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->openRecents()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    return v2

    .line 279
    :pswitch_8
    const/4 v2, 0x3

    :try_start_e
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 280
    nop

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    return v5

    .line 275
    :pswitch_9
    const/4 v2, 0x4

    :try_start_f
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 276
    nop

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    return v5

    .line 306
    :goto_0
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid action id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 307
    nop

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    return v4

    .line 269
    :catchall_0
    move-exception v3

    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/accessibility/SystemActionPerformer;
    .end local p1    # "actionId":I
    :try_start_12
    throw v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 310
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/SystemActionPerformer;
    .restart local p1    # "actionId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 311
    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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

.method public registerSystemAction(ILandroid/app/RemoteAction;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "action"    # Landroid/app/RemoteAction;

    .line 169
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0}, Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;->onSystemActionsChanged()V

    .line 175
    :cond_0
    return-void

    .line 171
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterSystemAction(I)V
    .locals 3
    .param p1, "id"    # I

    .line 187
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0}, Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;->onSystemActionsChanged()V

    .line 193
    :cond_0
    return-void

    .line 189
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
