.class final Lcom/android/server/BatteryService$HealthHalCallback;
.super Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;
.source "BatteryService.java"

# interfaces
.implements Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HealthHalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 1353
    iput-object p1, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/hardware/health/V2_1/IHealthInfoCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/BatteryService;
    .param p2, "x1"    # Lcom/android/server/BatteryService$1;

    .line 1353
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$HealthHalCallback;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public healthInfoChanged(Landroid/hardware/health/V2_0/HealthInfo;)V
    .locals 3
    .param p1, "props"    # Landroid/hardware/health/V2_0/HealthInfo;

    .line 1356
    new-instance v0, Landroid/hardware/health/V2_1/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V2_1/HealthInfo;-><init>()V

    .line 1358
    .local v0, "propsLatest":Landroid/hardware/health/V2_1/HealthInfo;
    iput-object p1, v0, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 1360
    const/4 v1, -0x1

    iput v1, v0, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    .line 1361
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 1364
    iget-object v1, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1, v0}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;Landroid/hardware/health/V2_1/HealthInfo;)V

    .line 1365
    return-void
.end method

.method public healthInfoChanged_2_1(Landroid/hardware/health/V2_1/HealthInfo;)V
    .locals 1
    .param p1, "props"    # Landroid/hardware/health/V2_1/HealthInfo;

    .line 1368
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;Landroid/hardware/health/V2_1/HealthInfo;)V

    .line 1369
    return-void
.end method

.method public onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V
    .locals 4
    .param p1, "oldService"    # Landroid/hardware/health/V2_0/IHealth;
    .param p2, "newService"    # Landroid/hardware/health/V2_0/IHealth;
    .param p3, "instance"    # Ljava/lang/String;

    .line 1374
    if-nez p2, :cond_0

    return-void

    .line 1376
    :cond_0
    const-string v0, "HealthUnregisterCallback"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1600(Ljava/lang/String;)V

    .line 1378
    if-eqz p1, :cond_1

    .line 1379
    :try_start_0
    invoke-interface {p1, p0}, Landroid/hardware/health/V2_0/IHealth;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v0

    .line 1380
    .local v0, "r":I
    if-eqz v0, :cond_1

    .line 1381
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "health: cannot unregister previous callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    invoke-static {v0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1381
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1389
    .end local v0    # "r":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1385
    :catch_0
    move-exception v0

    .line 1386
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_1
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "health: cannot unregister previous callback (transaction error): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1386
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1389
    nop

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_2

    :goto_0
    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1390
    throw v0

    .line 1389
    :cond_1
    :goto_1
    nop

    :goto_2
    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1390
    nop

    .line 1392
    const-string v0, "HealthRegisterCallback"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1600(Ljava/lang/String;)V

    .line 1394
    :try_start_2
    invoke-interface {p2, p0}, Landroid/hardware/health/V2_0/IHealth;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v0

    .line 1395
    .local v0, "r":I
    if-eqz v0, :cond_2

    .line 1396
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "health: cannot register callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1406
    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1397
    return-void

    .line 1401
    :cond_2
    :try_start_3
    invoke-interface {p2}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1406
    nop

    .end local v0    # "r":I
    :goto_3
    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1407
    goto :goto_4

    .line 1406
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 1402
    :catch_1
    move-exception v0

    .line 1403
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "health: cannot register callback (transaction error): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1403
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1406
    nop

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_3

    .line 1408
    :goto_4
    return-void

    .line 1406
    :goto_5
    invoke-static {}, Lcom/android/server/BatteryService;->access$1700()V

    .line 1407
    throw v0
.end method
