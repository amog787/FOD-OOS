.class final Lcom/android/server/usage/UsageStatsService$BinderService;
.super Landroid/app/usage/IUsageStatsManager$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    .line 928
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/IUsageStatsManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "x1"    # Lcom/android/server/usage/UsageStatsService$1;

    .line 928
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 984
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 985
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 987
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 992
    return-void

    .line 989
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cannot query eventsfor package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 977
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    return-void

    .line 980
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 981
    return-void
.end method

.method private hasObserverPermission()Z
    .locals 5

    .line 947
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 948
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->access$800(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    .line 949
    .local v1, "dpmInternal":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_2

    if-eqz v1, :cond_0

    const/4 v3, -0x1

    .line 951
    invoke-virtual {v1, v0, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 956
    :cond_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.OBSERVE_APP_USAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 954
    :cond_2
    :goto_1
    return v2
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 931
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 932
    .local v0, "callingUid":I
    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 933
    return v1

    .line 935
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3, v0, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    .line 937
    .local v2, "mode":I
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 940
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    return v1

    .line 943
    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    return v1
.end method

.method private varargs hasPermissions(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .line 961
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 962
    .local v0, "callingUid":I
    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 964
    return v1

    .line 967
    :cond_0
    const/4 v2, 0x1

    .line 968
    .local v2, "hasPermissions":Z
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 969
    .local v3, "context":Landroid/content/Context;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_2

    .line 970
    if-eqz v2, :cond_1

    aget-object v5, p2, v4

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move v2, v5

    .line 969
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 973
    .end local v4    # "i":I
    :cond_2
    return v2
.end method

.method private isCallingUidSystem()Z
    .locals 2

    .line 995
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 996
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1389
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1390
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/usage/UsageStatsService;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1391
    return-void
.end method

.method public forceUsageSourceSettingRead()V
    .locals 1

    .line 1616
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$1200(Lcom/android/server/usage/UsageStatsService;)V

    .line 1617
    return-void
.end method

.method public getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1197
    .local v8, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1198
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getAppStandbyBucket"

    const/4 v7, 0x0

    .line 1197
    move v2, v8

    move v3, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move p3, v0

    .line 1202
    nop

    .line 1203
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 1205
    .local v0, "packageUid":I
    if-eq v0, v8, :cond_1

    .line 1206
    invoke-direct {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1207
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Don\'t have permission to query app standby bucket"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1211
    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    .line 1215
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, v8, p3}, Lcom/android/server/usage/UsageStatsService;->access$900(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v7

    .line 1217
    .local v7, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1219
    .local v9, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1219
    move-object v2, p1

    move v3, p3

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1222
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1219
    return v1

    .line 1222
    :catchall_0
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1212
    .end local v7    # "obfuscateInstantApps":Z
    .end local v9    # "token":J
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get standby bucket for non existent package ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1200
    .end local v0    # "packageUid":I
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 9
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 1301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1303
    .local v8, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1304
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getAppStandbyBucket"

    const/4 v7, 0x0

    .line 1303
    move v2, v8

    move v3, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move p2, v0

    .line 1308
    nop

    .line 1309
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1315
    .local v0, "token":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1316
    invoke-virtual {v2, p2}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBuckets(I)Ljava/util/List;

    move-result-object v2

    .line 1317
    .local v2, "standbyBucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    if-nez v2, :cond_0

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    goto :goto_0

    .line 1318
    :cond_0
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1320
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1317
    return-object v3

    .line 1320
    .end local v2    # "standbyBucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1310
    .end local v0    # "token":J
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Don\'t have permission to query app standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1306
    :catch_0
    move-exception v0

    .line 1307
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUsageSource()I
    .locals 2

    .line 1606
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$1100(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1610
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v1, v1, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    monitor-exit v0

    return v1

    .line 1611
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1607
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAppInactive(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1154
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1155
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "isAppInactive"

    const/4 v7, 0x0

    .line 1154
    move v3, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move p2, v0

    .line 1158
    nop

    .line 1159
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1160
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1159
    invoke-static {v0, v1, p2}, Lcom/android/server/usage/UsageStatsService;->access$900(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v0

    .line 1161
    .local v0, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1163
    .local v7, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1163
    move-object v2, p1

    move v3, p2

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFilteredOrParoled(Ljava/lang/String;IJZ)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1167
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1163
    return v1

    .line 1167
    :catchall_0
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1156
    .end local v0    # "obfuscateInstantApps":Z
    .end local v7    # "token":J
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onCarrierPrivilegedAppsChanged()V
    .locals 3

    .line 1378
    sget-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1379
    const-string v0, "UsageStatsService"

    const-string v1, "Carrier privileged apps changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BIND_CARRIER_SERVICES"

    const-string/jumbo v2, "onCarrierPrivilegedAppsChanged can only be called by privileged apps."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->clearCarrierPrivilegedApps()V

    .line 1385
    return-void
.end method

.method public queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 14
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1026
    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1027
    return-object v3

    .line 1030
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 1031
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1033
    .local v12, "token":J
    :try_start_0
    iget-object v4, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1034
    move v5, v11

    move v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsService;->queryConfigurationStats(IIJJ)Ljava/util/List;

    move-result-object v0

    .line 1036
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    if-eqz v0, :cond_1

    .line 1037
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1037
    return-object v3

    .line 1040
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    :cond_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1041
    nop

    .line 1042
    return-object v3

    .line 1040
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 14
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1048
    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1049
    return-object v3

    .line 1052
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 1053
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1055
    .local v12, "token":J
    :try_start_0
    iget-object v4, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1056
    move v5, v11

    move v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsService;->queryEventStats(IIJJ)Ljava/util/List;

    move-result-object v0

    .line 1058
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/EventStats;>;"
    if-eqz v0, :cond_1

    .line 1059
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1059
    return-object v3

    .line 1062
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/EventStats;>;"
    :cond_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1063
    nop

    .line 1064
    return-object v3

    .line 1062
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 14
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 1069
    move-object v1, p0

    move-object/from16 v2, p5

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    const/4 v0, 0x0

    return-object v0

    .line 1073
    :cond_0
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1074
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1073
    invoke-static {v0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->access$900(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v3

    .line 1076
    .local v3, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1077
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1079
    .local v12, "token":J
    :try_start_0
    iget-object v5, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v6, v4

    move-wide v7, p1

    move-wide/from16 v9, p3

    move v11, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJZ)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1079
    return-object v0

    .line 1082
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 16
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 1089
    move-object/from16 v1, p0

    move-object/from16 v10, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1090
    .local v11, "callingUid":I
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1092
    .local v12, "callingUserId":I
    invoke-direct {v1, v10}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 1093
    invoke-direct {v1, v10}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v13

    .line 1095
    .local v13, "includeTaskRoot":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1097
    .local v14, "token":J
    :try_start_0
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v3, v12

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move v9, v13

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1097
    return-object v0

    .line 1100
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 15
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "userId"    # I
    .param p6, "pkg"    # Ljava/lang/String;
    .param p7, "callingPackage"    # Ljava/lang/String;

    .line 1132
    move-object v1, p0

    move-object/from16 v2, p7

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    const/4 v0, 0x0

    return-object v0

    .line 1135
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move/from16 v11, p5

    if-eq v11, v0, :cond_1

    .line 1136
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v4, "No permission to query usage stats for this user"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    :cond_1
    move-object/from16 v12, p6

    invoke-direct {p0, v12}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 1142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1144
    .local v13, "token":J
    :try_start_0
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    const/4 v10, 0x1

    move/from16 v4, p5

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1144
    return-object v0

    .line 1147
    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 14
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "userId"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;

    .line 1107
    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    const/4 v0, 0x0

    return-object v0

    .line 1111
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move/from16 v10, p5

    if-eq v10, v0, :cond_1

    .line 1112
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v4, "No permission to query usage stats for this user"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :cond_1
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1117
    invoke-static {v0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->access$900(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v11

    .line 1120
    .local v11, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1122
    .local v12, "token":J
    :try_start_0
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move/from16 v4, p5

    move-wide v5, p1

    move-wide/from16 v7, p3

    move v9, v11

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJZ)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1122
    return-object v0

    .line 1125
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 16
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 1002
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1003
    return-object v3

    .line 1006
    :cond_0
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1006
    invoke-static {v0, v4, v5}, Lcom/android/server/usage/UsageStatsService;->access$900(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v4

    .line 1009
    .local v4, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1010
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1012
    .local v14, "token":J
    :try_start_0
    iget-object v6, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v7, v5

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move v13, v4

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object v0

    .line 1014
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v0, :cond_1

    .line 1015
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1015
    return-object v3

    .line 1018
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1019
    nop

    .line 1020
    return-object v3

    .line 1018
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public registerAppUsageLimitObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 18
    .param p1, "observerId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "timeLimitMs"    # J
    .param p5, "timeUsedMs"    # J
    .param p7, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p8, "callingPackage"    # Ljava/lang/String;

    .line 1498
    move-object/from16 v1, p0

    move-object/from16 v12, p2

    const-string v0, "android.permission.SUSPEND_APPS"

    const-string v2, "android.permission.OBSERVE_APP_USAGE"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, p8

    invoke-direct {v1, v13, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1504
    if-eqz v12, :cond_2

    array-length v0, v12

    if-eqz v0, :cond_2

    .line 1507
    if-nez p7, :cond_1

    cmp-long v0, p5, p3

    if-ltz v0, :cond_0

    goto :goto_0

    .line 1508
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "callbackIntent can\'t be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1510
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 1511
    .local v14, "callingUid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 1512
    .local v15, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1514
    .local v16, "token":J
    :try_start_0
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v3, v14

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move v11, v15

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1518
    nop

    .line 1519
    return-void

    .line 1517
    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1505
    .end local v14    # "callingUid":I
    .end local v15    # "userId":I
    .end local v16    # "token":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify at least one package"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1500
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Caller doesn\'t have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 15
    .param p1, "observerId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "timeLimitMs"    # J
    .param p5, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p6, "callingPackage"    # Ljava/lang/String;

    .line 1413
    move-object/from16 v9, p2

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1417
    if-eqz v9, :cond_1

    array-length v0, v9

    if-eqz v0, :cond_1

    .line 1420
    if-eqz p5, :cond_0

    .line 1423
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1424
    .local v10, "callingUid":I
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1425
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1427
    .local v12, "token":J
    move-object v14, p0

    :try_start_0
    iget-object v1, v14, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v2, v10

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1431
    nop

    .line 1432
    return-void

    .line 1430
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1421
    .end local v10    # "callingUid":I
    .end local v11    # "userId":I
    .end local v12    # "token":J
    :cond_0
    move-object v14, p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callbackIntent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1417
    :cond_1
    move-object v14, p0

    .line 1418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify at least one package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1414
    :cond_2
    move-object v14, p0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerUsageSessionObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 17
    .param p1, "sessionObserverId"    # I
    .param p2, "observed"    # [Ljava/lang/String;
    .param p3, "timeLimitMs"    # J
    .param p5, "sessionThresholdTimeMs"    # J
    .param p7, "limitReachedCallbackIntent"    # Landroid/app/PendingIntent;
    .param p8, "sessionEndCallbackIntent"    # Landroid/app/PendingIntent;
    .param p9, "callingPackage"    # Ljava/lang/String;

    .line 1455
    move-object/from16 v12, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1459
    if-eqz v12, :cond_1

    array-length v0, v12

    if-eqz v0, :cond_1

    .line 1462
    if-eqz p7, :cond_0

    .line 1465
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1466
    .local v13, "callingUid":I
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 1467
    .local v14, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1469
    .local v15, "token":J
    move-object/from16 v11, p0

    :try_start_0
    iget-object v1, v11, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v2, v13

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move v11, v14

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/usage/UsageStatsService;->registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1474
    nop

    .line 1475
    return-void

    .line 1473
    :catchall_0
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1463
    .end local v13    # "callingUid":I
    .end local v14    # "userId":I
    .end local v15    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "limitReachedCallbackIntent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1460
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify at least one observed entity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1456
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "annotations"    # [Ljava/lang/String;
    .param p5, "action"    # Ljava/lang/String;

    .line 1396
    if-nez p1, :cond_0

    .line 1397
    const-string v0, "UsageStatsService"

    const-string v1, "Event report user selecting a null package"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    return-void

    .line 1401
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1402
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1403
    iput-object p5, v0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 1404
    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 1405
    iput-object p4, v0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 1406
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1407
    return-void
.end method

.method public reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Landroid/os/IBinder;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "timeAgoMs"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    .line 1549
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1550
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1551
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1554
    .local v2, "binderToken":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1555
    :try_start_1
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1556
    .local v5, "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 1557
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    move-object v5, v6

    .line 1558
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1560
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1562
    :try_start_2
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1563
    :try_start_3
    invoke-virtual {v5, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1567
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1569
    :try_start_4
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6, p5, p2}, Lcom/android/server/usage/UsageStatsService;->access$1000(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1, p3, p4}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;IJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1572
    .end local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1573
    nop

    .line 1574
    return-void

    .line 1564
    .restart local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1
    :try_start_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is already reported as started for this activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "binderToken":J
    .end local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "timeAgoMs":J
    .end local p5    # "callingPackage":Ljava/lang/String;
    throw v4

    .line 1567
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "binderToken":J
    .restart local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "timeAgoMs":J
    .restart local p5    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "binderToken":J
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "timeAgoMs":J
    .end local p5    # "callingPackage":Ljava/lang/String;
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1560
    .end local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "binderToken":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "timeAgoMs":J
    .restart local p5    # "callingPackage":Ljava/lang/String;
    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "binderToken":J
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "timeAgoMs":J
    .end local p5    # "callingPackage":Ljava/lang/String;
    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1572
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "binderToken":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "timeAgoMs":J
    .restart local p5    # "callingPackage":Ljava/lang/String;
    :catchall_2
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public reportUsageStart(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/os/IBinder;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1542
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService$BinderService;->reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V

    .line 1543
    return-void
.end method

.method public reportUsageStop(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Landroid/os/IBinder;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1578
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1579
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1580
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1583
    .local v2, "binderToken":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1584
    :try_start_1
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1585
    .local v5, "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    .line 1590
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1592
    :try_start_2
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1593
    :try_start_3
    invoke-virtual {v5, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1597
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1598
    :try_start_4
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6, p3, p2}, Lcom/android/server/usage/UsageStatsService;->access$1000(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1600
    .end local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1601
    nop

    .line 1602
    return-void

    .line 1594
    .restart local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    :try_start_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is already reported as stopped for this activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "binderToken":J
    .end local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v4

    .line 1597
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "binderToken":J
    .restart local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "binderToken":J
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "callingPackage":Ljava/lang/String;
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1586
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "binderToken":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :cond_1
    :try_start_7
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown reporter trying to stop token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "binderToken":J
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "callingPackage":Ljava/lang/String;
    throw v6

    .line 1590
    .end local v5    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "binderToken":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "binderToken":J
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "activity":Landroid/os/IBinder;
    .end local p2    # "token":Ljava/lang/String;
    .end local p3    # "callingPackage":Ljava/lang/String;
    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1600
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "binderToken":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "activity":Landroid/os/IBinder;
    .restart local p2    # "token":Ljava/lang/String;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_2
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setAppInactive(Ljava/lang/String;ZI)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    .line 1173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1175
    .local v8, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1176
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "setAppInactive"

    const/4 v7, 0x0

    .line 1175
    move v2, v8

    move v3, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move p3, v0

    .line 1180
    nop

    .line 1181
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v2, "No permission to change app idle state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1185
    .local v0, "token":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v2, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    .local v2, "appId":I
    if-gez v2, :cond_0

    .line 1189
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1186
    return-void

    .line 1187
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->setAppIdleAsync(Ljava/lang/String;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1189
    .end local v2    # "appId":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1190
    nop

    .line 1191
    return-void

    .line 1189
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1178
    .end local v0    # "token":J
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAppStandbyBucket(Ljava/lang/String;II)V
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bucket"    # I
    .param p3, "userId"    # I

    .line 1232
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1233
    .local v12, "callingUid":I
    invoke-static {v12}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v13

    .line 1235
    .local v13, "systemCaller":Z
    if-nez v13, :cond_0

    .line 1236
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v3, "No permission to change app standby state"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    :cond_0
    const/16 v0, 0xa

    if-lt v11, v0, :cond_7

    const/16 v0, 0x32

    if-gt v11, v0, :cond_7

    .line 1251
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1252
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "setAppStandbyBucket"

    const/4 v9, 0x0

    .line 1251
    move v4, v12

    move/from16 v5, p3

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v14, v0

    .line 1256
    .end local p3    # "userId":I
    .local v14, "userId":I
    nop

    .line 1257
    if-eqz v12, :cond_2

    const/16 v0, 0x7d0

    if-ne v12, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v15, v0

    .line 1264
    .local v15, "shellCaller":Z
    if-eqz v13, :cond_3

    .line 1265
    const/16 v0, 0x400

    goto :goto_2

    .line 1266
    :cond_3
    const/16 v0, 0x500

    :goto_2
    move v9, v0

    .line 1267
    .local v9, "reason":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1269
    .local v16, "token":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v2, 0x4c0000

    invoke-virtual {v0, v10, v2, v14}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 1273
    .local v0, "packageUid":I
    if-eq v0, v12, :cond_6

    .line 1276
    if-ltz v0, :cond_5

    .line 1283
    sget-boolean v2, Lcom/android/server/usage/UsageStatsService;->DEBUG:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_4

    .line 1284
    :try_start_2
    const-string v2, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", to bucket:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", shellCaller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1294
    .end local v0    # "packageUid":I
    :catchall_0
    move-exception v0

    move/from16 v18, v9

    goto :goto_4

    .line 1291
    .restart local v0    # "packageUid":I
    :cond_4
    :goto_3
    :try_start_3
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1291
    move-object/from16 v3, p1

    move v4, v14

    move/from16 v5, p2

    move v6, v9

    move/from16 v18, v9

    .end local v9    # "reason":I
    .local v18, "reason":I
    move v9, v15

    :try_start_4
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1294
    .end local v0    # "packageUid":I
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1295
    nop

    .line 1296
    return-void

    .line 1277
    .end local v18    # "reason":I
    .restart local v0    # "packageUid":I
    .restart local v9    # "reason":I
    :cond_5
    move/from16 v18, v9

    .end local v9    # "reason":I
    .restart local v18    # "reason":I
    :try_start_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot set standby bucket for non existent package ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v12    # "callingUid":I
    .end local v13    # "systemCaller":Z
    .end local v14    # "userId":I
    .end local v15    # "shellCaller":Z
    .end local v16    # "token":J
    .end local v18    # "reason":I
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "bucket":I
    throw v2

    .line 1274
    .restart local v9    # "reason":I
    .restart local v12    # "callingUid":I
    .restart local v13    # "systemCaller":Z
    .restart local v14    # "userId":I
    .restart local v15    # "shellCaller":Z
    .restart local v16    # "token":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "bucket":I
    :cond_6
    move/from16 v18, v9

    .end local v9    # "reason":I
    .restart local v18    # "reason":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot set your own standby bucket"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v12    # "callingUid":I
    .end local v13    # "systemCaller":Z
    .end local v14    # "userId":I
    .end local v15    # "shellCaller":Z
    .end local v16    # "token":J
    .end local v18    # "reason":I
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "bucket":I
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1294
    .end local v0    # "packageUid":I
    .restart local v12    # "callingUid":I
    .restart local v13    # "systemCaller":Z
    .restart local v14    # "userId":I
    .restart local v15    # "shellCaller":Z
    .restart local v16    # "token":J
    .restart local v18    # "reason":I
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "bucket":I
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v18    # "reason":I
    .restart local v9    # "reason":I
    :catchall_2
    move-exception v0

    move/from16 v18, v9

    .end local v9    # "reason":I
    .restart local v18    # "reason":I
    :goto_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1254
    .end local v14    # "userId":I
    .end local v15    # "shellCaller":Z
    .end local v16    # "token":J
    .end local v18    # "reason":I
    .restart local p3    # "userId":I
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1242
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set the standby bucket to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V
    .locals 18
    .param p1, "appBuckets"    # Landroid/content/pm/ParceledListSlice;
    .param p2, "userId"    # I

    .line 1326
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v3, "No permission to change app standby state"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1331
    .local v2, "callingUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 1332
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string/jumbo v10, "setAppStandbyBucket"

    const/4 v11, 0x0

    .line 1331
    move v6, v2

    move/from16 v7, p2

    invoke-interface/range {v4 .. v11}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v0

    .line 1336
    .end local p2    # "userId":I
    .local v11, "userId":I
    nop

    .line 1337
    if-eqz v2, :cond_1

    const/16 v0, 0x7d0

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v12, v0

    .line 1338
    .local v12, "shellCaller":Z
    if-eqz v12, :cond_2

    .line 1339
    const/16 v0, 0x400

    move v7, v0

    goto :goto_2

    .line 1340
    :cond_2
    const/16 v0, 0x500

    move v7, v0

    :goto_2
    nop

    .line 1341
    .local v7, "reason":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1343
    .local v13, "token":J
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1344
    .local v8, "elapsedRealtime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1345
    .local v0, "bucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/AppStandbyInfo;

    move-object v10, v3

    .line 1346
    .local v10, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    iget-object v3, v10, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    move-object v6, v3

    .line 1347
    .local v6, "packageName":Ljava/lang/String;
    iget v3, v10, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    move v5, v3

    .line 1348
    .local v5, "bucket":I
    const/16 v3, 0xa

    if-lt v5, v3, :cond_4

    const/16 v3, 0x32

    if-gt v5, v3, :cond_4

    .line 1354
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v4, 0x400000

    invoke-virtual {v3, v6, v4, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 1358
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    move-object v4, v6

    move/from16 p2, v5

    .end local v5    # "bucket":I
    .local p2, "bucket":I
    move v5, v11

    move-object/from16 v16, v6

    .end local v6    # "packageName":Ljava/lang/String;
    .local v16, "packageName":Ljava/lang/String;
    move/from16 v6, p2

    move-object/from16 v17, v10

    .end local v10    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .local v17, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    move v10, v12

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    .line 1360
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .end local p2    # "bucket":I
    goto :goto_3

    .line 1356
    .restart local v5    # "bucket":I
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v10    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    :cond_3
    move/from16 p2, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v10

    .end local v5    # "bucket":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v10    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v16    # "packageName":Ljava/lang/String;
    .restart local v17    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local p2    # "bucket":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot set your own standby bucket"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "callingUid":I
    .end local v7    # "reason":I
    .end local v11    # "userId":I
    .end local v12    # "shellCaller":Z
    .end local v13    # "token":J
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "appBuckets":Landroid/content/pm/ParceledListSlice;
    throw v3

    .line 1348
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .end local p2    # "bucket":I
    .restart local v2    # "callingUid":I
    .restart local v5    # "bucket":I
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "reason":I
    .restart local v10    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v11    # "userId":I
    .restart local v12    # "shellCaller":Z
    .restart local v13    # "token":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "appBuckets":Landroid/content/pm/ParceledListSlice;
    :cond_4
    move/from16 p2, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v10

    .line 1350
    .end local v5    # "bucket":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v10    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v16    # "packageName":Ljava/lang/String;
    .restart local v17    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local p2    # "bucket":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set the standby bucket to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    .end local p2    # "bucket":I
    .restart local v5    # "bucket":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "callingUid":I
    .end local v7    # "reason":I
    .end local v11    # "userId":I
    .end local v12    # "shellCaller":Z
    .end local v13    # "token":J
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1    # "appBuckets":Landroid/content/pm/ParceledListSlice;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1362
    .end local v0    # "bucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    .end local v5    # "bucket":I
    .end local v8    # "elapsedRealtime":J
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v2    # "callingUid":I
    .restart local v7    # "reason":I
    .restart local v11    # "userId":I
    .restart local v12    # "shellCaller":Z
    .restart local v13    # "token":J
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1    # "appBuckets":Landroid/content/pm/ParceledListSlice;
    :cond_5
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1363
    nop

    .line 1364
    return-void

    .line 1362
    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1334
    .end local v7    # "reason":I
    .end local v11    # "userId":I
    .end local v12    # "shellCaller":Z
    .end local v13    # "token":J
    .local p2, "userId":I
    :catch_0
    move-exception v0

    .line 1335
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public unregisterAppUsageLimitObserver(ILjava/lang/String;)V
    .locals 5
    .param p1, "observerId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1523
    const-string v0, "android.permission.SUSPEND_APPS"

    const-string v1, "android.permission.OBSERVE_APP_USAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1530
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1531
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1533
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v0, p1, v1}, Lcom/android/server/usage/UsageStatsService;->unregisterAppUsageLimitObserver(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1536
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1537
    nop

    .line 1538
    return-void

    .line 1536
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1525
    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAppUsageObserver(ILjava/lang/String;)V
    .locals 5
    .param p1, "observerId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1436
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1440
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1441
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1442
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1444
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v0, p1, v1}, Lcom/android/server/usage/UsageStatsService;->unregisterAppUsageObserver(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1446
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1447
    nop

    .line 1448
    return-void

    .line 1446
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1437
    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterUsageSessionObserver(ILjava/lang/String;)V
    .locals 5
    .param p1, "sessionObserverId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1479
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1483
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1484
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1485
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1487
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v0, p1, v1}, Lcom/android/server/usage/UsageStatsService;->unregisterUsageSessionObserver(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1490
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1491
    nop

    .line 1492
    return-void

    .line 1490
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1480
    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelistAppTemporarily(Ljava/lang/String;JI)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1370
    .local v0, "reason":Ljava/lang/StringBuilder;
    const-string v1, "from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1372
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1372
    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    .line 1374
    return-void
.end method
