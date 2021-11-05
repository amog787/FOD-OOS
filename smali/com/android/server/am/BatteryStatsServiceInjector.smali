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

    const/16 v2, 0x86

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 49
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    const/16 v2, 0x87

    aput v2, v1, v3

    .line 50
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    .line 52
    new-array v0, v0, [I

    const/16 v1, 0x83

    aput v1, v0, v3

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

.method public static addLevelSteps(IJJ)V
    .locals 7
    .param p0, "numStepLevels"    # I
    .param p1, "modeBits"    # J
    .param p3, "elapsedRealtime"    # J

    .line 174
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 177
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 180
    :cond_1
    sget-object v1, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v1, :cond_2

    .line 181
    move v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/server/am/IExtBatteryStatsService;->addLevelSteps(IJJ)V

    .line 183
    :cond_2
    return-void
.end method

.method public static clearTime()V
    .locals 1

    .line 186
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 189
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 192
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 193
    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->clearTime()V

    .line 195
    :cond_2
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

    .line 87
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 89
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 90
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 92
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 93
    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->cloneKernelWakelockStats()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 94
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

    .line 120
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 122
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 123
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 125
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 126
    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->cloneWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 127
    :cond_2
    return-object v1
.end method

.method public static dumpDetail(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "bfilter"    # Z

    .line 222
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 225
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 228
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 229
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IExtBatteryStatsService;->dumpDetail(Ljava/lang/String;Z)V

    .line 231
    :cond_2
    return-void
.end method

.method public static flushExternal()V
    .locals 1

    .line 77
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 80
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 82
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 83
    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->flushExternal()V

    .line 84
    :cond_2
    return-void
.end method

.method public static initInstance(Lcom/android/server/am/BatteryStatsService;Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 1
    .param p0, "bts"    # Lcom/android/server/am/BatteryStatsService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p3, "worker"    # Lcom/android/server/am/BatteryExternalStatsWorker;

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
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/am/IExtBatteryStatsService;->initInstance(Lcom/android/server/am/BatteryStatsService;Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/server/am/BatteryExternalStatsWorker;)V

    .line 68
    :cond_1
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->POWER_CONTROL_ENABLED:Z

    if-eqz v0, :cond_2

    .line 69
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    if-nez v0, :cond_2

    .line 70
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/power/IOpPowerController$Stub;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    .line 74
    :cond_2
    return-void
.end method

.method public static noteCameraOn(Z)V
    .locals 4
    .param p0, "on"    # Z

    .line 141
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->POWER_CONTROL_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->DEBUG_INJECTOR:Z

    const-string v1, "BatteryStatsServiceInjector"

    if-eqz v0, :cond_1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noteCameraOn: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    if-eqz v0, :cond_3

    .line 149
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_2

    .line 150
    const-string v0, "before calling noteCameraOn"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_2
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    invoke-virtual {v0, p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->noteCameraOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 157
    :cond_3
    const-string v0, "Cannot get OpPowerControllerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
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

    .line 98
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 100
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 101
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 103
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 104
    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IExtBatteryStatsService;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 105
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

    .line 109
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 111
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 112
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 114
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 115
    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 116
    :cond_2
    return-object v1
.end method

.method public static systemServicesReady()V
    .locals 1

    .line 163
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 166
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 169
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 170
    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->systemServicesReady()V

    .line 172
    :cond_2
    return-void
.end method

.method public static updateCollectCount(I)V
    .locals 1
    .param p0, "count"    # I

    .line 198
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 201
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 204
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 205
    invoke-interface {v0, p0}, Lcom/android/server/am/IExtBatteryStatsService;->updateCollectCount(I)V

    .line 207
    :cond_2
    return-void
.end method

.method public static updateDeepSleepStatus(Z)V
    .locals 1
    .param p0, "enter"    # Z

    .line 210
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 213
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 216
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 217
    invoke-interface {v0, p0}, Lcom/android/server/am/IExtBatteryStatsService;->updateDeepSleepStatus(Z)V

    .line 219
    :cond_2
    return-void
.end method

.method public static updateKernelWakelocks()V
    .locals 1

    .line 131
    sget-boolean v0, Lcom/android/server/am/BatteryStatsServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-nez v0, :cond_1

    .line 134
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IExtBatteryStatsService;

    sput-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    .line 136
    :cond_1
    sget-object v0, Lcom/android/server/am/BatteryStatsServiceInjector;->extbatteryStatsService:Lcom/android/server/am/IExtBatteryStatsService;

    if-eqz v0, :cond_2

    .line 137
    invoke-interface {v0}, Lcom/android/server/am/IExtBatteryStatsService;->updateKernelWakelocks()V

    .line 138
    :cond_2
    return-void
.end method
