.class Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;
.super Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThermalHal20Wrapper"
.end annotation


# instance fields
.field private final mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

.field private mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 922
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 928
    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

    return-void
.end method

.method static synthetic lambda$getCurrentCoolingDevices$1(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "ret"    # Ljava/util/List;
    .param p1, "status"    # Landroid/hardware/thermal/V1_0/ThermalStatus;
    .param p2, "coolingDevices"    # Ljava/util/ArrayList;

    .line 996
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_1

    .line 998
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/thermal/V2_0/CoolingDevice;

    .line 999
    .local v1, "coolingDevice":Landroid/hardware/thermal/V2_0/CoolingDevice;
    new-instance v2, Landroid/os/CoolingDevice;

    iget-wide v3, v1, Landroid/hardware/thermal/V2_0/CoolingDevice;->value:J

    iget v5, v1, Landroid/hardware/thermal/V2_0/CoolingDevice;->type:I

    iget-object v6, v1, Landroid/hardware/thermal/V2_0/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    .end local v1    # "coolingDevice":Landroid/hardware/thermal/V2_0/CoolingDevice;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 1004
    :cond_1
    sget-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get cooling device because of HAL error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :goto_1
    return-void
.end method

.method static synthetic lambda$getCurrentTemperatures$0(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "ret"    # Ljava/util/List;
    .param p1, "status"    # Landroid/hardware/thermal/V1_0/ThermalStatus;
    .param p2, "temperatures"    # Ljava/util/ArrayList;

    .line 956
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2

    .line 958
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/thermal/V2_0/Temperature;

    .line 959
    .local v1, "temperature":Landroid/hardware/thermal/V2_0/Temperature;
    iget v2, v1, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-static {v2}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 961
    sget-object v2, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    const-string v3, "Invalid status data from HAL"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v2, 0x0

    iput v2, v1, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    .line 965
    :cond_0
    new-instance v2, Landroid/os/Temperature;

    iget v3, v1, Landroid/hardware/thermal/V2_0/Temperature;->value:F

    iget v4, v1, Landroid/hardware/thermal/V2_0/Temperature;->type:I

    iget-object v5, v1, Landroid/hardware/thermal/V2_0/Temperature;->name:Ljava/lang/String;

    iget v6, v1, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 969
    .end local v1    # "temperature":Landroid/hardware/thermal/V2_0/Temperature;
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 971
    :cond_2
    sget-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get temperatures because of HAL error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :goto_1
    return-void
.end method

.method static synthetic lambda$getTemperatureThresholds$2(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "ret"    # Ljava/util/List;
    .param p1, "status"    # Landroid/hardware/thermal/V1_0/ThermalStatus;
    .param p2, "thresholds"    # Ljava/util/ArrayList;

    .line 1029
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_0

    .line 1030
    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1032
    :cond_0
    sget-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get temperature thresholds because of HAL error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :goto_0
    return-void
.end method


# virtual methods
.method protected connectToHal()Z
    .locals 7

    .line 1046
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1048
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/hardware/thermal/V2_0/IThermal;->getService(Z)Landroid/hardware/thermal/V2_0/IThermal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 1049
    new-instance v4, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v4, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v5, 0x15ec

    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/thermal/V2_0/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1050
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

    invoke-interface {v3, v4, v2, v2}, Landroid/hardware/thermal/V2_0/IThermal;->registerThermalChangedCallback(Landroid/hardware/thermal/V2_0/IThermalChangedCallback;ZI)Landroid/hardware/thermal/V1_0/ThermalStatus;

    .line 1052
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    const-string v4, "Thermal HAL 2.0 service connected."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    goto :goto_0

    .line 1058
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1053
    :catch_0
    move-exception v3

    .line 1054
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    const-string v5, "Thermal HAL 2.0 service not connected."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 1057
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    monitor-exit v0

    return v1

    .line 1058
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1063
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1064
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThermalHAL 2.0 connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz v2, :cond_0

    const-string v2, "yes"

    goto :goto_0

    .line 1066
    :cond_0
    const-string v2, "no"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1065
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    monitor-exit v0

    .line 1068
    return-void

    .line 1067
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getCurrentCoolingDevices(ZI)Ljava/util/List;
    .locals 5
    .param p1, "shouldFilter"    # Z
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/CoolingDevice;",
            ">;"
        }
    .end annotation

    .line 988
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 989
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/CoolingDevice;>;"
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_0

    .line 991
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 994
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$dRsq86SXVH7z342fbs2U36cr67I;

    invoke-direct {v3, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$dRsq86SXVH7z342fbs2U36cr67I;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentCoolingDevices(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentCoolingDevicesCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    goto :goto_0

    .line 1010
    :catch_0
    move-exception v2

    .line 1011
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1012
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->connectToHal()Z

    .line 1014
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    return-object v1

    .line 1015
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/CoolingDevice;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected getCurrentTemperatures(ZI)Ljava/util/List;
    .locals 5
    .param p1, "shouldFilter"    # Z
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation

    .line 948
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 949
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 950
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_0

    .line 951
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 954
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$R9S8YWn8x1F3V2TOvXtmky1V44Q;

    invoke-direct {v3, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$R9S8YWn8x1F3V2TOvXtmky1V44Q;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentTemperatures(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentTemperaturesCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    goto :goto_0

    .line 977
    :catch_0
    move-exception v2

    .line 978
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->connectToHal()Z

    .line 981
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    return-object v1

    .line 982
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected getTemperatureThresholds(ZI)Ljava/util/List;
    .locals 5
    .param p1, "shouldFilter"    # Z
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/hardware/thermal/V2_0/TemperatureThreshold;",
            ">;"
        }
    .end annotation

    .line 1021
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1022
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/thermal/V2_0/TemperatureThreshold;>;"
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_0

    .line 1024
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1027
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$P4Eu0RILVATHKmAc4SzykaNlz_4;

    invoke-direct {v3, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$P4Eu0RILVATHKmAc4SzykaNlz_4;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getTemperatureThresholds(ZILandroid/hardware/thermal/V2_0/IThermal$getTemperatureThresholdsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1039
    goto :goto_0

    .line 1037
    :catch_0
    move-exception v2

    .line 1038
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getTemperatureThresholds, reconnecting..."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    return-object v1

    .line 1041
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/thermal/V2_0/TemperatureThreshold;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
