.class public Lcom/android/server/pm/PermissionPmInjector;
.super Ljava/lang/Object;
.source "PermissionPmInjector.java"


# static fields
.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String;

.field private static final WHITELISTPACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private static mPms:Lcom/android/server/pm/PackageManagerService;

.field private static mPmsInner:Lcom/android/server/pm/PackageManagerService$PmsInner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    const-class v0, Lcom/android/server/pm/PermissionPmInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    .line 55
    const-string v0, "com.google.android.syncadapters.contacts"

    const-string v1, "com.oneplus.cloud"

    const-string/jumbo v2, "net.oneplus.weather"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PermissionPmInjector;->WHITELISTPACKAGES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initInstance(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;Lcom/android/server/pm/PackageManagerService$PmsInner;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "pmsInner"    # Lcom/android/server/pm/PackageManagerService$PmsInner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$PmsInner;",
            ")V"
        }
    .end annotation

    .line 61
    .local p2, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    sget-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initInstance PermissionPmInjector"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sput-object p0, Lcom/android/server/pm/PermissionPmInjector;->mContext:Landroid/content/Context;

    .line 66
    sput-object p1, Lcom/android/server/pm/PermissionPmInjector;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 67
    sput-object p2, Lcom/android/server/pm/PermissionPmInjector;->mPackages:Landroid/util/ArrayMap;

    .line 68
    sput-object p3, Lcom/android/server/pm/PermissionPmInjector;->mPmsInner:Lcom/android/server/pm/PackageManagerService$PmsInner;

    .line 69
    return-void
.end method

.method public static mayClearFlagsForLegacyApp(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "action"    # Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->isInSpecialTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    return p2

    .line 123
    :cond_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 124
    .local v0, "packageManagerInt":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 125
    .local v1, "callingUid":I
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 126
    .local v2, "callingPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.permissioncontroller"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 127
    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.permissioncontroller"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/pm/PermissionPmInjector;->shouldDropPermissionReviewFlagForLegacyApps(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    sget-object v3, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]Clearing permission flags for legacy app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and perm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    and-int/lit8 p2, p2, -0x41

    .line 136
    :cond_2
    return p2

    .line 128
    :cond_3
    :goto_0
    return p2
.end method

.method public static resetApplicationPermissions(I)V
    .locals 5
    .param p0, "userId"    # I

    .line 72
    sget-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    sget-object v0, Lcom/android/server/pm/PermissionPmInjector;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/android/server/pm/PermissionPmInjector;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 79
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    .local v1, "identity":J
    :try_start_1
    sget-object v3, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "resetApplicationPermissions"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v3, Lcom/android/server/pm/PermissionPmInjector;->mPmsInner:Lcom/android/server/pm/PackageManagerService$PmsInner;

    invoke-virtual {v3, p0}, Lcom/android/server/pm/PackageManagerService$PmsInner;->resetAllRuntimePermissions(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    nop

    .line 86
    .end local v1    # "identity":J
    monitor-exit v0

    .line 87
    return-void

    .line 84
    .restart local v1    # "identity":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    nop

    .end local p0    # "userId":I
    throw v3

    .line 86
    .end local v1    # "identity":J
    .restart local p0    # "userId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static resetPackagePermissionState(Ljava/lang/String;)V
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;

    .line 94
    sget-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_PERMISSION_CONTROL_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    .line 98
    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;

    .line 100
    .local v0, "iOPPermissionControlManager":Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;
    if-eqz v0, :cond_1

    .line 101
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v1

    .line 103
    .local v1, "permissionControlService":Landroid/os/Messenger;
    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 105
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v3, "data":Landroid/os/Bundle;
    const-string/jumbo v4, "key_pkg_name"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 109
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 110
    :catch_0
    move-exception v4

    .line 111
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got exception while resetting package permission state for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v1    # "permissionControlService":Landroid/os/Messenger;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private static shouldDropPermissionReviewFlagForLegacyApps(I)Z
    .locals 1
    .param p0, "targetSdk"    # I

    .line 140
    sget-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
