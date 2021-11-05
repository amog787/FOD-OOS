.class final Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
.super Landroid/media/projection/IMediaProjection$Stub;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaProjection"
.end annotation


# instance fields
.field private mCallback:Landroid/media/projection/IMediaProjectionCallback;

.field private mDeathEater:Landroid/os/IBinder$DeathRecipient;

.field private final mIsPrivileged:Z

.field private mPid:I

.field private mRestoreSystemAlertWindow:Z

.field private final mTargetSdkVersion:I

.field private mToken:Landroid/os/IBinder;

.field private final mType:I

.field public final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

.field public final uid:I

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;IZ)V
    .locals 1
    .param p2, "type"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "targetSdkVersion"    # I
    .param p6, "isPrivileged"    # Z

    .line 430
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjection$Stub;-><init>()V

    .line 426
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mPid:I

    .line 431
    iput p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    .line 432
    iput p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 433
    iput-object p4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 434
    new-instance p1, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->userHandle:Landroid/os/UserHandle;

    .line 435
    iput p5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTargetSdkVersion:I

    .line 436
    iput-boolean p6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mIsPrivileged:Z

    .line 437
    return-void
.end method


# virtual methods
.method public applyVirtualDisplayFlags(I)I
    .locals 2
    .param p1, "flags"    # I

    .line 459
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    if-nez v0, :cond_0

    .line 460
    and-int/lit8 p1, p1, -0x9

    .line 461
    or-int/lit8 p1, p1, 0x12

    .line 463
    return p1

    .line 464
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 465
    and-int/lit8 p1, p1, -0x12

    .line 467
    or-int/lit8 p1, p1, 0xa

    .line 469
    return p1

    .line 470
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 471
    and-int/lit8 p1, p1, -0x9

    .line 472
    or-int/lit8 p1, p1, 0x13

    .line 475
    return p1

    .line 477
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown MediaProjection type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canProjectAudio()Z
    .locals 3

    .line 452
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public canProjectSecureVideo()Z
    .locals 1

    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public canProjectVideo()Z
    .locals 2

    .line 441
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1700(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method getMediaProjectPid()I
    .locals 1

    .line 647
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mPid:I

    return v0
.end method

.method public getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .locals 3

    .line 634
    new-instance v0, Landroid/media/projection/MediaProjectionInfo;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->userHandle:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Landroid/media/projection/MediaProjectionInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionCallback;

    .line 619
    if-eqz p1, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->add(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 623
    return-void

    .line 620
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method requiresForegroundService()Z
    .locals 2

    .line 638
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTargetSdkVersion:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mIsPrivileged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setMediaProjectPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .line 643
    iput p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mPid:I

    .line 644
    return-void
.end method

.method public start(Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 12
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionCallback;

    .line 483
    if-eqz p1, :cond_6

    .line 489
    const/4 v0, 0x0

    .line 491
    .local v0, "isSetFlag":Z
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1200(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 492
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$700(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    const-string v2, "MediaProjectionManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " attempted to start already started MediaProjection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    monitor-exit v1

    return-void

    .line 498
    :cond_0
    nop

    .line 499
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->requiresForegroundService()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 500
    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1300(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManagerInternal;->hasRunningForegroundService(II)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 502
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Media projections require a foreground service of type ServiceInfo.FOREGROUND_SERVICE_TYPE_MEDIA_PROJECTION"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "isSetFlag":Z
    .end local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .end local p1    # "callback":Landroid/media/projection/IMediaProjectionCallback;
    throw v2

    .line 506
    .restart local v0    # "isSetFlag":Z
    .restart local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .restart local p1    # "callback":Landroid/media/projection/IMediaProjectionCallback;
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 509
    :try_start_1
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    .line 510
    new-instance v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;Landroid/media/projection/IMediaProjectionCallback;)V

    iput-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mDeathEater:Landroid/os/IBinder$DeathRecipient;

    .line 517
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 522
    nop

    .line 523
    :try_start_2
    iget v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 532
    .local v5, "token":J
    :try_start_3
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$600(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const/16 v8, 0x1000

    iget v9, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 534
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 532
    invoke-virtual {v2, v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 535
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v8, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 537
    iget-object v7, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v7}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v7

    iget v8, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v9, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const/16 v10, 0x18

    invoke-virtual {v7, v10, v8, v9}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v7

    .line 539
    .local v7, "currentMode":I
    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 540
    iget-object v8, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v8}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v8

    iget v9, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v11, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v9, v11, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 542
    iput-boolean v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mRestoreSystemAlertWindow:Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 549
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "currentMode":I
    :cond_3
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 550
    goto :goto_2

    .line 549
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 545
    :catch_0
    move-exception v2

    .line 546
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string v3, "MediaProjectionManagerService"

    const-string v4, "Package not found, aborting MediaProjection"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 549
    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    .line 547
    return-void

    .line 549
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    nop

    .end local v0    # "isSetFlag":Z
    .end local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .end local p1    # "callback":Landroid/media/projection/IMediaProjectionCallback;
    throw v2

    .line 552
    .end local v5    # "token":J
    .restart local v0    # "isSetFlag":Z
    .restart local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .restart local p1    # "callback":Landroid/media/projection/IMediaProjectionCallback;
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1500(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 555
    const/4 v0, 0x1

    .line 557
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 561
    if-eqz v0, :cond_5

    .line 562
    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-static {v1, v3}, Lcom/android/server/am/OpBGFrozenInjector;->mediaProjectionEvent(IZ)V

    .line 565
    :cond_5
    return-void

    .line 518
    :catch_1
    move-exception v2

    .line 519
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v3, "MediaProjectionManagerService"

    const-string v4, "MediaProjectionCallbacks must be valid, aborting MediaProjection"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    monitor-exit v1

    return-void

    .line 557
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 484
    .end local v0    # "isSetFlag":Z
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 11

    .line 571
    const/4 v0, 0x0

    .line 573
    .local v0, "isSetFlag":Z
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1200(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 574
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$700(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 575
    const-string v2, "MediaProjectionManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to stop inactive MediaProjection (uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    monitor-exit v1

    return-void

    .line 580
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mRestoreSystemAlertWindow:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 581
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 587
    .local v4, "token":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v2

    iget v6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v7, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const/16 v8, 0x18

    invoke-virtual {v2, v8, v6, v7}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 589
    .local v2, "currentMode":I
    if-nez v2, :cond_1

    .line 590
    iget-object v6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v6}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v6

    iget v7, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v9, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const/4 v10, 0x3

    invoke-virtual {v6, v8, v7, v9, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 593
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mRestoreSystemAlertWindow:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    .end local v2    # "currentMode":I
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    goto :goto_0

    .line 595
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    nop

    .end local v0    # "isSetFlag":Z
    .end local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    throw v2

    .line 598
    .end local v4    # "token":J
    .restart local v0    # "isSetFlag":Z
    .restart local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1600(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 599
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mDeathEater:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 600
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    .line 601
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    invoke-virtual {p0, v4}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 602
    iput-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 605
    const/4 v0, 0x1

    .line 607
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 611
    if-eqz v0, :cond_3

    .line 612
    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-static {v1, v3}, Lcom/android/server/am/OpBGFrozenInjector;->mediaProjectionEvent(IZ)V

    .line 615
    :cond_3
    return-void

    .line 607
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionCallback;

    .line 627
    if-eqz p1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->remove(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 631
    return-void

    .line 628
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
