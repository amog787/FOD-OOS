.class Lcom/android/server/media/MediaSessionRecord$ControllerStub;
.super Landroid/media/session/ISessionController$Stub;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 1232
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Landroid/media/session/ISessionController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;II)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p4, "direction"    # I
    .param p5, "flags"    # I

    .line 1317
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1318
    .local v11, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1319
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1321
    .local v13, "token":J
    move-object/from16 v15, p0

    :try_start_0
    iget-object v1, v15, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v11

    move v5, v12

    move-object/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1325
    nop

    .line 1326
    return-void

    .line 1324
    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public fastForward(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1424
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->fastForward(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1426
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 1485
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1486
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2200(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1487
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFlags()J
    .locals 2

    .line 1306
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1200(Lcom/android/server/media/MediaSessionRecord;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1400(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Landroid/media/MediaMetadata;
    .locals 2

    .line 1461
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1462
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$1600(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1286
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3900(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Landroid/content/pm/ParceledListSlice;
    .locals 3

    .line 1473
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1474
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2000(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$2000(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :goto_0
    monitor-exit v0

    return-object v1

    .line 1475
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1480
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2100(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRatingType()I
    .locals 1

    .line 1492
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2300(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v0

    return v0
.end method

.method public getSessionInfo()Landroid/os/Bundle;
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3600(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;
    .locals 1

    .line 1311
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3700(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1413
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->next(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1414
    return-void
.end method

.method public pause(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1403
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->pause(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1404
    return-void
.end method

.method public play(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1370
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->play(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1371
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1376
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1378
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1383
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1385
    return-void
.end method

.method public playFromUri(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1390
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1392
    return-void
.end method

.method public prepare(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1344
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepare(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1345
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1350
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1350
    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1352
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1357
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1358
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1357
    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1359
    return-void
.end method

.method public prepareFromUri(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1364
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1366
    return-void
.end method

.method public previous(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1418
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->previous(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1420
    return-void
.end method

.method public rate(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Landroid/media/Rating;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "rating"    # Landroid/media/Rating;

    .line 1441
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rate(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/media/Rating;)V

    .line 1443
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .line 1249
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1252
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$3000(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1254
    :try_start_1
    invoke-interface {p2}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1257
    goto :goto_0

    .line 1255
    :catch_0
    move-exception v1

    .line 1258
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    .line 1260
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p2}, Lcom/android/server/media/MediaSessionRecord;->access$3100(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    move-result v1

    if-gez v1, :cond_1

    .line 1261
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$3200(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 1262
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v2, v3, p2, p1, v4}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;I)V

    .line 1261
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->access$3300()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1264
    const-string v1, "MediaSessionRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registering controller callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from controller"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_1
    monitor-exit v0

    .line 1269
    return-void

    .line 1268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public rewind(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1430
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rewind(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1431
    return-void
.end method

.method public seekTo(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;J)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "pos"    # J

    .line 1435
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->seekTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V

    .line 1437
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "cb"    # Landroid/os/ResultReceiver;

    .line 1236
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCommand(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1238
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;

    .line 1455
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCustomAction(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1457
    return-void
.end method

.method public sendMediaButton(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1243
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1244
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1243
    const/4 v6, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZLandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setPlaybackSpeed(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;F)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "speed"    # F

    .line 1448
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setPlaybackSpeed(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;F)V

    .line 1450
    return-void
.end method

.method public setVolumeTo(Ljava/lang/String;Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;II)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p4, "value"    # I
    .param p5, "flags"    # I

    .line 1331
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 1332
    .local v9, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1333
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1335
    .local v11, "token":J
    move-object v13, p0

    :try_start_0
    iget-object v1, v13, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    move-object v2, p1

    move-object/from16 v3, p2

    move v4, v9

    move v5, v10

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v8}, Lcom/android/server/media/MediaSessionRecord;->access$3800(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    nop

    .line 1340
    return-void

    .line 1338
    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public skipToQueueItem(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;J)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "id"    # J

    .line 1397
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->skipToTrack(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V

    .line 1399
    return-void
.end method

.method public stop(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "caller"    # Landroid/media/session/ISessionControllerCallback;

    .line 1408
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->stop(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1409
    return-void
.end method

.method public unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .line 1273
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1274
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->access$3100(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    move-result v1

    .line 1275
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1276
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$3200(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1278
    :cond_0
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->access$3300()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1279
    const-string v2, "MediaSessionRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregistering callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    .end local v1    # "index":I
    :cond_1
    monitor-exit v0

    .line 1282
    return-void

    .line 1281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
