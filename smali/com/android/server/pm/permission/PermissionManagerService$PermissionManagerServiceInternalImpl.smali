.class Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
.super Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionManagerServiceInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .locals 0

    .line 4763
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/permission/PermissionManagerService$1;

    .line 4763
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    return-void
.end method


# virtual methods
.method public addAllPermissionGroups(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 4788
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$900(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 4789
    return-void
.end method

.method public addAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 4784
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$800(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 4785
    return-void
.end method

.method public addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 4967
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    .line 4969
    return-void
.end method

.method public backupRuntimePermissions(Landroid/os/UserHandle;)[B
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 4950
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)[B

    move-result-object v0

    return-object v0
.end method

.method public enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 4860
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1900(Lcom/android/server/pm/permission/PermissionManagerService;IIZZLjava/lang/String;)V

    .line 4866
    return-void
.end method

.method public enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 4846
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1800(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V

    .line 4848
    return-void
.end method

.method public enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z
    .param p6, "message"    # Ljava/lang/String;

    .line 4853
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1800(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V

    .line 4855
    return-void
.end method

.method public enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 4870
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2000(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V

    .line 4871
    return-void
.end method

.method public getAllPermissions()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/permission/BasePermission;",
            ">;"
        }
    .end annotation

    .line 4931
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4933
    .local v0, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4934
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 4936
    .local v2, "numTotalPermissions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 4937
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 4938
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v4, :cond_0

    .line 4939
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4936
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4942
    .end local v2    # "numTotalPermissions":I
    .end local v3    # "i":I
    :cond_1
    monitor-exit v1

    .line 4944
    return-object v0

    .line 4942
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAllPermissionsWithProtection(I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "protection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 4886
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4888
    .local v0, "matchingPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4889
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 4891
    .local v2, "numTotalPermissions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 4892
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 4894
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, v4, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtection()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 4895
    iget-object v5, v4, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    const/4 v6, 0x0

    .line 4896
    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Landroid/content/pm/parsing/component/ParsedPermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 4895
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4891
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4899
    .end local v2    # "numTotalPermissions":I
    .end local v3    # "i":I
    :cond_1
    monitor-exit v1

    .line 4901
    return-object v0

    .line 4899
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAllPermissionsWithProtectionFlags(I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "protectionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 4907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4909
    .local v0, "matchingPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4910
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 4912
    .local v2, "numTotalPermissions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 4913
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 4915
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, v4, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtectionFlags()I

    move-result v5

    and-int/2addr v5, p1

    if-ne v5, p1, :cond_0

    .line 4917
    iget-object v5, v4, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/parsing/component/ParsedPermission;

    const/4 v6, 0x0

    .line 4918
    invoke-static {v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Landroid/content/pm/parsing/component/ParsedPermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 4917
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4912
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4921
    .end local v2    # "numTotalPermissions":I
    .end local v3    # "i":I
    :cond_1
    monitor-exit v1

    .line 4923
    return-object v0

    .line 4921
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 4840
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 4841
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 4840
    return-object v0
.end method

.method public getCheckPermissionDelegate()Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;
    .locals 2

    .line 4980
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4981
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2800(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4982
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDefaultBrowser(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 5096
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5097
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    move-result-object v1

    .line 5098
    .local v1, "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5099
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5098
    .end local v1    # "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getDefaultDialer(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 5105
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5106
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

    move-result-object v1

    .line 5107
    .local v1, "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5108
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;->getDefaultDialer(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5107
    .end local v1    # "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getDefaultHome(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 5114
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5115
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3200(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

    move-result-object v1

    .line 5116
    .local v1, "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5117
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5116
    .end local v1    # "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPermissionSettings()Lcom/android/server/pm/permission/PermissionSettings;
    .locals 1

    .line 4874
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .locals 2
    .param p1, "permName"    # Ljava/lang/String;

    .line 4878
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4879
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4880
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5138
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5139
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v1

    .line 5140
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V

    .line 5141
    monitor-exit v0

    .line 5142
    return-void

    .line 5141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5122
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5123
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v1

    .line 5124
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    .line 5125
    monitor-exit v0

    .line 5126
    return-void

    .line 5125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5130
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5131
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v1

    .line 5132
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V

    .line 5133
    monitor-exit v0

    .line 5134
    return-void

    .line 5133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public grantRequestedRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I[Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userIds"    # [I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I

    .line 4797
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 4798
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v5

    .line 4797
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 4799
    return-void
.end method

.method public isPermissionsReviewRequired(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 4771
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$600(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$resetAllRuntimePermissions$0$PermissionManagerService$PermissionManagerServiceInternalImpl(ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4836
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    return-void
.end method

.method public onNewUserCreated(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 5146
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissions(I)V

    .line 5147
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5149
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 5150
    invoke-static {v4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v4

    .line 5149
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 5151
    monitor-exit v0

    .line 5152
    return-void

    .line 5151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAllPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "chatty"    # Z

    .line 4792
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 4793
    return-void
.end method

.method public removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 4974
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2700(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    .line 4976
    return-void
.end method

.method public resetAllRuntimePermissions(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 4835
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$PermissionManagerServiceInternalImpl$2kdF3JYzzSSosgEEexHTRTinsxQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$PermissionManagerServiceInternalImpl$2kdF3JYzzSSosgEEexHTRTinsxQ;-><init>(Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;I)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4837
    return-void
.end method

.method public resetRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userId"    # I

    .line 4831
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 4832
    return-void
.end method

.method public restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 4961
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 4962
    return-void
.end method

.method public restoreRuntimePermissions([BLandroid/os/UserHandle;)V
    .locals 1
    .param p1, "backup"    # [B
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 4955
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2400(Lcom/android/server/pm/permission/PermissionManagerService;[BLandroid/os/UserHandle;)V

    .line 4956
    return-void
.end method

.method public retainHardAndSoftRestrictedPermissions(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5156
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5157
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5158
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5160
    .local v2, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 5161
    .local v3, "basePermission":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5162
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 5164
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "basePermission":Lcom/android/server/pm/permission/BasePermission;
    :cond_1
    goto :goto_0

    .line 5165
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    monitor-exit v0

    .line 5166
    return-void

    .line 5165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public revokeRuntimePermissionsIfGroupChanged(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "oldPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4779
    .local p3, "allPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 4780
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v1

    .line 4779
    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$700(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 4781
    return-void
.end method

.method public setAutoRevokeWhitelisted(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "whitelisted"    # Z
    .param p3, "userId"    # I

    .line 4816
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->setAutoRevokeWhitelisted(Ljava/lang/String;ZI)Z

    .line 4818
    return-void
.end method

.method public setCheckPermissionDelegate(Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;)V
    .locals 2
    .param p1, "delegate"    # Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    .line 4987
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4988
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2800(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4989
    :cond_0
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 4991
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2802(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;)Landroid/permission/PermissionManagerInternal$CheckPermissionDelegate;

    .line 4992
    monitor-exit v0

    .line 4993
    return-void

    .line 4992
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDefaultBrowser(Ljava/lang/String;ZZI)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "async"    # Z
    .param p3, "doGrant"    # Z
    .param p4, "userId"    # I

    .line 5005
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3000(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZZI)Z

    .line 5006
    return-void
.end method

.method public setDefaultBrowserProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    .line 4997
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4998
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2902(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;

    .line 4999
    monitor-exit v0

    .line 5000
    return-void

    .line 4999
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDefaultDialerProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

    .line 5010
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5011
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3102(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultDialerProvider;

    .line 5012
    monitor-exit v0

    .line 5013
    return-void

    .line 5012
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDefaultHome(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 5024
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 5025
    return-void

    .line 5028
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5029
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3200(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

    move-result-object v1

    .line 5030
    .local v1, "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5031
    if-nez v1, :cond_1

    .line 5032
    return-void

    .line 5034
    :cond_1
    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;->setDefaultHomeAsync(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 5035
    return-void

    .line 5030
    .end local v1    # "provider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setDefaultHomeProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

    .line 5017
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5018
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3202(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;

    .line 5019
    monitor-exit v0

    .line 5020
    return-void

    .line 5019
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDialerAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 5039
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5040
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setDialerAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 5041
    monitor-exit v0

    .line 5042
    return-void

    .line 5041
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 5046
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5047
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 5048
    monitor-exit v0

    .line 5049
    return-void

    .line 5048
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLocationPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 5053
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5054
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setLocationPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 5055
    monitor-exit v0

    .line 5056
    return-void

    .line 5055
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSimCallManagerPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 5060
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5061
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setSimCallManagerPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 5062
    monitor-exit v0

    .line 5063
    return-void

    .line 5062
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSmsAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 5067
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5068
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setSmsAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 5069
    monitor-exit v0

    .line 5070
    return-void

    .line 5069
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;

    .line 5074
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5075
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setSyncAdapterPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$SyncAdapterPackagesProvider;)V

    .line 5076
    monitor-exit v0

    .line 5077
    return-void

    .line 5076
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUseOpenWifiAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 5081
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5082
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setUseOpenWifiAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 5083
    monitor-exit v0

    .line 5084
    return-void

    .line 5083
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVoiceInteractionPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;

    .line 5088
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5089
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setVoiceInteractionPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 5090
    monitor-exit v0

    .line 5091
    return-void

    .line 5090
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setWhitelistedRestrictedPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;II)V
    .locals 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "userIds"    # [I
    .param p4, "callingUid"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 4804
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 4805
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v6

    .line 4804
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 4806
    return-void
.end method

.method public setWhitelistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 4810
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/util/List;II)Z

    .line 4812
    return-void
.end method

.method public systemReady()V
    .locals 1

    .line 4766
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$500(Lcom/android/server/pm/permission/PermissionManagerService;)V

    .line 4767
    return-void
.end method

.method public updateAllPermissions(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "sdkUpdated"    # Z

    .line 4826
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 4827
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 4828
    return-void
.end method

.method public updatePermissions(Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 4821
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 4822
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 4823
    return-void
.end method
