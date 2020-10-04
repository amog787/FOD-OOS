.class public Lcom/android/server/am/BatteryStatsServiceInjector;
.super Ljava/lang/Object;
.source "BatteryStatsServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_INJECTOR:Z

.field private static final ENABLED:Z

.field private static final POWER_CONTROL_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "BatteryStatsServiceInjector"

.field private static extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

.field private static opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->DEBUG:Z

    .line 46
    const-string v0, "BatteryStatsServiceInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->DEBUG_INJECTOR:Z

    .line 48
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xa3

    aput v3, v1, v2

    .line 49
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    const/16 v3, 0xa4

    aput v3, v1, v2

    .line 50
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    .line 52
    new-array v0, v0, [I

    const/16 v1, 0xa0

    aput v1, v0, v2

    .line 53
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->POWER_CONTROL_ENABLED:Z

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneKernelWakelockStats()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .line 88
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 90
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 91
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 93
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 94
    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->cloneKernelWakelockStats()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 95
    :cond_2
    return-object v1
.end method

.method public static cloneWakeupReasonStats()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .line 121
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 123
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 124
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 126
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 127
    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->cloneWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 128
    :cond_2
    return-object v1
.end method

.method public static flushExternal()V
    .locals 1

    .line 78
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 81
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 83
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 84
    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->flushExternal()V

    .line 85
    :cond_2
    return-void
.end method

.method public static initInstance(Lcom/android/server/am/BatteryStatsService;Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 1
    .param p0, "bts"    # Lcom/android/server/am/BatteryStatsService;
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "worker"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 59
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_1

    .line 65
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/am/IExtBatteryStatsService;->initInstance(Lcom/android/server/am/BatteryStatsService;Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/server/am/BatteryExternalStatsWorker;)V

    .line 69
    :cond_1
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->POWER_CONTROL_ENABLED:Z

    if-eqz v0, :cond_2

    .line 70
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    if-nez v0, :cond_2

    .line 71
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/power/IOpPowerController$Stub;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    .line 75
    :cond_2
    return-void
.end method

.method public static noteCameraOn(Z)V
    .locals 4
    .param p0, "on"    # Z

    .line 142
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->POWER_CONTROL_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->DEBUG_INJECTOR:Z

    const-string v1, "BatteryStatsServiceInjector"

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteCameraOn: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    if-eqz v0, :cond_3

    .line 150
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_2

    .line 151
    const-string v0, "before calling noteCameraOn"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_2
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    invoke-virtual {v0, p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->noteCameraOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 158
    :cond_3
    const-string v0, "Cannot get OpPowerControllerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_1
    return-void
.end method

.method public static snapShotKernelWakelockStats(J)Ljava/util/Map;
    .locals 2
    .param p0, "rawRealtimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 99
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 101
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 102
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 104
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 105
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IExtBatteryStatsService;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 106
    :cond_2
    return-object v1
.end method

.method public static snapShotWakeupReasonStats()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 110
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 112
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 113
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 115
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 116
    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 117
    :cond_2
    return-object v1
.end method

.method public static updateKernelWakelocks()V
    .locals 1

    .line 132
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 135
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 137
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 138
    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->updateKernelWakelocks()V

    .line 139
    :cond_2
    return-void
.end method
