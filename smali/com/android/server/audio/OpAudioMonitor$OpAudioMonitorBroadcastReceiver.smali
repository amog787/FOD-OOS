.class Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpAudioMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/OpAudioMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpAudioMonitorBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/OpAudioMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/OpAudioMonitor;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/OpAudioMonitor;Lcom/android/server/audio/OpAudioMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/OpAudioMonitor;
    .param p2, "x1"    # Lcom/android/server/audio/OpAudioMonitor$1;

    .line 395
    invoke-direct {p0, p1}, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;-><init>(Lcom/android/server/audio/OpAudioMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "action":Ljava/lang/String;
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, " lapse:"

    const-wide/16 v5, 0x3e8

    const-string v7, "OpAudioMonitor"

    if-eqz v3, :cond_2

    .line 405
    const/4 v3, 0x2

    const-string v8, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 407
    .local v3, "ringerMode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RINGER_MODE_CHANGED_ACTION:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v8, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v8}, Lcom/android/server/audio/OpAudioMonitor;->access$200(Lcom/android/server/audio/OpAudioMonitor;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 409
    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v4, v3}, Lcom/android/server/audio/OpAudioMonitor;->access$202(Lcom/android/server/audio/OpAudioMonitor;I)I

    .line 410
    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v5

    invoke-static {v4, v7, v8}, Lcom/android/server/audio/OpAudioMonitor;->access$302(Lcom/android/server/audio/OpAudioMonitor;J)J

    goto :goto_0

    .line 412
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v5

    .line 413
    .local v8, "current":J
    iget-object v5, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v5}, Lcom/android/server/audio/OpAudioMonitor;->access$300(Lcom/android/server/audio/OpAudioMonitor;)J

    move-result-wide v5

    sub-long v5, v8, v5

    .line 415
    .local v5, "lapse":J
    const-wide/16 v10, 0x3c

    cmp-long v10, v5, v10

    if-lez v10, :cond_1

    iget-object v10, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v10}, Lcom/android/server/audio/OpAudioMonitor;->access$200(Lcom/android/server/audio/OpAudioMonitor;)I

    move-result v10

    if-eq v10, v3, :cond_1

    .line 416
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 417
    .local v10, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v11, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v11}, Lcom/android/server/audio/OpAudioMonitor;->access$200(Lcom/android/server/audio/OpAudioMonitor;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/audio/OpAudioMonitor;->access$400(Lcom/android/server/audio/OpAudioMonitor;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "switch_status"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "use_time"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 421
    .local v11, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "appid"

    const-string v13, "RBS8PPYT2W"

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v12, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    const-string v13, "alert_slider"

    invoke-virtual {v12, v13, v10, v11}, Lcom/android/server/audio/OpAudioMonitor;->logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 424
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MDM, AudioManager.RINGER_MODE_CHANGED_ACTION:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v13}, Lcom/android/server/audio/OpAudioMonitor;->access$200(Lcom/android/server/audio/OpAudioMonitor;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v10    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v4, v8, v9}, Lcom/android/server/audio/OpAudioMonitor;->access$302(Lcom/android/server/audio/OpAudioMonitor;J)J

    .line 427
    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v4, v3}, Lcom/android/server/audio/OpAudioMonitor;->access$202(Lcom/android/server/audio/OpAudioMonitor;I)I

    .line 429
    .end local v3    # "ringerMode":I
    .end local v5    # "lapse":J
    .end local v8    # "current":J
    :goto_0
    move-object/from16 v31, v2

    goto/16 :goto_7

    :cond_2
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 430
    const/4 v3, 0x0

    const-string/jumbo v8, "state"

    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 434
    .local v8, "hsState":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " hsState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v9, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    const/4 v10, 0x3

    invoke-static {v9, v10, v3}, Lcom/android/server/audio/OpAudioMonitor;->access$500(Lcom/android/server/audio/OpAudioMonitor;II)Z

    move-result v9

    if-nez v9, :cond_3

    .line 445
    const-string v3, "MDM,music is not active, clear"

    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v3, v3, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 447
    return-void

    .line 449
    :cond_3
    const-string v13, " endTime:"

    const/4 v14, 0x1

    const-string v15, " packageName:"

    if-ne v8, v14, :cond_8

    .line 452
    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v3, v3, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 453
    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v3, v3, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 456
    .local v4, "key":Ljava/lang/String;
    iget-object v14, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v14, v14, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 457
    iget-object v14, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v14, v14, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 458
    .local v9, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    div-long v11, v16, v5

    .line 459
    .local v11, "endTime":J
    sub-long v5, v11, v9

    .line 460
    .restart local v5    # "lapse":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v2

    .end local v2    # "action":Ljava/lang/String;
    .local v31, "action":Ljava/lang/String;
    const-string v2, "MDM,in startTime:"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v2, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v2, v2, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v2, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-wide/16 v16, 0x5

    cmp-long v2, v5, v16

    if-lez v2, :cond_4

    const-wide/32 v16, 0x15180

    cmp-long v2, v5, v16

    if-gez v2, :cond_4

    .line 465
    iget-object v2, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    const/16 v23, 0x2

    move-object/from16 v16, v2

    move-wide/from16 v17, v9

    move-wide/from16 v19, v11

    move-wide/from16 v21, v5

    move-object/from16 v24, v4

    invoke-static/range {v16 .. v24}, Lcom/android/server/audio/OpAudioMonitor;->access$600(Lcom/android/server/audio/OpAudioMonitor;JJJILjava/lang/String;)V

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MDM,device:2 lapse:"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 469
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MDM,ignore: speaker lapse:"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 456
    .end local v5    # "lapse":J
    .end local v9    # "startTime":J
    .end local v11    # "endTime":J
    .end local v31    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    :cond_5
    move-object/from16 v31, v2

    .line 473
    .end local v2    # "action":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .restart local v31    # "action":Ljava/lang/String;
    :goto_2
    move-object/from16 v2, v31

    const-wide/16 v5, 0x3e8

    goto/16 :goto_1

    .end local v31    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    :cond_6
    move-object/from16 v31, v2

    .end local v2    # "action":Ljava/lang/String;
    .restart local v31    # "action":Ljava/lang/String;
    goto/16 :goto_7

    .line 452
    .end local v31    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    :cond_7
    move-object/from16 v31, v2

    .end local v2    # "action":Ljava/lang/String;
    .restart local v31    # "action":Ljava/lang/String;
    goto/16 :goto_7

    .line 477
    .end local v31    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    :cond_8
    move-object/from16 v31, v2

    .end local v2    # "action":Ljava/lang/String;
    .restart local v31    # "action":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v2, v2, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 478
    iget-object v2, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v2, v2, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 481
    .local v5, "key":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v6, v6, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 482
    iget-object v6, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v6, v6, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 483
    .restart local v9    # "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v29, 0x3e8

    div-long v11, v11, v29

    .line 484
    .restart local v11    # "endTime":J
    move-object v6, v15

    sub-long v14, v11, v9

    .line 485
    .local v14, "lapse":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v2

    const-string v2, "MDM,out startTime:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v2, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v2, v2, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string/jumbo v2, "portName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "deviceName":Ljava/lang/String;
    const-string/jumbo v3, "microphone"

    move/from16 v34, v8

    const/4 v8, 0x0

    .end local v8    # "hsState":I
    .local v34, "hsState":I
    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 492
    .local v3, "hasMicrophone":I
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 493
    .local v8, "upperName":Ljava/lang/String;
    const/16 v16, 0x2

    .line 495
    .local v16, "device":I
    const-string v1, "USB"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 496
    const/high16 v1, 0x4000000

    move/from16 v32, v1

    const/4 v1, 0x1

    .end local v16    # "device":I
    .local v1, "device":I
    goto :goto_4

    .line 497
    .end local v1    # "device":I
    .restart local v16    # "device":I
    :cond_9
    const/4 v1, 0x1

    if-ne v3, v1, :cond_a

    .line 498
    const/16 v16, 0x4

    move/from16 v32, v16

    goto :goto_4

    .line 500
    :cond_a
    const/16 v16, 0x8

    move/from16 v32, v16

    .line 502
    .end local v16    # "device":I
    .local v32, "device":I
    :goto_4
    const-wide/16 v27, 0x5

    cmp-long v16, v14, v27

    if-lez v16, :cond_c

    const-wide/32 v25, 0x15180

    cmp-long v16, v14, v25

    if-gez v16, :cond_b

    .line 503
    iget-object v1, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    move-object/from16 v16, v1

    move-wide/from16 v17, v9

    move-wide/from16 v19, v11

    move-wide/from16 v21, v14

    move/from16 v23, v32

    move-object/from16 v24, v5

    invoke-static/range {v16 .. v24}, Lcom/android/server/audio/OpAudioMonitor;->access$600(Lcom/android/server/audio/OpAudioMonitor;JJJILjava/lang/String;)V

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MDM,device:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v32

    .end local v32    # "device":I
    .local v0, "device":I
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 502
    .end local v0    # "device":I
    .restart local v32    # "device":I
    :cond_b
    move/from16 v0, v32

    goto :goto_5

    :cond_c
    move/from16 v0, v32

    const-wide/32 v25, 0x15180

    .line 507
    .end local v32    # "device":I
    .restart local v0    # "device":I
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "deviceName":Ljava/lang/String;
    .local v16, "deviceName":Ljava/lang/String;
    const-string v2, "MDM,ignore: device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 481
    .end local v0    # "device":I
    .end local v3    # "hasMicrophone":I
    .end local v9    # "startTime":J
    .end local v11    # "endTime":J
    .end local v14    # "lapse":J
    .end local v16    # "deviceName":Ljava/lang/String;
    .end local v34    # "hsState":I
    .local v8, "hsState":I
    :cond_d
    move-object/from16 v33, v2

    move/from16 v34, v8

    move-object v6, v15

    const-wide/32 v25, 0x15180

    const-wide/16 v27, 0x5

    const-wide/16 v29, 0x3e8

    .line 511
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "hsState":I
    .restart local v34    # "hsState":I
    :goto_6
    const/4 v3, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v15, v6

    move-object/from16 v2, v33

    move/from16 v8, v34

    goto/16 :goto_3

    .line 478
    .end local v34    # "hsState":I
    .restart local v8    # "hsState":I
    :cond_e
    move/from16 v34, v8

    .end local v8    # "hsState":I
    .restart local v34    # "hsState":I
    goto :goto_7

    .line 477
    .end local v34    # "hsState":I
    .restart local v8    # "hsState":I
    :cond_f
    move/from16 v34, v8

    .end local v8    # "hsState":I
    .restart local v34    # "hsState":I
    goto :goto_7

    .line 429
    .end local v31    # "action":Ljava/lang/String;
    .end local v34    # "hsState":I
    .local v2, "action":Ljava/lang/String;
    :cond_10
    move-object/from16 v31, v2

    .line 525
    .end local v2    # "action":Ljava/lang/String;
    .restart local v31    # "action":Ljava/lang/String;
    :goto_7
    return-void
.end method
