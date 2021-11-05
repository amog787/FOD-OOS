.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$result:Landroid/os/RemoteCallback;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 7448
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$result:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 7451
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->val$result:Landroid/os/RemoteCallback;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$8;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 7452
    return-void
.end method
