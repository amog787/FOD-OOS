.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$15;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileEnabled(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$parent:Landroid/content/pm/UserInfo;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8470
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$15;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$15;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$15;->val$parent:Landroid/content/pm/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 8473
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$15;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$15;->val$intent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$15;->val$parent:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 8474
    return-void
.end method
