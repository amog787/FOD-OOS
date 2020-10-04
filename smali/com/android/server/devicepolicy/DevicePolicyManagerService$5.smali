.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$options:Landroid/app/BroadcastOptions;

.field final synthetic val$result:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/BroadcastReceiver;Landroid/content/Intent;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Landroid/app/BroadcastOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 2917
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$result:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$options:Landroid/app/BroadcastOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 2920
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$result:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2921
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$options:Landroid/app/BroadcastOptions;

    .line 2922
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$result:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2921
    invoke-virtual/range {v1 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2925
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$admin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$options:Landroid/app/BroadcastOptions;

    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2927
    :goto_0
    return-void
.end method
