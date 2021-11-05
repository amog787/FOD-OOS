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

    .line 1215
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Landroid/media/session/ISessionController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "direction"    # I
    .param p4, "flags"    # I

    .line 1299
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1300
    .local v10, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1301
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1303
    .local v12, "token":J
    move-object v14, p0

    :try_start_0
    iget-object v1, v14, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v10

    move v5, v11

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1306
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    nop

    .line 1308
    return-void

    .line 1306
    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    throw v0
.end method

.method public fastForward(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1396
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->fastForward(Ljava/lang/String;II)V

    .line 1397
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 1453
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1800(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1454
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2700(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFlags()J
    .locals 2

    .line 1288
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1200(Lcom/android/server/media/MediaSessionRecord;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1283
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1700(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Landroid/media/MediaMetadata;
    .locals 2

    .line 1429
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1800(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1430
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$1900(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1431
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3900(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .locals 1

    .line 1436
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$4400(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Landroid/content/pm/ParceledListSlice;
    .locals 3

    .line 1441
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1800(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1442
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2500(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$2500(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :goto_0
    monitor-exit v0

    return-object v1

    .line 1443
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1448
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRatingType()I
    .locals 1

    .line 1460
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2800(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v0

    return v0
.end method

.method public getSessionInfo()Landroid/os/Bundle;
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$4100(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1273
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$4000(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;
    .locals 1

    .line 1293
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$4200(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1386
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->next(Ljava/lang/String;II)V

    .line 1387
    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1376
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->pause(Ljava/lang/String;II)V

    .line 1377
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1348
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->play(Ljava/lang/String;II)V

    .line 1349
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1353
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 1355
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1359
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 1361
    return-void
.end method

.method public playFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1365
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V

    .line 1367
    return-void
.end method

.method public prepare(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1325
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepare(Ljava/lang/String;II)V

    .line 1326
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1330
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1331
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1330
    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 1332
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1336
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1337
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1336
    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 1338
    return-void
.end method

.method public prepareFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1342
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V

    .line 1344
    return-void
.end method

.method public previous(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1391
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->previous(Ljava/lang/String;II)V

    .line 1392
    return-void
.end method

.method public rate(Ljava/lang/String;Landroid/media/Rating;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "rating"    # Landroid/media/Rating;

    .line 1411
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rate(Ljava/lang/String;IILandroid/media/Rating;)V

    .line 1412
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .line 1231
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1800(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1234
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$3500(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1236
    :try_start_1
    invoke-interface {p2}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    goto :goto_0

    .line 1237
    :catch_0
    move-exception v1

    .line 1240
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    .line 1242
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p2}, Lcom/android/server/media/MediaSessionRecord;->access$3600(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    move-result v1

    if-gez v1, :cond_1

    .line 1243
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$3700(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 1244
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v2, v3, p2, p1, v4}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;I)V

    .line 1243
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->access$3800()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1246
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

    .line 1250
    :cond_1
    monitor-exit v0

    .line 1251
    return-void

    .line 1250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public rewind(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1401
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rewind(Ljava/lang/String;II)V

    .line 1402
    return-void
.end method

.method public seekTo(Ljava/lang/String;J)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pos"    # J

    .line 1406
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->seekTo(Ljava/lang/String;IIJ)V

    .line 1407
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "cb"    # Landroid/os/ResultReceiver;

    .line 1219
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCommand(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1221
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 1423
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCustomAction(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 1425
    return-void
.end method

.method public sendMediaButton(Ljava/lang/String;Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1225
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1225
    const/4 v5, 0x0

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setPlaybackSpeed(Ljava/lang/String;F)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "speed"    # F

    .line 1417
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setPlaybackSpeed(Ljava/lang/String;IIF)V

    .line 1419
    return-void
.end method

.method public setVolumeTo(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "flags"    # I

    .line 1312
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1313
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1314
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1316
    .local v9, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move v4, v8

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord;->access$4300(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1320
    nop

    .line 1321
    return-void

    .line 1319
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1320
    throw v0
.end method

.method public skipToQueueItem(Ljava/lang/String;J)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # J

    .line 1371
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->skipToTrack(Ljava/lang/String;IIJ)V

    .line 1372
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1381
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->stop(Ljava/lang/String;II)V

    .line 1382
    return-void
.end method

.method public unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .line 1255
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1800(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->access$3600(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    move-result v1

    .line 1257
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1258
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$3700(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1260
    :cond_0
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->access$3800()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1261
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

    .line 1263
    .end local v1    # "index":I
    :cond_1
    monitor-exit v0

    .line 1264
    return-void

    .line 1263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
