.class public Lcom/android/server/pm/PermissionPmInjector;
.super Ljava/lang/Object;
.source "PermissionPmInjector.java"


# static fields
.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field private static mPms:Lcom/android/server/pm/PackageManagerService;

.field private static mPmsInner:Lcom/android/server/pm/PackageManagerService$PmsInner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const-class v0, Lcom/android/server/pm/PermissionPmInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x10

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearGrantedByDefaultFlagForNonSystemApps(Landroid/util/ArrayMap;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;ILcom/android/server/pm/Settings;)V
    .locals 17
    .param p1, "mPermissionManager"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "userId"    # I
    .param p3, "mSettings"    # Lcom/android/server/pm/Settings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;",
            "I",
            "Lcom/android/server/pm/Settings;",
            ")V"
        }
    .end annotation

    .line 138
    .local p0, "mPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    move-object/from16 v1, p0

    move/from16 v2, p2

    monitor-enter p0

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "writeRuntimePermissions":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 141
    .local v3, "packageCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_7

    .line 142
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 143
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 146
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v6, :cond_6

    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 147
    move-object/from16 v10, p1

    goto/16 :goto_4

    .line 151
    :cond_0
    const-string v7, "com.google.android.syncadapters.contacts"

    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 152
    move-object/from16 v10, p1

    goto/16 :goto_4

    .line 155
    :cond_1
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 156
    .local v7, "permissionCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v7, :cond_5

    .line 157
    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    .local v9, "permName":Ljava/lang/String;
    nop

    .line 159
    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v10, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v11

    .line 162
    .local v11, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v12

    if-nez v12, :cond_2

    .line 163
    move/from16 v16, v0

    goto :goto_2

    .line 166
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v12

    .line 167
    .local v12, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v12, v9, v2}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v13

    .line 168
    .local v13, "oldFlags":I
    and-int/lit8 v14, v13, 0x20

    if-eqz v14, :cond_3

    .line 169
    sget-object v14, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0    # "writeRuntimePermissions":Z
    .local v16, "writeRuntimePermissions":Z
    const-string v0, "Clearing flag GRANTED_BY_DEFAULT of "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for package "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and user "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x1

    .line 172
    .end local v16    # "writeRuntimePermissions":Z
    .restart local v0    # "writeRuntimePermissions":Z
    and-int/lit8 v14, v13, -0x21

    const/16 v15, 0x20

    invoke-virtual {v12, v11, v2, v15, v14}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 168
    :cond_3
    move/from16 v16, v0

    .end local v0    # "writeRuntimePermissions":Z
    .restart local v16    # "writeRuntimePermissions":Z
    goto :goto_2

    .line 162
    .end local v12    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v13    # "oldFlags":I
    .end local v16    # "writeRuntimePermissions":Z
    .restart local v0    # "writeRuntimePermissions":Z
    :cond_4
    move/from16 v16, v0

    .line 156
    .end local v0    # "writeRuntimePermissions":Z
    .end local v9    # "permName":Ljava/lang/String;
    .end local v11    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v16    # "writeRuntimePermissions":Z
    :goto_2
    move/from16 v0, v16

    .end local v16    # "writeRuntimePermissions":Z
    .restart local v0    # "writeRuntimePermissions":Z
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 182
    .end local v0    # "writeRuntimePermissions":Z
    .end local v3    # "packageCount":I
    .end local v4    # "i":I
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "permissionCount":I
    .end local v8    # "j":I
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 156
    .restart local v0    # "writeRuntimePermissions":Z
    .restart local v3    # "packageCount":I
    .restart local v4    # "i":I
    .restart local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "permissionCount":I
    .restart local v8    # "j":I
    :cond_5
    move-object/from16 v10, p1

    move/from16 v16, v0

    .end local v0    # "writeRuntimePermissions":Z
    .restart local v16    # "writeRuntimePermissions":Z
    goto :goto_4

    .line 146
    .end local v7    # "permissionCount":I
    .end local v8    # "j":I
    .end local v16    # "writeRuntimePermissions":Z
    .restart local v0    # "writeRuntimePermissions":Z
    :cond_6
    move-object/from16 v10, p1

    .line 141
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v10, p1

    .line 179
    .end local v4    # "i":I
    if-eqz v0, :cond_8

    .line 180
    const/4 v4, 0x0

    move-object/from16 v5, p3

    :try_start_2
    invoke-virtual {v5, v2, v4}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    goto :goto_5

    .line 179
    :cond_8
    move-object/from16 v5, p3

    .line 182
    .end local v0    # "writeRuntimePermissions":Z
    .end local v3    # "packageCount":I
    :goto_5
    monitor-exit p0

    .line 183
    return-void

    .line 182
    :catchall_1
    move-exception v0

    move-object/from16 v10, p1

    :goto_6
    move-object/from16 v5, p3

    :goto_7
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_7
.end method

