.class final Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
.super Landroid/media/projection/IMediaProjectionManager$Stub;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p2, "x1"    # Lcom/android/server/media/projection/MediaProjectionManagerService$1;

    .line 264
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 363
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 370
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1000(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 373
    nop

    .line 374
    return-void

    .line 372
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 365
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;
    .locals 15
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "isPermanentGrant"    # Z

    .line 285
    move-object v1, p0

    move-object/from16 v9, p2

    iget-object v0, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 290
    if-eqz v9, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    .line 295
    .local v10, "callingUser":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 301
    .local v11, "callingToken":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$600(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v0, v9, v13, v10}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 306
    :try_start_1
    new-instance v14, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object v3, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 307
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v8

    move-object v2, v14

    move/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;IZ)V

    move-object v2, v14

    .line 310
    .local v2, "projection":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->setMediaProjectPid(I)V

    .line 312
    if-eqz p4, :cond_0

    .line 313
    iget-object v3, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v3

    const/16 v4, 0x2e

    iget v5, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v6, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v13}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 318
    nop

    .line 319
    return-object v2

    .line 317
    .end local v2    # "projection":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package matching :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "callingUser":Landroid/os/UserHandle;
    .end local v11    # "callingToken":J
    .end local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "type":I
    .end local p4    # "isPermanentGrant":Z
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10    # "callingUser":Landroid/os/UserHandle;
    .restart local v11    # "callingToken":J
    .restart local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "type":I
    .restart local p4    # "isPermanentGrant":Z
    :goto_0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 291
    .end local v10    # "callingUser":Landroid/os/UserHandle;
    .end local v11    # "callingToken":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "package name must not be empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_MEDIA_PROJECTION in order to grant projection permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "MediaProjectionManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 396
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1100(Lcom/android/server/media/projection/MediaProjectionManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 399
    nop

    .line 400
    return-void

    .line 398
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 337
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$800(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/projection/MediaProjectionInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    return-object v2

    .line 339
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 332
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasProjectionPermission(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 269
    .local v0, "token":J
    const/4 v2, 0x0

    .line 271
    .local v2, "hasPermission":Z
    :try_start_0
    const-string v3, "android.permission.CAPTURE_VIDEO_OUTPUT"

    invoke-direct {p0, p2, v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 273
    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4, p1, p2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    or-int/2addr v2, v3

    .line 277
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 278
    nop

    .line 279
    return v2

    .line 277
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z
    .locals 2
    .param p1, "projection"    # Landroid/media/projection/IMediaProjection;

    .line 324
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 325
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 324
    invoke-static {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$700(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 378
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 385
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$300(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    nop

    .line 389
    return-void

    .line 387
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 380
    .end local v0    # "token":J
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to remove projection callbacks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopActiveProjection()V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 350
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 352
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$900(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$900(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 357
    nop

    .line 359
    return-void

    .line 356
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 347
    .end local v0    # "token":J
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
