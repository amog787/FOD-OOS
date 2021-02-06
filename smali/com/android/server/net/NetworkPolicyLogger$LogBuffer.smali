.class final Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;
.super Lcom/android/internal/util/RingBuffer;
.source "NetworkPolicyLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/util/RingBuffer<",
        "Lcom/android/server/net/NetworkPolicyLogger$Data;",
        ">;"
    }
.end annotation


# static fields
.field private static final sDate:Ljava/util/Date;

.field private static final sFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 361
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 363
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 366
    const-class v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 367
    return-void
.end method

.method private formatDate(J)Ljava/lang/String;
    .locals 2
    .param p1, "millis"    # J

    .line 572
    sget-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 573
    sget-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appIdleStateChanged(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "idle"    # Z

    .line 457
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 458
    .local v0, "data":Lcom/android/server/net/NetworkPolicyLogger$Data;
    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 461
    const/16 v1, 0x8

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 462
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 463
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 465
    return-void
.end method

.method public appIdleWlChanged(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .line 468
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 469
    .local v0, "data":Lcom/android/server/net/NetworkPolicyLogger$Data;
    if-nez v0, :cond_0

    return-void

    .line 471
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 472
    const/16 v1, 0xe

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 473
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 474
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 476
    return-void
.end method

.method public deviceIdleModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 447
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 448
    .local v0, "data":Lcom/android/server/net/NetworkPolicyLogger$Data;
    if-nez v0, :cond_0

    return-void

    .line 450
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 451
    const/4 v1, 0x7

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 452
    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 454
    return-void
.end method

.method public event(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 382
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 383
    .local v0, "data":Lcom/android/server/net/NetworkPolicyLogger$Data;
    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 386
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 387
    iput-object p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 389
    return-void
.end method

.method public firewallChainEnabled(IZ)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "enabled"    # Z

    .line 512
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 513
    .local v0, "data":Lcom/android/server/net/NetworkPolicyLogger$Data;
    if-nez v0, :cond_0

    return-void

    .line 515
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 516
    const/16 v1, 0xc

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 517
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 518
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 520
    return-void
.end method

.method public getContent(Lcom/android/server/net/NetworkPolicyLogger$Data;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 536
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    const-string v1, "-"

    packed-switch v0, :pswitch_data_0

    .line 567
    :pswitch_0
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 557
    :pswitch_1
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger;->access$700(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 565
    :pswitch_2
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger;->access$1100(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 563
    :pswitch_3
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget v2, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->access$1000(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 561
    :pswitch_4
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger;->access$900(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 559
    :pswitch_5
    iget-boolean v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyLogger;->access$800(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 555
    :pswitch_6
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger;->access$600(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 553
    :pswitch_7
    iget-boolean v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyLogger;->access$500(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 551
    :pswitch_8
    iget-boolean v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iget-boolean v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger;->access$400(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 549
    :pswitch_9
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyLogger;->access$300(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 547
    :pswitch_a
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger;->access$200(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 545
    :pswitch_b
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget v2, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->access$100(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 542
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 540
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyLogger;->access$000(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 538
    :pswitch_e
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public meterednessChanged(IZ)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "newMetered"    # Z

    .line 415
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 416
    .local v0, "data":Lcom/android/server/net/NetworkPolicyLogger$Data;
    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 419
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 420
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 421
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 423
    return-void
.end method

.method public networkBlocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "reason"    # I

    .line 392
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 393
    .local v0, "data":Lcom/android/server/net/NetworkPolicyLogger$Data;
    if-nez v0, :cond_0

    return-void

    .line 395
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 396
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 397
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 398
    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 400
    return-void
.end method

.method public paroleStateChanged(Z)V
    .locals 3
    .param p1, "paroleOn"    # Z

    .line 479
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 480
    .local v0, "data":Lcom/android/server/net/NetworkPolicyLogger$Data;
    if-nez v0, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 483
    const/16 v1, 0x9

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 484
    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 486
    return-void
.end method

.method public restrictBackgroundChanged(ZZ)V
    .locals 3
    .param p1, "oldValue"    # Z
    .param p2, "newValue"    # Z

    .line 436
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 437
    .local v0, "data":Lcom/android/server/net/NetworkPolicyLogger$Data;
    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 440
    const/4 v1, 0x6

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 441
    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 442
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 444
    return-void
.end method

.method public reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 523
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 524
    .local v0, "allData":[Lcom/android/server/net/NetworkPolicyLogger$Data;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 525
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 526
    const-string v2, "NULL"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 527
    goto :goto_1

    .line 529
    :cond_0
    aget-object v2, v0, v1

    iget-wide v2, v2, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 530
    const-string v2, " - "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 531
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getContent(Lcom/android/server/net/NetworkPolicyLogger$Data;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 524
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 533
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public tempPowerSaveWlChanged(IZ)V
    .locals 3
    .param p1, "appId"    # I
    .param p2, "added"    # Z

    .line 489
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 490
    .local v0, "data":Lcom/android/server/net/NetworkPolicyLogger$Data;
    if-nez v0, :cond_0

    return-void

    .line 492
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 493
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 494
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 495
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 497
    return-void
.end method

.method public uidFirewallRuleChanged(III)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 500
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 501
    .local v0, "data":Lcom/android/server/net/NetworkPolicyLogger$Data;
    if-nez v0, :cond_0

    return-void

    .line 503
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 504
    const/16 v1, 0xb

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 505
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 506
    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 507
    iput p3, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 509
    return-void
.end method

.method public uidPolicyChanged(III)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "oldPolicy"    # I
    .param p3, "newPolicy"    # I

    .line 403
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 404
    .local v0, "data":Lcom/android/server/net/NetworkPolicyLogger$Data;
    if-nez v0, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 407
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 408
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 409
    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 410
    iput p3, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 412
    return-void
.end method

.method public uidStateChanged(IIJ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J

    .line 370
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 371
    .local v0, "data":Lcom/android/server/net/NetworkPolicyLogger$Data;
    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 374
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 375
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 376
    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 377
    iput-wide p3, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 379
    return-void
.end method

.method public userRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 426
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 427
    .local v0, "data":Lcom/android/server/net/NetworkPolicyLogger$Data;
    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 430
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 431
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 433
    return-void
.end method
