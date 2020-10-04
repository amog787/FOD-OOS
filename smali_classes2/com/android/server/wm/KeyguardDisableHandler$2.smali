.class Lcom/android/server/wm/KeyguardDisableHandler$2;
.super Ljava/lang/Object;
.source "KeyguardDisableHandler.java"

# interfaces
.implements Lcom/android/server/wm/KeyguardDisableHandler$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/KeyguardDisableHandler;->create(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/Handler;)Lcom/android/server/wm/KeyguardDisableHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$policy:Lcom/android/server/policy/WindowManagerPolicy;

.field final synthetic val$userManager:Landroid/os/UserManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/UserManagerInternal;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$policy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object p2, p0, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$userManager:Landroid/os/UserManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dpmRequiresPassword(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 132
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyCache;->getPasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$policy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 149
    return-void
.end method

.method public getProfileParentId(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$userManager:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    return v0
.end method

.method public isKeyguardSecure(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$policy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardSecure(I)Z

    move-result v0

    return v0
.end method
