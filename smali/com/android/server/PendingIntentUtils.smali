.class public Lcom/android/server/PendingIntentUtils;
.super Ljava/lang/Object;
.source "PendingIntentUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 35
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 36
    .local v0, "options":Landroid/app/BroadcastOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    .line 37
    if-nez p0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 41
    return-object p0
.end method
