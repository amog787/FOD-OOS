.class Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;
.super Ljava/lang/Object;
.source "CrossProfileAppsServiceImpl.java"

# interfaces
.implements Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CrossProfileAppsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InjectorImpl"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    .line 756
    return-void
.end method


# virtual methods
.method public checkComponentPermission(Ljava/lang/String;IIZ)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "owningUid"    # I
    .param p4, "exported"    # Z

    .line 846
    invoke-static {p1, p2, p3, p4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method public clearCallingIdentity()J
    .locals 2

    .line 780
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 1

    .line 820
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method public getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 1

    .line 825
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object v0
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public getCallingPid()I
    .locals 1

    .line 765
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    return v0
.end method

.method public getCallingUid()I
    .locals 1

    .line 760
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getCallingUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 775
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getCallingUserId()I
    .locals 1

    .line 770
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .locals 1

    .line 835
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method public getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 830
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 805
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method public killUid(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 851
    nop

    .line 852
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 853
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 851
    const-string/jumbo v2, "permissions revoked"

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    .line 855
    return-void
.end method

.method public restoreCallingIdentity(J)V
    .locals 0
    .param p1, "token"    # J

    .line 785
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 786
    return-void
.end method

.method public sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 840
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 841
    return-void
.end method

.method public final withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 795
    .local p1, "action":Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;, "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<TT;>;"
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .locals 0
    .param p1, "action"    # Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;

    .line 790
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 791
    return-void
.end method
