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

.field private final mTargetSdkVersion:I

.field private mToken:Landroid/os/IBinder;

.field private mType:I

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

    .line 426
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjection$Stub;-><init>()V

    .line 422
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mPid:I

    .line 427
    iput p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    .line 428
    iput p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 429
    iput-object p4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 430
    new-instance p1, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->userHandle:Landroid/os/UserHandle;

    .line 431
    iput p5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTargetSdkVersion:I

    .line 432
    iput-boolean p6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mIsPrivileged:Z

    .line 433
    return-void
.end method


# virtual methods
.method public applyVirtualDisplayFlags(I)I
    .locals 2
    .param p1, "flags"    # I

    .line 455
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    if-nez v0, :cond_0

    .line 456
    and-int/lit8 p1, p1, -0x9

    .line 457
    or-int/lit8 p1, p1, 0x12

    .line 459
    return p1

    .line 460
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 461
    and-int/lit8 p1, p1, -0x12

    .line 463
    or-int/lit8 p1, p1, 0xa

    .line 465
    return p1

    .line 466
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 467
    and-int/lit8 p1, p1, -0x9

    .line 468
    or-int/lit8 p1, p1, 0x13

    .line 471
    return p1

    .line 473
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown MediaProjection type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canProjectAudio()Z
    .locals 3

    .line 448
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

    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public canProjectVideo()Z
    .locals 2

    .line 437
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

    .line 601
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

    .line 602
    return-void
.end method

.method getMediaProjectPid()I
    .locals 1

    .line 596
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mPid:I

    return v0
.end method

.method public getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .locals 3

    .line 583
    new-instance v0, Landroid/media/projection/MediaProjectionInfo;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->userHandle:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Landroid/media/projection/MediaProjectionInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionCallback;

    .line 568
    if-eqz p1, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->add(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 572
    return-void

    .line 569
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method requiresForegroundService()Z
    .locals 2

    .line 587
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

    .line 592
    iput p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mPid:I

    .line 593
    return-void
.end method

.method public start(Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionCallback;

    .line 479
    if-eqz p1, :cond_4

    .line 485
    const/4 v0, 0x0

    .line 487
    .local v0, "isSetFlag":Z
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1200(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 488
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$700(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
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

    .line 491
    monitor-exit v1

    return-void

    .line 494
    :cond_0
    nop

    .line 495
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->requiresForegroundService()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 496
    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1300(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManagerInternal;->hasRunningForegroundService(II)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 498
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Media projections require a foreground service of type ServiceInfo.FOREGROUND_SERVICE_TYPE_MEDIA_PROJECTION"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "isSetFlag":Z
    .end local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .end local p1    # "callback":Landroid/media/projection/IMediaProjectionCallback;
    throw v2

    .line 502
    .restart local v0    # "isSetFlag":Z
    .restart local p0    # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .restart local p1    # "callback":Landroid/media/projection/IMediaProjectionCallback;
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 503
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    invoke-virtual {p0, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :try_start_1
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    .line 506
    new-instance v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;Landroid/media/projection/IMediaProjectionCallback;)V

    iput-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mDeathEater:Landroid/os/IBinder$DeathRecipient;

    .line 513
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mDeathEater:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    nop

    .line 519
    :try_start_2
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1500(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 522
    const/4 v0, 0x1

    .line 524
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    if-eqz v0, :cond_3

    .line 529
    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/am/OpBGFrozenInjector;->mediaProjectionEvent(IZ)V

    .line 532
    :cond_3
    return-void

    .line 514
    :catch_0
    move-exception v2

    .line 515
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MediaProjectionManagerService"

    const-string v4, "MediaProjectionCallbacks must be valid, aborting MediaProjection"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    monitor-exit v1

    return-void

    .line 524
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 480
    .end local v0    # "isSetFlag":Z
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 5

    .line 538
    const/4 v0, 0x0

    .line 540
    .local v0, "isSetFlag":Z
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1200(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 541
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$700(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 542
    const-string v2, "MediaProjectionManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to stop inactive MediaProjection (uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 542
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    monitor-exit v1

    return-void

    .line 547
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1600(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 548
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mDeathEater:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 549
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    .line 550
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    invoke-virtual {p0, v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 551
    iput-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 554
    const/4 v0, 0x1

    .line 556
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    if-eqz v0, :cond_1

    .line 561
    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-static {v1, v4}, Lcom/android/server/am/OpBGFrozenInjector;->mediaProjectionEvent(IZ)V

    .line 564
    :cond_1
    return-void

    .line 556
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionCallback;

    .line 576
    if-eqz p1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->remove(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 580
    return-void

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
