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

    .line 32
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->DEBUG_ONEPLUS:Z

    .line 35
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x86

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 36
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    const/16 v2, 0x87

    aput v2, v1, v3

    .line 37
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfHitBatteryLowLocked(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 141
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 144
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 146
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 147
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->checkIfHitBatteryLowLocked(Landroid/content/Intent;)V

    .line 148
    :cond_2
    return-void
.end method

.method public static dumpStandbyStats(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 151
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 153
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 155
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 156
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->dumpStandbyStats(Ljava/io/PrintWriter;)V

    .line 157
    :cond_2
    return-void
.end method

.method public static enteringDeepIdleLocked()V
    .locals 1

    .line 109
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 112
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 114
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 115
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IStandbyDetect;->enteringDeepIdleLocked()V

    .line 116
    :cond_2
    return-void
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 45
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->initInstance(Landroid/content/Context;)V

    .line 47
    :cond_1
    return-void
.end method

.method public static leavingDeepIdleLocked(Z)V
    .locals 1
    .param p0, "ifSkipMinimumPeriod"    # Z

    .line 119
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 122
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 124
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 125
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->leavingDeepIdleLocked(Z)V

    .line 126
    :cond_2
    return-void
.end method

.method public static notePackageInstalled(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 181
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 183
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 185
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 186
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->notePackageInstalled(Ljava/lang/String;)V

    .line 188
    :cond_2
    return-void
.end method

.method public static notifyEnterDeepIdle()V
    .locals 1

    .line 99
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 102
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 104
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 105
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IStandbyDetect;->notifyEnterDeepIdle()V

    .line 106
    :cond_2
    return-void
.end method

.method public static resetTimeofDeepIdleStart()V
    .locals 1

    .line 89
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 92
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 94
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 95
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IStandbyDetect;->resetTimeofDeepIdleStart()V

    .line 96
    :cond_2
    return-void
.end method

.method public static setInBatteryStatsService(Lcom/android/server/am/BatteryStatsService;)V
    .locals 1
    .param p0, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;

    .line 50
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 53
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_1

    .line 54
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->setInBatteryStatsService(Lcom/android/server/am/BatteryStatsService;)V

    .line 55
    :cond_1
    return-void
.end method

.method public static shellCommand(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "shellCmd"    # Landroid/os/ShellCommand;

    .line 58
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 61
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 63
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 64
    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/power/IStandbyDetect;->shellCommand(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z

    move-result v0

    return v0

    .line 65
    :cond_2
    return v1
.end method

.method public static update1stLightIdleStatus(Z)V
    .locals 1
    .param p0, "under"    # Z

    .line 79
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 82
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 84
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 85
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->update1stLightIdleStatus(Z)V

    .line 86
    :cond_2
    return-void
.end method

.method public static updateDeepSleepStatus(Z)V
    .locals 1
    .param p0, "enter"    # Z

    .line 171
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 173
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 175
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 176
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->updateDeepSleepStatus(Z)V

    .line 178
    :cond_2
    return-void
.end method

.method public static updateScreenState(I)V
    .locals 1
    .param p0, "screenState"    # I

    .line 161
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 163
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 165
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 166
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->updateScreenState(I)V

    .line 168
    :cond_2
    return-void
.end method

.method public static updateScreenStatus(Z)V
    .locals 1
    .param p0, "screenOn"    # Z

    .line 69
    sget-boolean v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-nez v0, :cond_1

    .line 72
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IStandbyDetect;

    sput-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    .line 74
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/StandbyDetectInjector;->standbyDetect:Lcom/oneplus/android/server/power/IStandbyDetect;

    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IStandbyDetect;->updateScreenStatus(Z)V

    .line 76
    :cond_2
    return-void
.end method
