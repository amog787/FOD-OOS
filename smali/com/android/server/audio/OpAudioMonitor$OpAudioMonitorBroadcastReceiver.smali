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

    .line 538
    iput-object p1, p0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/OpAudioMonitor;Lcom/android/server/audio/OpAudioMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/OpAudioMonitor;
    .param p2, "x1"    # Lcom/android/server/audio/OpAudioMonitor$1;

    .line 538
    invoke-direct {p0, p1}, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;-><init>(Lcom/android/server/audio/OpAudioMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 541
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "action":Ljava/lang/String;
    if-nez v2, :cond_0

    return-void

    .line 544
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpAudioMonitor"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x2

    const-string v6, " lapse:"

    const-wide/16 v7, 0x3e8

    if-eqz v3, :cond_3

    .line 550
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 552
    .local v3, "ringerMode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RINGER_MODE_CHANGED_ACTION:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v5, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v5}, Lcom/android/server/audio/OpAudioMonitor;->access$400(Lcom/android/server/audio/OpAudioMonitor;)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_1

    .line 554
    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v4, v3}, Lcom/android/server/audio/OpAudioMonitor;->access$402(Lcom/android/server/audio/OpAudioMonitor;I)I

    .line 555
    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v7

    invoke-static {v4, v5, v6}, Lcom/android/server/audio/OpAudioMonitor;->access$502(Lcom/android/server/audio/OpAudioMonitor;J)J

    goto :goto_0

    .line 557
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long/2addr v9, v7

    .line 558
    .local v9, "current":J
    iget-object v5, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v5}, Lcom/android/server/audio/OpAudioMonitor;->access$500(Lcom/android/server/audio/OpAudioMonitor;)J

    move-result-wide v7

    sub-long v7, v9, v7

    .line 560
    .local v7, "lapse":J
    const-wide/16 v11, 0x3c

    cmp-long v5, v7, v11

    if-lez v5, :cond_2

    iget-object v5, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v5}, Lcom/android/server/audio/OpAudioMonitor;->access$400(Lcom/android/server/audio/OpAudioMonitor;)I

    move-result v5

    if-eq v5, v3, :cond_2

    .line 561
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 562
    .local v5, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v11, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v11}, Lcom/android/server/audio/OpAudioMonitor;->access$400(Lcom/android/server/audio/OpAudioMonitor;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/audio/OpAudioMonitor;->access$600(Lcom/android/server/audio/OpAudioMonitor;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "switch_status"

    invoke-interface {v5, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "use_time"

    invoke-interface {v5, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 565
    .local v11, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "appid"

    const-string v13, "RBS8PPYT2W"

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    iget-object v12, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    const-string v13, "alert_slider"

    invoke-virtual {v12, v13, v5, v11}, Lcom/android/server/audio/OpAudioMonitor;->logMdm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 568
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MDM, AudioManager.RINGER_MODE_CHANGED_ACTION:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v13}, Lcom/android/server/audio/OpAudioMonitor;->access$400(Lcom/android/server/audio/OpAudioMonitor;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v5    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v4, v9, v10}, Lcom/android/server/audio/OpAudioMonitor;->access$502(Lcom/android/server/audio/OpAudioMonitor;J)J

    .line 571
    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v4, v3}, Lcom/android/server/audio/OpAudioMonitor;->access$402(Lcom/android/server/audio/OpAudioMonitor;I)I

    .line 573
    .end local v3    # "ringerMode":I
    .end local v7    # "lapse":J
    .end local v9    # "current":J
    :goto_0
    move-object/from16 v16, v2

    goto/16 :goto_b

    :cond_3
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v9, "MDM,device:2 lapse:"

    const-string v10, "MDM,music is not active, clear"

    const/4 v11, 0x3

    const-string v5, " endTime:"

    const/4 v12, 0x0

    const-string v13, " packageName:"

    if-eqz v3, :cond_f

    .line 574
    const-string/jumbo v3, "state"

    invoke-virtual {v1, v3, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 575
    .local v3, "hsState":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "action: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " hsState:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v14, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v14, v11, v12}, Lcom/android/server/audio/OpAudioMonitor;->access$700(Lcom/android/server/audio/OpAudioMonitor;II)Z

    move-result v11

    if-nez v11, :cond_4

    .line 579
    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v4, v4, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 581
    return-void

    .line 583
    :cond_4
    const/4 v10, 0x1

    if-ne v3, v10, :cond_9

    .line 584
    iget-object v6, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v6, v6, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 585
    iget-object v6, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v6, v6, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 587
    .local v10, "key":Ljava/lang/String;
    iget-object v11, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v11, v11, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 588
    iget-object v11, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v11, v11, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 589
    .local v11, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    div-long/2addr v14, v7

    .line 590
    .local v14, "endTime":J
    sub-long v7, v14, v11

    .line 591
    .restart local v7    # "lapse":J
    move/from16 v16, v3

    .end local v3    # "hsState":I
    .local v16, "hsState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v6

    const-string v6, "MDM,in startTime:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v3, v3, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-wide/16 v19, 0x5

    cmp-long v3, v7, v19

    if-lez v3, :cond_5

    const-wide/32 v17, 0x15180

    cmp-long v3, v7, v17

    if-gez v3, :cond_5

    .line 594
    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    const/16 v28, 0x2

    move-object/from16 v21, v3

    move-wide/from16 v22, v11

    move-wide/from16 v24, v14

    move-wide/from16 v26, v7

    move-object/from16 v29, v10

    invoke-static/range {v21 .. v29}, Lcom/android/server/audio/OpAudioMonitor;->access$800(Lcom/android/server/audio/OpAudioMonitor;JJJILjava/lang/String;)V

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 597
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MDM,ignore: speaker lapse:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 587
    .end local v7    # "lapse":J
    .end local v11    # "startTime":J
    .end local v14    # "endTime":J
    .end local v16    # "hsState":I
    .restart local v3    # "hsState":I
    :cond_6
    move/from16 v16, v3

    move-object/from16 v30, v6

    .line 600
    .end local v3    # "hsState":I
    .end local v10    # "key":Ljava/lang/String;
    .restart local v16    # "hsState":I
    :goto_2
    move/from16 v3, v16

    move-object/from16 v6, v30

    const-wide/16 v7, 0x3e8

    goto/16 :goto_1

    .end local v16    # "hsState":I
    .restart local v3    # "hsState":I
    :cond_7
    move/from16 v16, v3

    .end local v3    # "hsState":I
    .restart local v16    # "hsState":I
    goto/16 :goto_6

    .line 584
    .end local v16    # "hsState":I
    .restart local v3    # "hsState":I
    :cond_8
    move/from16 v16, v3

    .end local v3    # "hsState":I
    .restart local v16    # "hsState":I
    goto/16 :goto_6

    .line 603
    .end local v16    # "hsState":I
    .restart local v3    # "hsState":I
    :cond_9
    move/from16 v16, v3

    .end local v3    # "hsState":I
    .restart local v16    # "hsState":I
    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v3, v3, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 604
    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v3, v3, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 606
    .local v7, "key":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v8, v8, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 607
    iget-object v8, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v8, v8, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 608
    .local v8, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v21, 0x3e8

    div-long v14, v14, v21

    .line 609
    .restart local v14    # "endTime":J
    sub-long v10, v14, v8

    .line 610
    .local v10, "lapse":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v3

    const-string v3, "MDM,out startTime:"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v3, v3, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v3, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string/jumbo v3, "portName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, "deviceName":Ljava/lang/String;
    const-string/jumbo v12, "microphone"

    move-object/from16 v32, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v12, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 614
    .local v12, "hasMicrophone":I
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, "upperName":Ljava/lang/String;
    const/16 v21, 0x2

    .line 617
    .local v21, "device":I
    move-object/from16 v33, v3

    .end local v3    # "deviceName":Ljava/lang/String;
    .local v33, "deviceName":Ljava/lang/String;
    const-string v3, "USB"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 618
    const/high16 v3, 0x4000000

    move/from16 v30, v3

    const/4 v3, 0x1

    .end local v21    # "device":I
    .local v3, "device":I
    goto :goto_4

    .line 619
    .end local v3    # "device":I
    .restart local v21    # "device":I
    :cond_a
    const/4 v3, 0x1

    if-ne v12, v3, :cond_b

    .line 620
    const/16 v21, 0x4

    move/from16 v30, v21

    goto :goto_4

    .line 622
    :cond_b
    const/16 v21, 0x8

    move/from16 v30, v21

    .line 624
    .end local v21    # "device":I
    .local v30, "device":I
    :goto_4
    const-wide/16 v19, 0x5

    cmp-long v21, v10, v19

    if-lez v21, :cond_c

    const-wide/32 v17, 0x15180

    cmp-long v21, v10, v17

    if-gez v21, :cond_c

    .line 625
    iget-object v3, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    move-object/from16 v21, v3

    move-wide/from16 v22, v8

    move-wide/from16 v24, v14

    move-wide/from16 v26, v10

    move/from16 v28, v30

    move-object/from16 v29, v7

    invoke-static/range {v21 .. v29}, Lcom/android/server/audio/OpAudioMonitor;->access$800(Lcom/android/server/audio/OpAudioMonitor;JJJILjava/lang/String;)V

    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    .end local v5    # "upperName":Ljava/lang/String;
    .local v21, "upperName":Ljava/lang/String;
    const-string v5, "MDM,device:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v30

    .end local v30    # "device":I
    .local v5, "device":I
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 624
    .end local v21    # "upperName":Ljava/lang/String;
    .local v5, "upperName":Ljava/lang/String;
    .restart local v30    # "device":I
    :cond_c
    move-object/from16 v21, v5

    move/from16 v5, v30

    .line 628
    .end local v30    # "device":I
    .local v5, "device":I
    .restart local v21    # "upperName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v22, v8

    .end local v8    # "startTime":J
    .local v22, "startTime":J
    const-string v8, "MDM,ignore: device:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 606
    .end local v5    # "device":I
    .end local v10    # "lapse":J
    .end local v12    # "hasMicrophone":I
    .end local v14    # "endTime":J
    .end local v21    # "upperName":Ljava/lang/String;
    .end local v22    # "startTime":J
    .end local v33    # "deviceName":Ljava/lang/String;
    :cond_d
    move-object/from16 v31, v3

    move-object/from16 v32, v5

    .line 631
    .end local v7    # "key":Ljava/lang/String;
    :goto_5
    move-object/from16 v3, v31

    move-object/from16 v5, v32

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto/16 :goto_3

    .line 634
    .end local v16    # "hsState":I
    :cond_e
    :goto_6
    move-object/from16 v16, v2

    goto/16 :goto_b

    .line 636
    :cond_f
    move-object/from16 v32, v5

    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 637
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 638
    .local v3, "a2dpState":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "a2dpState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v6, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v6, v11, v5}, Lcom/android/server/audio/OpAudioMonitor;->access$700(Lcom/android/server/audio/OpAudioMonitor;II)Z

    move-result v5

    if-nez v5, :cond_10

    .line 641
    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v4, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v4, v4, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 643
    return-void

    .line 645
    :cond_10
    const/4 v5, 0x2

    if-ne v3, v5, :cond_15

    .line 646
    iget-object v5, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v5, v5, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_14

    .line 647
    iget-object v5, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v5, v5, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 648
    .local v6, "key":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v7, v7, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 649
    iget-object v7, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v7, v7, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 650
    .local v7, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v14, 0x3e8

    div-long/2addr v10, v14

    .line 651
    .local v10, "endTime":J
    sub-long v14, v10, v7

    .line 652
    .local v14, "lapse":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDM,a2dp connected, startTime:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v1, v32

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v12, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v12, v12, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    move-object/from16 v16, v2

    .end local v2    # "action":Ljava/lang/String;
    .local v16, "action":Ljava/lang/String;
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v12, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-wide/16 v19, 0x5

    cmp-long v2, v14, v19

    if-lez v2, :cond_11

    const-wide/32 v17, 0x15180

    cmp-long v2, v14, v17

    if-gez v2, :cond_11

    .line 655
    iget-object v2, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    const/16 v28, 0x2

    move-object/from16 v21, v2

    move-wide/from16 v22, v7

    move-wide/from16 v24, v10

    move-wide/from16 v26, v14

    move-object/from16 v29, v6

    invoke-static/range {v21 .. v29}, Lcom/android/server/audio/OpAudioMonitor;->access$800(Lcom/android/server/audio/OpAudioMonitor;JJJILjava/lang/String;)V

    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 658
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MDM,ignore: speaker, lapse:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 648
    .end local v7    # "startTime":J
    .end local v10    # "endTime":J
    .end local v14    # "lapse":J
    .end local v16    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    :cond_12
    move-object/from16 v16, v2

    move-object/from16 v1, v32

    .line 661
    .end local v2    # "action":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    :goto_8
    move-object/from16 v32, v1

    move-object/from16 v2, v16

    move-object/from16 v1, p2

    goto/16 :goto_7

    .end local v16    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    :cond_13
    move-object/from16 v16, v2

    .end local v2    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    goto/16 :goto_b

    .line 646
    .end local v16    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    :cond_14
    move-object/from16 v16, v2

    .end local v2    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    goto/16 :goto_b

    .line 663
    .end local v16    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    :cond_15
    move-object/from16 v16, v2

    move-object/from16 v1, v32

    .end local v2    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    if-nez v3, :cond_1a

    .line 664
    iget-object v2, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v2, v2, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1a

    .line 665
    iget-object v2, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v2, v2, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 666
    .local v5, "key":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v6, v6, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_18

    .line 667
    iget-object v6, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v6, v6, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 668
    .local v6, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 669
    .local v8, "endTime":J
    sub-long v14, v8, v6

    .line 670
    .restart local v14    # "lapse":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MDM,a2dp disconnected, startTime:"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v10, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    iget-object v10, v10, Lcom/android/server/audio/OpAudioMonitor;->mPkStartTime:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-wide/16 v10, 0x5

    cmp-long v12, v14, v10

    if-lez v12, :cond_16

    const-wide/32 v17, 0x15180

    cmp-long v12, v14, v17

    if-gez v12, :cond_17

    .line 673
    iget-object v12, v0, Lcom/android/server/audio/OpAudioMonitor$OpAudioMonitorBroadcastReceiver;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    const/16 v28, 0x80

    move-object/from16 v21, v12

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v14

    move-object/from16 v29, v5

    invoke-static/range {v21 .. v29}, Lcom/android/server/audio/OpAudioMonitor;->access$800(Lcom/android/server/audio/OpAudioMonitor;JJJILjava/lang/String;)V

    .line 674
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MDM,device:128 lapse:"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 672
    :cond_16
    const-wide/32 v17, 0x15180

    .line 676
    :cond_17
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MDM,ignore: a2dp, lapse:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 666
    .end local v6    # "startTime":J
    .end local v8    # "endTime":J
    .end local v14    # "lapse":J
    :cond_18
    const-wide/32 v17, 0x15180

    .line 679
    .end local v5    # "key":Ljava/lang/String;
    :goto_a
    goto/16 :goto_9

    .line 636
    .end local v3    # "a2dpState":I
    .end local v16    # "action":Ljava/lang/String;
    .restart local v2    # "action":Ljava/lang/String;
    :cond_19
    move-object/from16 v16, v2

    .line 683
    .end local v2    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    :cond_1a
    :goto_b
    return-void
.end method
