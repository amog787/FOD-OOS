.class Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;
.super Ljava/lang/Object;
.source "PermissionMonitor.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PermissionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageListObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PermissionMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/PermissionMonitor;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/PermissionMonitor;Lcom/android/server/connectivity/PermissionMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/PermissionMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/PermissionMonitor$1;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;-><init>(Lcom/android/server/connectivity/PermissionMonitor;)V

    return-void
.end method

.method private getPermissionForUid(I)I
    .locals 8
    .param p1, "uid"    # I

    .line 108
    const/4 v0, 0x0

    .line 111
    .local v0, "permission":I
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->access$000(Lcom/android/server/connectivity/PermissionMonitor;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 113
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 114
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-static {v5, v4}, Lcom/android/server/connectivity/PermissionMonitor;->access$100(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 115
    .local v5, "app":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_0

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 116
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    invoke-static {v6, v7}, Lcom/android/server/connectivity/PermissionMonitor;->access$200([Ljava/lang/String;[I)I

    move-result v6

    or-int/2addr v0, v6

    .line 113
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "app":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, -0x1

    .line 124
    :cond_2
    return v0
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 129
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->getPermissionForUid(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsForUid(II)V

    .line 130
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 134
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->getPermissionForUid(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsForUid(II)V

    .line 135
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 139
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;->getPermissionForUid(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsForUid(II)V

    .line 140
    return-void
.end method
