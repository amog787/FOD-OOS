.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$result:Landroid/os/RemoteCallback;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Intent;ILandroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 6689
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$userHandle:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$result:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 6692
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$intent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;->val$userHandle:I

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10$1;

    invoke-direct {v5, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$10$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$10;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 6699
    return-void
.end method
