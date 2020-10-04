.class public final Lcom/android/server/policy/RestartAction;
.super Lcom/android/internal/globalactions/SinglePressAction;
.source "RestartAction.java"

# interfaces
.implements Lcom/android/internal/globalactions/LongPressAction;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 31
    const v0, 0x1080503

    const v1, 0x10402c7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/globalactions/SinglePressAction;-><init>(II)V

    .line 32
    iput-object p1, p0, Lcom/android/server/policy/RestartAction;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/server/policy/RestartAction;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 34
    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/android/server/policy/RestartAction;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 39
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/android/server/policy/RestartAction;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    .line 41
    return v2

    .line 43
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onPress()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/server/policy/RestartAction;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    .line 59
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .line 48
    const/4 v0, 0x1

    return v0
.end method
