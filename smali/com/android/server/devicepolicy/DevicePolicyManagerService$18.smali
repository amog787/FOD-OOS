.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$18;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$packageActiveAdmins:Ljava/util/List;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 12961
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$18;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$18;->val$packageActiveAdmins:Ljava/util/List;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$18;->val$userId:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$18;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 12964
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$18;->val$packageActiveAdmins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 12965
    .local v1, "activeAdmin":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$18;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$18;->val$userId:I

    invoke-static {v2, v1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V

    .line 12966
    .end local v1    # "activeAdmin":Landroid/content/ComponentName;
    goto :goto_0

    .line 12967
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$18;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$18;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$18;->val$userId:I

    invoke-static {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 12968
    return-void
.end method
