.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$16;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$deviceOwnerUser:Landroid/os/UserHandle;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 11780
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$16;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$16;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$16;->val$deviceOwnerUser:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 11783
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$16;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$16;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$16;->val$deviceOwnerUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 11784
    return-void
.end method
