.class final Lcom/android/server/incident/IncidentCompanionService$BinderService;
.super Landroid/os/IIncidentCompanion$Stub;
.source "IncidentCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/incident/IncidentCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/incident/IncidentCompanionService;


# direct methods
.method private constructor <init>(Lcom/android/server/incident/IncidentCompanionService;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-direct {p0}, Landroid/os/IIncidentCompanion$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/incident/IncidentCompanionService;Lcom/android/server/incident/IncidentCompanionService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/incident/IncidentCompanionService;
    .param p2, "x1"    # Lcom/android/server/incident/IncidentCompanionService$1;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;-><init>(Lcom/android/server/incident/IncidentCompanionService;)V

    return-void
.end method

.method private dumpRestrictedImages(Ljava/io/FileDescriptor;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 288
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_0

    .line 289
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 293
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1070067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "services":[Ljava/lang/String;
    array-length v2, v1

    .line 296
    .local v2, "servicesCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 297
    aget-object v4, v1, v3

    .line 298
    .local v4, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Looking up service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IncidentCompanionService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 300
    .local v5, "service":Landroid/os/IBinder;
    if-eqz v5, :cond_1

    .line 301
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling dump on service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :try_start_0
    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->access$300()[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, p1, v7}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    goto :goto_1

    .line 304
    :catch_0
    move-exception v7

    .line 305
    .local v7, "ex":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dump --restricted_image of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " threw"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "service":Landroid/os/IBinder;
    .end local v7    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private enforceAccessReportsPermissions(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.APPROVE_INCIDENT_REPORTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    if-eqz p1, :cond_0

    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceCallerIsSameApp(Ljava/lang/String;)V

    .line 352
    :cond_0
    return-void
.end method

.method private enforceAuthorizePermission()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.APPROVE_INCIDENT_REPORTS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method private enforceCallerIsSameApp(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 359
    const-string v0, "Unknown package "

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 360
    .local v1, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 361
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v3}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 362
    invoke-virtual {v3, p1, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 363
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_1

    .line 366
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    .end local v1    # "uid":I
    .end local v2    # "userId":I
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 373
    return-void

    .line 367
    .restart local v1    # "uid":I
    .restart local v2    # "userId":I
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " gave package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " which is owned by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/incident/IncidentCompanionService$BinderService;
    .end local p1    # "pkg":Ljava/lang/String;
    throw v4

    .line 364
    .restart local p0    # "this":Lcom/android/server/incident/IncidentCompanionService$BinderService;
    .restart local p1    # "pkg":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/incident/IncidentCompanionService$BinderService;
    .end local p1    # "pkg":Ljava/lang/String;
    throw v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v1    # "uid":I
    .end local v2    # "userId":I
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Lcom/android/server/incident/IncidentCompanionService$BinderService;
    .restart local p1    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 371
    .local v1, "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private enforceRequestAuthorizationPermission()V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REQUEST_INCIDENT_REPORT_APPROVAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method


# virtual methods
.method public approveReport(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAuthorizePermission()V

    .line 169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 171
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->access$000(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/incident/PendingReports;->approveReport(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    nop

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    throw v2
.end method

.method public authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .locals 11
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "receiverClass"    # Ljava/lang/String;
    .param p4, "reportId"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "listener"    # Landroid/os/IIncidentAuthListener;

    .line 88
    invoke-direct {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceRequestAuthorizationPermission()V

    .line 90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 92
    .local v1, "ident":J
    move-object v3, p0

    :try_start_0
    iget-object v0, v3, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v0}, Lcom/android/server/incident/IncidentCompanionService;->access$000(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object v4

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/incident/PendingReports;->authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    nop

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    throw v0
.end method

.method public cancelAuthorization(Landroid/os/IIncidentAuthListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/os/IIncidentAuthListener;

    .line 108
    invoke-direct {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceRequestAuthorizationPermission()V

    .line 112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 114
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->access$000(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/incident/PendingReports;->cancelAuthorization(Landroid/os/IIncidentAuthListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    nop

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    throw v2
.end method

.method public deleteAllIncidentReports(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 239
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->access$200(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IIncidentManager;->deleteAllIncidentReports(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    nop

    .line 243
    return-void

    .line 241
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    throw v2

    .line 233
    .end local v0    # "ident":J
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid pkg"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 221
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->access$200(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IIncidentManager;->deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    nop

    .line 225
    return-void

    .line 223
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    throw v2

    .line 215
    .end local v0    # "ident":J
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid pkg, cls or id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public denyReport(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAuthorizePermission()V

    .line 184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 186
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->access$000(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/incident/PendingReports;->denyReport(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    nop

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IncidentCompanionService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    return-void

    .line 274
    :cond_0
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--restricted_image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->dumpRestrictedImages(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v0}, Lcom/android/server/incident/IncidentCompanionService;->access$000(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/incident/PendingReports;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void
.end method

.method public getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 259
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->access$200(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IIncidentManager;->getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 259
    return-object v2

    .line 261
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 262
    throw v2

    .line 253
    .end local v0    # "ident":J
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid pkg, cls or id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 201
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->access$200(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IIncidentManager;->getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    return-object v2

    .line 203
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    throw v2
.end method

.method public getPendingReports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAuthorizePermission()V

    .line 159
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {v0}, Lcom/android/server/incident/IncidentCompanionService;->access$000(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/incident/PendingReports;->getPendingReports()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sendReportReadyBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceRequestAuthorizationPermission()V

    .line 127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 129
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v2}, Lcom/android/server/incident/IncidentCompanionService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 131
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/incident/IncidentCompanionService;->getAndValidateUser(Landroid/content/Context;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .local v3, "primaryUser":I
    const/16 v4, -0x2710

    if-ne v3, v4, :cond_0

    .line 148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    return-void

    .line 136
    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.INCIDENT_REPORT_READY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v4, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    const-string v5, "IncidentCompanionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendReportReadyBroadcast sending primaryUser="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " userHandle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    nop

    .line 145
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 146
    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->access$100()[Ljava/lang/String;

    move-result-object v6

    .line 144
    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "primaryUser":I
    .end local v4    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    nop

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw v2
.end method
