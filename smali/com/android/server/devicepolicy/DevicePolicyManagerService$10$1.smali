.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$10$1;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;

    .line 6693
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10$1;->this$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 6696
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10$1;->this$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$result:Landroid/os/RemoteCallback;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 6697
    return-void
.end method
