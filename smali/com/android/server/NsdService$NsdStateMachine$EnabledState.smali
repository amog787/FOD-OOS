.class Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/NsdService$NsdStateMachine;

    .line 213
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .line 385
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v3, 0x1

    aget-object v0, p3, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 386
    .local v4, "id":I
    iget-object v0, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/NsdService$ClientInfo;

    .line 387
    .local v5, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    const-string v0, "NsdService"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v5, :cond_0

    .line 388
    invoke-static/range {p1 .. p1}, Lcom/android/server/NsdService$NativeResponseCode;->nameOf(I)Ljava/lang/String;

    move-result-object v8

    .line 389
    .local v8, "name":Ljava/lang/String;
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    aput-object v8, v6, v3

    const-string v3, "id %d for %s has no client mapping"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return v7

    .line 394
    .end local v8    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {v5, v4}, Lcom/android/server/NsdService$ClientInfo;->access$2400(Lcom/android/server/NsdService$ClientInfo;I)I

    move-result v8

    .line 395
    .local v8, "clientId":I
    if-gez v8, :cond_1

    .line 399
    invoke-static/range {p1 .. p1}, Lcom/android/server/NsdService$NativeResponseCode;->nameOf(I)Ljava/lang/String;

    move-result-object v9

    .line 400
    .local v9, "name":Ljava/lang/String;
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v9, v6, v7

    .line 402
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v3

    .line 400
    const-string v3, "Notification %s for listener id %d that is no longer active"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return v7

    .line 406
    .end local v9    # "name":Ljava/lang/String;
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/NsdService$NativeResponseCode;->nameOf(I)Ljava/lang/String;

    move-result-object v9

    .line 407
    .restart local v9    # "name":Ljava/lang/String;
    new-array v10, v6, [Ljava/lang/Object;

    aput-object v9, v10, v7

    aput-object v2, v10, v3

    const-string v11, "Native daemon message %s: %s"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v9    # "name":Ljava/lang/String;
    const/4 v9, 0x4

    const/4 v10, 0x3

    const v11, 0x60013

    const/4 v12, 0x0

    packed-switch p1, :pswitch_data_0

    .line 511
    return v7

    .line 499
    :pswitch_0
    :try_start_0
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v0

    aget-object v6, p3, v9

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/net/nsd/NsdServiceInfo;->setHost(Ljava/net/InetAddress;)V

    .line 500
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v6, 0x60014

    .line 501
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v9

    .line 500
    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    invoke-virtual {v6, v11, v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 506
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_0
    iget-object v0, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, v4}, Lcom/android/server/NsdService;->access$2900(Lcom/android/server/NsdService;I)Z

    .line 507
    invoke-direct {v1, v8, v4, v5}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 508
    invoke-static {v5, v12}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 509
    goto/16 :goto_2

    .line 490
    :pswitch_1
    iget-object v0, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, v4}, Lcom/android/server/NsdService;->access$2900(Lcom/android/server/NsdService;I)Z

    .line 491
    invoke-direct {v1, v8, v4, v5}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 492
    invoke-static {v5, v12}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 493
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0, v11, v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 495
    goto/16 :goto_2

    .line 443
    :pswitch_2
    goto/16 :goto_2

    .line 440
    :pswitch_3
    goto/16 :goto_2

    .line 446
    :pswitch_4
    const/4 v13, 0x0

    .line 447
    .local v13, "index":I
    :goto_1
    aget-object v14, p3, v6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_3

    aget-object v14, p3, v6

    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-eq v14, v15, :cond_3

    .line 448
    aget-object v14, p3, v6

    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5c

    if-ne v14, v15, :cond_2

    .line 449
    add-int/lit8 v13, v13, 0x1

    .line 451
    :cond_2
    add-int/2addr v13, v3

    goto :goto_1

    .line 453
    :cond_3
    aget-object v14, p3, v6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v13, v14, :cond_4

    .line 454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid service found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    goto/16 :goto_2

    .line 457
    :cond_4
    aget-object v0, p3, v6

    invoke-virtual {v0, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "name":Ljava/lang/String;
    aget-object v6, p3, v6

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 459
    .local v6, "rest":Ljava/lang/String;
    const-string v14, ".local."

    const-string v15, ""

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 461
    .local v14, "type":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v15, v15, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v15, v0}, Lcom/android/server/NsdService;->access$2600(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v15

    invoke-virtual {v15, v0}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 464
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 465
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v15

    aget-object v9, p3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v15, v9}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 466
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v9

    const/4 v15, 0x6

    aget-object v15, p3, v15

    invoke-virtual {v9, v15}, Landroid/net/nsd/NsdServiceInfo;->setTxtRecords(Ljava/lang/String;)V

    .line 468
    iget-object v9, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v9, v9, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v9, v4}, Lcom/android/server/NsdService;->access$2700(Lcom/android/server/NsdService;I)Z

    .line 469
    invoke-direct {v1, v8, v4, v5}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 471
    iget-object v9, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v9, v9, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v9}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)I

    move-result v9

    .line 472
    .local v9, "id2":I
    iget-object v15, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v15, v15, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    aget-object v10, p3, v10

    invoke-static {v15, v9, v10}, Lcom/android/server/NsdService;->access$2800(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 473
    const v7, 0x60012

    invoke-direct {v1, v8, v9, v5, v7}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto :goto_2

    .line 475
    :cond_5
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    invoke-virtual {v10, v11, v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 477
    invoke-static {v5, v12}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 479
    goto :goto_2

    .line 482
    .end local v0    # "name":Ljava/lang/String;
    .end local v6    # "rest":Ljava/lang/String;
    .end local v9    # "id2":I
    .end local v13    # "index":I
    .end local v14    # "type":Ljava/lang/String;
    :pswitch_5
    iget-object v0, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, v4}, Lcom/android/server/NsdService;->access$2700(Lcom/android/server/NsdService;I)Z

    .line 483
    invoke-direct {v1, v8, v4, v5}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 484
    invoke-static {v5, v12}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 485
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0, v11, v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 487
    goto :goto_2

    .line 429
    :pswitch_6
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    aget-object v6, p3, v6

    invoke-direct {v0, v6, v12}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .local v0, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    const v7, 0x6000b

    invoke-virtual {v6, v7, v4, v8, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 432
    goto :goto_2

    .line 435
    .end local v0    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_7
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v6, 0x6000a

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 437
    goto :goto_2

    .line 418
    :pswitch_8
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    aget-object v6, p3, v6

    aget-object v9, p3, v10

    invoke-direct {v0, v6, v9}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .restart local v0    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    const v9, 0x60005

    invoke-virtual {v6, v9, v7, v8, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 421
    goto :goto_2

    .line 412
    .end local v0    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_9
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    aget-object v6, p3, v6

    aget-object v9, p3, v10

    invoke-direct {v0, v6, v9}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .restart local v0    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    const v9, 0x60004

    invoke-virtual {v6, v9, v7, v8, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 415
    goto :goto_2

    .line 424
    .end local v0    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_a
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v6, 0x60003

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 426
    nop

    .line 513
    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x25a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V
    .locals 1
    .param p1, "clientId"    # I
    .param p2, "globalId"    # I
    .param p3, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;

    .line 244
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 245
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 246
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 247
    return-void
.end method

.method private requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z
    .locals 2
    .param p1, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;

    .line 230
    invoke-static {p1}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exceeded max outstanding requests "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NsdService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V
    .locals 1
    .param p1, "clientId"    # I
    .param p2, "globalId"    # I
    .param p3, "clientInfo"    # Lcom/android/server/NsdService$ClientInfo;
    .param p4, "what"    # I

    .line 238
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 240
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/NsdService;->access$900(Lcom/android/server/NsdService;Z)V

    .line 217
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NsdService$DaemonConnection;->start()V

    .line 220
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NsdService$DaemonConnection;->stop()V

    .line 227
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 254
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, " "

    const/4 v2, 0x4

    const-string v3, "NsdService"

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 378
    return v4

    .line 372
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/NsdService$NativeEvent;

    .line 373
    .local v0, "event":Lcom/android/server/NsdService$NativeEvent;
    iget v1, v0, Lcom/android/server/NsdService$NativeEvent;->code:I

    iget-object v2, v0, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/NsdService$NativeEvent;->cooked:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 374
    return v4

    .line 266
    .end local v0    # "event":Lcom/android/server/NsdService$NativeEvent;
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-static {v0}, Lcom/android/server/NsdService$NsdStateMachine;->access$1400(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 267
    goto/16 :goto_0

    .line 351
    :sswitch_2
    const-string v0, "Resolve service"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/nsd/NsdServiceInfo;

    .line 353
    .local v0, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NsdService$ClientInfo;

    .line 356
    .local v1, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-static {v1}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v2

    const v3, 0x60013

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v4, 0x3

    invoke-static {v2, p1, v3, v4}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 359
    goto/16 :goto_0

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v2}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)I

    move-result v2

    .line 363
    .local v2, "id":I
    iget-object v5, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v5, v5, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v5, v2, v0}, Lcom/android/server/NsdService;->access$2300(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 364
    new-instance v3, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v3}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    invoke-static {v1, v3}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    .line 365
    iget v3, p1, Landroid/os/Message;->arg2:I

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3, v2, v1, v4}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_0

    .line 367
    :cond_1
    iget-object v5, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v5, v5, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v5, p1, v3, v4}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 370
    goto/16 :goto_0

    .line 333
    .end local v0    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    .end local v1    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v2    # "id":I
    :sswitch_3
    const-string/jumbo v0, "unregister service"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 336
    .local v0, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    const v1, 0x6000d

    :try_start_0
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .restart local v2    # "id":I
    nop

    .line 342
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v2, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 343
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3, v2}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 344
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v3, 0x6000e

    invoke-static {v1, p1, v3}, Lcom/android/server/NsdService;->access$1900(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 346
    :cond_2
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3, p1, v1, v4}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 349
    goto/16 :goto_0

    .line 337
    .end local v2    # "id":I
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3, p1, v1, v4}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 340
    goto/16 :goto_0

    .line 313
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :sswitch_4
    const-string v0, "Register service"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 315
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v5

    const v6, 0x6000a

    if-eqz v5, :cond_3

    .line 316
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, p1, v6, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 318
    goto/16 :goto_0

    .line 321
    :cond_3
    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v2}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)I

    move-result v2

    .line 322
    .local v2, "id":I
    iget-object v5, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v5, v5, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/nsd/NsdServiceInfo;

    invoke-static {v5, v2, v7}, Lcom/android/server/NsdService;->access$2000(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v1, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_0

    .line 327
    :cond_4
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, v2}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;I)Z

    .line 328
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, p1, v6, v4}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 331
    goto/16 :goto_0

    .line 294
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v2    # "id":I
    :sswitch_5
    const-string v0, "Stop service discovery"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 298
    .restart local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    const v1, 0x60007

    :try_start_1
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    .restart local v2    # "id":I
    nop

    .line 304
    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v2, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    .line 305
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3, v2}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 306
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v3, 0x60008

    invoke-static {v1, p1, v3}, Lcom/android/server/NsdService;->access$1900(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 308
    :cond_5
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3, p1, v1, v4}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 311
    goto/16 :goto_0

    .line 299
    .end local v2    # "id":I
    :catch_1
    move-exception v2

    .line 300
    .local v2, "e":Ljava/lang/NullPointerException;
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3, p1, v1, v4}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 302
    goto/16 :goto_0

    .line 269
    .end local v0    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :sswitch_6
    const-string v0, "Discover services"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/nsd/NsdServiceInfo;

    .line 271
    .local v0, "servInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v5, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v5, v5, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v5}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/NsdService$ClientInfo;

    .line 273
    .local v5, "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    invoke-direct {p0, v5}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v6

    const v7, 0x60003

    if-eqz v6, :cond_6

    .line 274
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, p1, v7, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 276
    goto :goto_0

    .line 279
    :cond_6
    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v2}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)I

    move-result v2

    .line 280
    .local v2, "id":I
    iget-object v6, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v6, v6, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-virtual {v0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v2, v8}, Lcom/android/server/NsdService;->access$1600(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discover "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v1, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    .line 286
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v3, 0x60002

    invoke-static {v1, p1, v3, v0}, Lcom/android/server/NsdService;->access$1700(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 288
    :cond_7
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, v2}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;I)Z

    .line 289
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1, p1, v7, v4}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 292
    nop

    .line 380
    .end local v0    # "servInfo":Landroid/net/nsd/NsdServiceInfo;
    .end local v2    # "id":I
    .end local v5    # "clientInfo":Lcom/android/server/NsdService$ClientInfo;
    :cond_8
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 263
    :sswitch_7
    return v4

    .line 257
    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    .line 258
    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 259
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NsdService$DaemonConnection;->start()V

    .line 261
    :cond_9
    return v4

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_8
        0x11004 -> :sswitch_7
        0x60001 -> :sswitch_6
        0x60006 -> :sswitch_5
        0x60009 -> :sswitch_4
        0x6000c -> :sswitch_3
        0x60012 -> :sswitch_2
        0x60019 -> :sswitch_1
        0x6001a -> :sswitch_0
    .end sparse-switch
.end method
