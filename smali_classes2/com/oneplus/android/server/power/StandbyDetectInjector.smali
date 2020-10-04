.class public Lcom/oneplus/android/server/power/StandbyDetectInjector;
.super Ljava/lang/Object;
.source "StandbyDetectInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "StandbyDetectInjector"

.field private static standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->DEBUG_ONEPLUS:Z

    .line 36
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xa3

    aput v3, v1, v2

    .line 37
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    const/16 v3, 0xa4

    aput v3, v1, v2

    .line 38
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfHitBatteryLowLocked(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 159
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 162
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 164
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 165
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->checkIfHitBatteryLowLocked(Landroid/content/Intent;)V

    .line 166
    :cond_2
    return-void
.end method

.method public static dumpStandbyStats(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 169
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 171
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 173
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 174
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->dumpStandbyStats(Ljava/io/PrintWriter;)V

    .line 175
    :cond_2
    return-void
.end method

.method public static enteringDeepIdleLocked()V
    .locals 1

    .line 127
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 130
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 132
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 133
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IStandbyDetect;->enteringDeepIdleLocked()V

    .line 134
    :cond_2
    return-void
.end method

.method public static initInstance(Lcom/android/server/DeviceIdleController;)V
    .locals 1
    .param p0, "deviceidle"    # Lcom/android/server/DeviceIdleController;

    .line 43
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 46
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 48
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 49
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->initInstance(Lcom/android/server/DeviceIdleController;)V

    .line 50
    :cond_2
    return-void
.end method

.method public static leavingDeepIdleLocked(Z)V
    .locals 1
    .param p0, "ifSkipMinimumPeriod"    # Z

    .line 137
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 140
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 142
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 143
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->leavingDeepIdleLocked(Z)V

    .line 144
    :cond_2
    return-void
.end method

.method public static notifyEnterDeepIdle()V
    .locals 1

    .line 117
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 120
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 122
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 123
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IStandbyDetect;->notifyEnterDeepIdle()V

    .line 124
    :cond_2
    return-void
.end method

.method public static resetTimeofDeepIdleStart()V
    .locals 1

    .line 107
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 110
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 112
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IStandbyDetect;->resetTimeofDeepIdleStart()V

    .line 114
    :cond_2
    return-void
.end method

.method public static setInBatteryStatsService(Lcom/android/server/am/BatteryStatsService;)V
    .locals 1
    .param p0, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;

    .line 53
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 56
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 58
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 59
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->setInBatteryStatsService(Lcom/android/server/am/BatteryStatsService;)V

    .line 60
    :cond_2
    return-void
.end method

.method public static shellCommand(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "shellCmd"    # Landroid/os/ShellCommand;

    .line 76
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 78
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 79
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 81
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 82
    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/power/IStandbyDetect;->shellCommand(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z

    move-result v0

    return v0

    .line 83
    :cond_2
    return v1
.end method

.method public static update1stLightIdleStatus(Z)V
    .locals 1
    .param p0, "under"    # Z

    .line 97
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 100
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 102
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 103
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->update1stLightIdleStatus(Z)V

    .line 104
    :cond_2
    return-void
.end method

.method public static updateScreenStatus(Z)V
    .locals 1
    .param p0, "screenOn"    # Z

    .line 87
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 90
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 92
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 93
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->updateScreenStatus(Z)V

    .line 94
    :cond_2
    return-void
.end method
