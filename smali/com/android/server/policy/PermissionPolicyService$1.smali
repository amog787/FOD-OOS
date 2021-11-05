.class Lcom/android/server/policy/PermissionPolicyService$1;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PermissionPolicyService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PermissionPolicyService;

    .line 144
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 147
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 148
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, v0}, Lcom/android/server/policy/PermissionPolicyService;->access$100(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, p1, v0}, Lcom/android/server/policy/PermissionPolicyService;->access$200(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V

    .line 151
    :cond_0
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 155
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 156
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, v0}, Lcom/android/server/policy/PermissionPolicyService;->access$100(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, p1, v0}, Lcom/android/server/policy/PermissionPolicyService;->access$200(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V

    .line 158
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, p2}, Lcom/android/server/policy/PermissionPolicyService;->access$300(Lcom/android/server/policy/PermissionPolicyService;I)V

    .line 160
    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 164
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 165
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, v0}, Lcom/android/server/policy/PermissionPolicyService;->access$100(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, p2}, Lcom/android/server/policy/PermissionPolicyService;->access$300(Lcom/android/server/policy/PermissionPolicyService;I)V

    .line 168
    :cond_0
    return-void
.end method
