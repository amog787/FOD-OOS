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

    .line 1332
    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/BatteryService;
    .param p2, "x1"    # Lcom/android/server/BatteryService$1;

    .line 1332
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method

.method static synthetic lambda$getProperty$0(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1343
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1344
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1345
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$1(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1349
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1350
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1351
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$2(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1355
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1356
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1357
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$3(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1361
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1362
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1363
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$4(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .locals 2
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1367
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1368
    if-nez p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1369
    :cond_0
    return-void
.end method

.method static synthetic lambda$getProperty$5(Landroid/util/MutableInt;Landroid/os/BatteryProperty;IJ)V
    .locals 0
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # J

    .line 1373
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1374
    if-nez p2, :cond_0

    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1375
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

    .line 1335
    const-string v0, "HealthGetProperty"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1600(Ljava/lang/String;)V

    .line 1337
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 1338
    .local v0, "service":Landroid/hardware/health/V2_0/IHealth;
    if-eqz v0, :cond_0

    .line 1339
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 1340
    .local v1, "outResult":Landroid/util/MutableInt;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1366
    :pswitch_0
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$hInbvsihGvN2hXqvdcoFYzdeqHw;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$hInbvsihGvN2hXqvdcoFYzdeqHw;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    .line 1370
    goto :goto_0

    .line 1372
    :pswitch_1
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$9z3zqgxtPzBN8Qoni5nHVb0m8EY;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$9z3zqgxtPzBN8Qoni5nHVb0m8EY;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    goto :goto_0

    .line 1360
    :pswitch_2
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    .line 1364
    goto :goto_0

    .line 1354
    :pswitch_3
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$KZAu97wwr_7_MI0awCjQTzdIuAI;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$KZAu97wwr_7_MI0awCjQTzdIuAI;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    .line 1358
    goto :goto_0

    .line 1348
    :pswitch_4
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$JTQ79fl14NyImudsJhx-Mp1dJI8;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$JTQ79fl14NyImudsJhx-Mp1dJI8;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    .line 1352
    goto :goto_0

    .line 1342
    :pswitch_5
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$7Y-B9O7NDYgUY9hQvFzC2FQ2V5w;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$7Y-B9O7NDYgUY9hQvFzC2FQ2V5w;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    .line 1346
    nop

    .line 1378
    :goto_0
    iget v2, v1, Landroid/util/MutableInt;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1380
    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1378
    return v2

    .line 1338
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

    .line 1380
    .end local v0    # "service":Landroid/hardware/health/V2_0/IHealth;
    .restart local p0    # "this":Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
    .restart local p1    # "id":I
    .restart local p2    # "prop":Landroid/os/BatteryProperty;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

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

.method public scheduleUpdate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1385
    const-string v0, "HealthScheduleUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1600(Ljava/lang/String;)V

    .line 1387
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 1388
    .local v0, "service":Landroid/hardware/health/V2_0/IHealth;
    if-eqz v0, :cond_0

    .line 1389
    invoke-interface {v0}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    nop

    .end local v0    # "service":Landroid/hardware/health/V2_0/IHealth;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1392
    nop

    .line 1393
    return-void

    .line 1388
    .restart local v0    # "service":Landroid/hardware/health/V2_0/IHealth;
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "no health service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1391
    .end local v0    # "service":Landroid/hardware/health/V2_0/IHealth;
    .restart local p0    # "this":Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    throw v0
.end method
