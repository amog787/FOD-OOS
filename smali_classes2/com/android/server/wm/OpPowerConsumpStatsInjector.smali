.class public Lcom/android/server/wm/OpPowerConsumpStatsInjector;
.super Ljava/lang/Object;
.source "OpPowerConsumpStatsInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OpPowerConsumpStatsInjector"

.field private static opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

.field public static sIsInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x82

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 36
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    .line 38
    sput-boolean v2, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpDailyPowerFiles(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "preFix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 254
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 255
    return-void

    .line 259
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v1, "dumpDailyPowerFiles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v1, :cond_1

    .line 263
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpPowerConsumpStats;->dumpDailyPowerFiles(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 265
    :cond_1
    return-void
.end method

.method public static dumpPkgStatInfo(Ljava/lang/String;)V
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 278
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 279
    return-void

    .line 281
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v1, :cond_1

    .line 282
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpPowerConsumpStats;->dumpPkgStatInfo(Ljava/lang/String;)V

    .line 284
    :cond_1
    return-void
.end method

.method public static getResult(Ljava/io/PrintWriter;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "orderType"    # Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    .line 240
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 241
    return-void

    .line 245
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v1, "getResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v1, :cond_1

    .line 249
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpPowerConsumpStats;->getResult(Ljava/io/PrintWriter;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V

    .line 251
    :cond_1
    return-void
.end method

.method public static handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 2
    .param p0, "kc"    # Lcom/android/server/wm/KeyguardController;
    .param p1, "keyguardShowing"    # Z
    .param p2, "occluded"    # Z
    .param p3, "acss"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 198
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 199
    return-void

    .line 203
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v1, "handleShowOrOccludedChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v1, :cond_1

    .line 207
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpPowerConsumpStats;->handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V

    .line 209
    :cond_1
    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/ActivityManagerService;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "window"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "battery"    # Lcom/android/server/am/BatteryStatsService;
    .param p3, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 47
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    return v1

    .line 52
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v2, "init"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-nez v0, :cond_1

    .line 56
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_consumption_statistics:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 57
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpPowerConsumpStats;

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    .line 61
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_2

    .line 62
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpPowerConsumpStats;->init(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    .line 63
    return v0

    .line 66
    :cond_2
    return v1
.end method

.method public static initPlugState(ZIZ)Z
    .locals 3
    .param p0, "plug"    # Z
    .param p1, "plugType"    # I
    .param p2, "isFastCharge"    # Z

    .line 126
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    return v1

    .line 131
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v2, "initPlugState"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v2, :cond_1

    .line 135
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpPowerConsumpStats;->initPlugState(ZIZ)Z

    move-result v0

    return v0

    .line 137
    :cond_1
    return v1
.end method

.method public static notifyBGCMDMReady(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "forQuickDebug"    # Z

    .line 212
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 213
    return-void

    .line 217
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v1, "notifyBGCMDMReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v1, :cond_1

    .line 220
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpPowerConsumpStats;->notifyBGCMDMReady(Ljava/lang/StringBuilder;Z)V

    .line 222
    :cond_1
    return-void
.end method

.method public static notifyBatteryLevelEvent(I)V
    .locals 2
    .param p0, "batteryLevel"    # I

    .line 155
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 160
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v1, "notifyBatteryLevelEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v1, :cond_1

    .line 164
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpPowerConsumpStats;->notifyBatteryLevelEvent(I)V

    .line 166
    :cond_1
    return-void
.end method

.method public static notifyDozeEvent(ZLjava/lang/String;)V
    .locals 2
    .param p0, "idle"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .line 98
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 103
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v1, "notifyDozeEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v1, :cond_1

    .line 107
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpPowerConsumpStats;->notifyDozeEvent(ZLjava/lang/String;)V

    .line 109
    :cond_1
    return-void
.end method

.method public static notifyFastChargeEvent(Z)V
    .locals 2
    .param p0, "isFastCharge"    # Z

    .line 169
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 170
    return-void

    .line 174
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v1, "notifyFastChargeEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v1, :cond_1

    .line 178
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpPowerConsumpStats;->notifyFastChargeEvent(Z)V

    .line 180
    :cond_1
    return-void
.end method

.method public static notifyPkgEvent(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p0, "component"    # Landroid/content/ComponentName;
    .param p1, "resumed"    # Z

    .line 70
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 71
    return-void

    .line 75
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v1, "notifyPkgEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v1, :cond_1

    .line 79
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpPowerConsumpStats;->notifyPkgEvent(Landroid/content/ComponentName;Z)V

    .line 81
    :cond_1
    return-void
.end method

.method public static notifyPlugEvent(Ljava/lang/Boolean;IZ)V
    .locals 2
    .param p0, "plug"    # Ljava/lang/Boolean;
    .param p1, "plugType"    # I
    .param p2, "isFastCharge"    # Z

    .line 141
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 142
    return-void

    .line 146
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v1, "notifyDozeEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v1, :cond_1

    .line 150
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpPowerConsumpStats;->notifyPlugEvent(Ljava/lang/Boolean;IZ)V

    .line 152
    :cond_1
    return-void
.end method

.method public static notifyScreenEvent(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "on"    # Ljava/lang/Boolean;

    .line 112
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 117
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v1, "notifyScreenEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v1, :cond_1

    .line 121
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpPowerConsumpStats;->notifyScreenEvent(Ljava/lang/Boolean;)V

    .line 123
    :cond_1
    return-void
.end method

.method public static registerResetParamListener(Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;)V
    .locals 2
    .param p0, "rl"    # Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    .line 84
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 85
    return-void

    .line 89
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v1, "registerResetParamListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v1, :cond_1

    .line 93
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpPowerConsumpStats;->registerResetParamListener(Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;)V

    .line 95
    :cond_1
    return-void
.end method

.method public static resetClean(Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 226
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 227
    return-void

    .line 231
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v1, "resetClean"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v1, :cond_1

    .line 235
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpPowerConsumpStats;->resetClean(Ljava/io/PrintWriter;)V

    .line 237
    :cond_1
    return-void
.end method

.method public static updateLastUserActivityTime(JIII)V
    .locals 7
    .param p0, "eventTime"    # J
    .param p2, "event"    # I
    .param p3, "flags"    # I
    .param p4, "uid"    # I

    .line 269
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v1, :cond_1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v0, :cond_1

    .line 273
    move-wide v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/wm/IOpPowerConsumpStats;->updateLastUserActivityTime(JIII)V

    .line 275
    :cond_1
    return-void
.end method

.method public static updateScreenState(I)V
    .locals 2
    .param p0, "state"    # I

    .line 183
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 184
    return-void

    .line 188
    :cond_0
    const-string v0, "OpPowerConsumpStatsInjector"

    const-string v1, "updateScreenState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->opPowerConsumpStats:Lcom/android/server/wm/IOpPowerConsumpStats;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->sIsInited:Z

    if-eqz v1, :cond_1

    .line 192
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpPowerConsumpStats;->updateScreenState(I)V

    .line 194
    :cond_1
    return-void
.end method
