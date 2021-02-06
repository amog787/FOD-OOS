.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$choosePrivateKeyAlias$29(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/IBinder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$response:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 6669
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->val$response:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 6672
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->getResultData()Ljava/lang/String;

    move-result-object v0

    .line 6673
    .local v0, "chosenAlias":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->val$response:Landroid/os/IBinder;

    invoke-static {v1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$4100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6674
    return-void
.end method
