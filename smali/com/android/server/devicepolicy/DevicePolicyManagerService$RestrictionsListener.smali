.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RestrictionsListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1024
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mContext:Landroid/content/Context;

    .line 1025
    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 1029
    nop

    .line 1030
    const-string/jumbo v0, "no_sharing_into_profile"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1031
    .local v1, "newlyDisallowed":Z
    nop

    .line 1032
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1033
    .local v0, "previouslyDisallowed":Z
    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1035
    .local v2, "restrictionChanged":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1037
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.action.DATA_SHARING_RESTRICTION_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2300(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1041
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1042
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1044
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
