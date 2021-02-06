.class public final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method protected constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .line 1268
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .locals 1

    .line 1363
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .locals 2
    .param p1, "streams"    # I

    .line 1370
    or-int/lit8 p1, p1, 0x26

    .line 1374
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1377
    or-int/lit16 p1, p1, 0x818

    goto :goto_0

    .line 1381
    :cond_0
    and-int/lit16 p1, p1, -0x819

    .line 1386
    :goto_0
    return p1
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 15
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .line 1327
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p2

    .line 1328
    .local v4, "ringerModeInternalOut":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    .line 1329
    .local v7, "isChange":Z
    :goto_0
    if-ne v3, v6, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v5

    .line 1331
    .local v8, "isVibrate":Z
    :goto_1
    const/4 v9, -0x1

    .line 1332
    .local v9, "newZen":I
    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    goto :goto_2

    .line 1346
    :cond_2
    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v5, :cond_3

    .line 1347
    const/4 v9, 0x0

    move v5, v9

    goto :goto_4

    .line 1351
    :cond_3
    :goto_2
    move v5, v9

    goto :goto_4

    .line 1334
    :cond_4
    if-eqz v7, :cond_7

    .line 1335
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v10, v10, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v10, :cond_5

    .line 1336
    const/4 v9, 0x1

    .line 1338
    :cond_5
    if-eqz v8, :cond_6

    move v5, v6

    goto :goto_3

    .line 1339
    :cond_6
    nop

    :goto_3
    move v4, v5

    move v5, v9

    goto :goto_4

    .line 1341
    :cond_7
    move/from16 v4, p4

    .line 1343
    move v5, v9

    .line 1351
    .end local v9    # "newZen":I
    .local v5, "newZen":I
    :goto_4
    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    .line 1352
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const-string/jumbo v12, "ringerModeExternal"

    move v10, v5

    move-object/from16 v13, p3

    invoke-static/range {v9 .. v14}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1356
    :cond_8
    move-object/from16 v6, p3

    invoke-static {v1, v2, v6, v3, v4}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 1358
    return v4
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 10
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .line 1277
    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1279
    .local v1, "isChange":Z
    :goto_0
    move v2, p2

    .line 1281
    .local v2, "ringerModeExternalOut":I
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v3, v3, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v3, v3, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v3, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v3, v3, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1283
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1286
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/notification/ZenModeHelper;->access$500(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    .line 1288
    :cond_2
    const/4 v3, -0x1

    .line 1289
    .local v3, "newZen":I
    if-eqz p2, :cond_6

    const/4 v4, 0x2

    if-eq p2, v0, :cond_3

    if-eq p2, v4, :cond_3

    goto :goto_1

    .line 1300
    :cond_3
    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v5, v4, :cond_4

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v4, v0, :cond_5

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1304
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1306
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_2

    .line 1307
    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v0, :cond_8

    .line 1308
    const/4 v2, 0x0

    move v0, v3

    goto :goto_2

    .line 1291
    :cond_6
    if-eqz v1, :cond_8

    iget-boolean v0, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v0, :cond_8

    .line 1292
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v0, :cond_7

    .line 1293
    const/4 v3, 0x1

    .line 1295
    :cond_7
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/notification/ZenModeHelper;->access$500(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    move v0, v3

    goto :goto_2

    .line 1313
    :cond_8
    :goto_1
    move v0, v3

    .end local v3    # "newZen":I
    .local v0, "newZen":I
    :goto_2
    const/4 v9, -0x1

    if-eq v0, v9, :cond_9

    .line 1314
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v6, "ringerModeInternal"

    move v4, v0

    invoke-static/range {v3 .. v8}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1317
    :cond_9
    if-nez v1, :cond_a

    if-ne v0, v9, :cond_a

    if-eq p4, v2, :cond_b

    .line 1318
    :cond_a
    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 1321
    :cond_b
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1271
    const-string v0, "ZenModeHelper"

    return-object v0
.end method
