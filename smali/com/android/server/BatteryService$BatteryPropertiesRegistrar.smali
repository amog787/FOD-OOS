.class final Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
.super Landroid/os/IBatteryPropertiesRegistrar$Stub;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryPropertiesRegistrar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 1431
    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/BatteryService;
    .param p2, "x1"    # Lcom/android/server/BatteryService$1;

    .line 1431
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method

.method static synthetic lambda$getProperty$0(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1442
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1443
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1444
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$1(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1448
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1449
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1450
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$2(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1454
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1455
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1456
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$3(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1460
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1461
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1462
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$4(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1466
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1467
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1468
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$5(Landroid/util/MutableInt;Landroid/os/BatteryProperty;IJ)V
    .locals 0
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # J

    .line 1472
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1473
    if-nez p2, :cond_0

    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1474
    :cond_0
    return-void
.end method


# virtual methods
.method public getProperty(ILandroid/os/BatteryProperty;)I
    .locals 3
    .param p1, "id"    # I
    .param p2, "prop"    # Landroid/os/BatteryProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1434
    const-string v0, "HealthGetProperty"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1600(Ljava/lang/String;)V

    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 1437
    .local v0, "service":Landroid/hardware/health/V2_0/IHealth;
    if-eqz v0, :cond_0

    .line 1438
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 1439
    .local v1, "outResult":Landroid/util/MutableInt;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1465
    :pswitch_0
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$hInbvsihGvN2hXqvdcoFYzdeqHw;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$hInbvsihGvN2hXqvdcoFYzdeqHw;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    .line 1469
    goto :goto_0

    .line 1471
    :pswitch_1
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$9z3zqgxtPzBN8Qoni5nHVb0m8EY;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$9z3zqgxtPzBN8Qoni5nHVb0m8EY;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    goto :goto_0

    .line 1459
    :pswitch_2
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    .line 1463
    goto :goto_0

    .line 1453
    :pswitch_3
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$KZAu97wwr_7_MI0awCjQTzdIuAI;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$KZAu97wwr_7_MI0awCjQTzdIuAI;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    .line 1457
    goto :goto_0

    .line 1447
    :pswitch_4
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$JTQ79fl14NyImudsJhx-Mp1dJI8;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$JTQ79fl14NyImudsJhx-Mp1dJI8;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    .line 1451
    goto :goto_0

    .line 1441
    :pswitch_5
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$7Y-B9O7NDYgUY9hQvFzC2FQ2V5w;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$7Y-B9O7NDYgUY9hQvFzC2FQ2V5w;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    .line 1445
    nop

    .line 1477
    :goto_0
    iget v2, v1, Landroid/util/MutableInt;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1479
    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1477
    return v2

    .line 1437
    .end local v1    # "outResult":Landroid/util/MutableInt;
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "no health service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
    .end local p1    # "id":I
    .end local p2    # "prop":Landroid/os/BatteryProperty;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1479
    .end local v0    # "service":Landroid/hardware/health/V2_0/IHealth;
    .restart local p0    # "this":Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
    .restart local p1    # "id":I
    .restart local p2    # "prop":Landroid/os/BatteryProperty;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1480
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$scheduleUpdate$6$BatteryService$BatteryPropertiesRegistrar()V
    .locals 3

    .line 1485
    const-string v0, "HealthScheduleUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1600(Ljava/lang/String;)V

    .line 1487
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 1488
    .local v0, "service":Landroid/hardware/health/V2_0/IHealth;
    if-nez v0, :cond_0

    .line 1489
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no health service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1496
    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1490
    return-void

    .line 1492
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1496
    nop

    .end local v0    # "service":Landroid/hardware/health/V2_0/IHealth;
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1493
    :catch_0
    move-exception v0

    .line 1494
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot call update on health HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1496
    nop

    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1497
    nop

    .line 1498
    return-void

    .line 1496
    :goto_1
    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1497
    throw v0
.end method

.method public scheduleUpdate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1484
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$muNPoFqxU6pF6un7sF70iW4-Fus;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$muNPoFqxU6pF6un7sF70iW4-Fus;-><init>(Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1499
    return-void
.end method
