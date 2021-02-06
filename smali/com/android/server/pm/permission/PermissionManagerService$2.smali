.class Lcom/android/server/pm/permission/PermissionManagerService$2;
.super Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/permission/PermissionManagerService;->resetRuntimePermissionsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;

.field final synthetic val$asyncUpdatedUsers:Landroid/util/IntArray;

.field final synthetic val$permissionRemoved:[Z

.field final synthetic val$revokedPermissions:Landroid/util/ArraySet;

.field final synthetic val$syncUpdatedUsers:Landroid/util/IntArray;


# direct methods
.method constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/util/ArraySet;Landroid/util/IntArray;Landroid/util/IntArray;[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 1743
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$revokedPermissions:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$syncUpdatedUsers:Landroid/util/IntArray;

    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$asyncUpdatedUsers:Landroid/util/IntArray;

    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$permissionRemoved:[Z

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .locals 1
    .param p1, "appId"    # I
    .param p2, "userId"    # I

    .line 1745
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onGidsChanged(II)V

    .line 1746
    return-void
.end method

.method public onInstallPermissionGranted()V
    .locals 1

    .line 1757
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionGranted()V

    .line 1758
    return-void
.end method

.method public onInstallPermissionRevoked()V
    .locals 1

    .line 1767
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionRevoked()V

    .line 1768
    return-void
.end method

.method public onInstallPermissionUpdated()V
    .locals 1

    .line 1789
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionUpdated()V

    .line 1790
    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 1799
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionUpdatedNotifyListener(I)V

    .line 1800
    return-void
.end method

.method public onPermissionChanged()V
    .locals 1

    .line 1749
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionChanged()V

    .line 1750
    return-void
.end method

.method public onPermissionGranted(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 1753
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionGranted(II)V

    .line 1754
    return-void
.end method

.method public onPermissionRemoved()V
    .locals 3

    .line 1785
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$permissionRemoved:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1786
    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 1761
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$revokedPermissions:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1763
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$syncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {v0, p2}, Landroid/util/IntArray;->add(I)V

    .line 1764
    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .locals 5
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z

    .line 1771
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 1772
    .local v2, "userId":I
    if-eqz p2, :cond_0

    .line 1773
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$syncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    .line 1774
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$asyncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->remove(I)V

    goto :goto_1

    .line 1777
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$syncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1778
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->val$asyncUpdatedUsers:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    .line 1771
    .end local v2    # "userId":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1782
    :cond_2
    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .locals 1
    .param p1, "updatedUserIds"    # [I
    .param p2, "sync"    # Z
    .param p3, "uid"    # I

    .line 1794
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService$2;->onPermissionUpdated([IZ)V

    .line 1795
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1796
    return-void
.end method