.method public static clearGrantedByDefaultFlagForNonSystemApps(Landroid/util/ArrayMap;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;[ILcom/android/server/pm/Settings;)V
    .locals 6
    .param p1, "mPermissionManager"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "userIds"    # [I
    .param p3, "mSettings"    # Lcom/android/server/pm/Settings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;",
            "[I",
            "Lcom/android/server/pm/Settings;",
            ")V"
        }
    .end annotation

    .line 118
    .local p0, "mPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    sget-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p2, v2

    .line 122
    .local v3, "userId":I
    invoke-static {p0, p1, v3, p3}, Lcom/android/server/pm/PermissionPmInjector;->clearGrantedByDefaultFlagForNonSystemApps(Landroid/util/ArrayMap;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;ILcom/android/server/pm/Settings;)V

    .line 125
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0x25

    aput v5, v4, v1

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    if-nez v3, :cond_1

    .line 127
    const/16 v4, 0x3e7

    invoke-static {p0, p1, v4, p3}, Lcom/android/server/pm/PermissionPmInjector;->clearGrantedByDefaultFlagForNonSystemApps(Landroid/util/ArrayMap;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;ILcom/android/server/pm/Settings;)V

    .line 121
    .end local v3    # "userId":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_2
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
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$PmsInner;",
            ")V"
        }
    .end annotation

    .line 55
    .local p2, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    sget-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    sget-object v0, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    const-string v1, "initInstance PermissionPmInjector"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sput-object p0, Lcom/android/server/pm/PermissionPmInjector;->mContext:Landroid/content/Context;

    .line 60
    sput-object p1, Lcom/android/server/pm/PermissionPmInjector;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 61
    sput-object p2, Lcom/android/server/pm/PermissionPmInjector;->mPackages:Landroid/util/ArrayMap;

    .line 62
    sput-object p3, Lcom/android/server/pm/PermissionPmInjector;->mPmsInner:Lcom/android/server/pm/PackageManagerService$PmsInner;

    .line 63
    return-void
.end method

.method public static mayClearFlagsForLegacyApp(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "action"    # Ljava/lang/String;

    .line 187
    sget-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 188
    const-string v1, "com.android.cts.usepermission"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 189
    const-string v1, "android.permission.cts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 190
    const-string v1, "android.permission2.cts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    sget-object v0, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]Clearing permission flags for legacy app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and perm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    and-int/lit8 p2, p2, -0x9

    .line 194
    and-int/lit8 p2, p2, -0x41

    .line 196
    :cond_0
    return p2
.end method

.method public static resetApplicationPermissions(I)V
    .locals 5
    .param p0, "userId"    # I

    .line 66
    sget-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/android/server/pm/PermissionPmInjector;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/android/server/pm/PermissionPmInjector;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 73
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    .local v1, "identity":J
    :try_start_1
    sget-object v3, Lcom/android/server/pm/PermissionPmInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "resetApplicationPermissions"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v3, Lcom/android/server/pm/PermissionPmInjector;->mPmsInner:Lcom/android/server/pm/PackageManagerService$PmsInner;

    invoke-virtual {v3, p0}, Lcom/android/server/pm/PackageManagerService$PmsInner;->resetUserChangesToRuntimePermissionsAndFlagsLPw(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    nop

    .line 80
    .end local v1    # "identity":J
    monitor-exit v0

    .line 81
    return-void

    .line 78
    .restart local v1    # "identity":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "userId":I
    throw v3

    .line 80
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

    .line 88
    sget-boolean v0, Lcom/android/server/pm/PermissionPmInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_PERMISSION_CONTROL_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    .line 92
    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;

    .line 94
    .local v0, "iOPPermissionControlManager":Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;
    if-eqz v0, :cond_1

    .line 95
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/permissioncontrol/IOPPermissionControlManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v1

    .line 97
    .local v1, "permissionControlService":Landroid/os/Messenger;
    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 99
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v3, "data":Landroid/os/Bundle;
    const-string/jumbo v4, "key_pkg_name"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 103
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 104
    :catch_0
    move-exception v4

    .line 105
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

    .line 109
    .end local v1    # "permissionControlService":Landroid/os/Messenger;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
