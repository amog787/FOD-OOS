.class public Lcom/android/server/DeviceIdleControllerInjector;
.super Ljava/lang/Object;
.source "DeviceIdleControllerInjector.java"


# static fields
.field private static final AGGRESSIVE_DOZE_ENABLED:Z

.field private static final DEBUG:Z

.field private static final DEBUG_INJECTOR:Z

.field private static final POWER_CONTROL_ENABLED:Z

.field private static final SMART_POWER_CONTROL_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "DeviceIdleControllerInjector"

.field private static mInner:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

.field private static opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

.field private static opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

.field private static opPowerManager:Lcom/android/server/power/IOpPowerManager;

.field private static opSmartDoze:Lcom/android/server/IOpSmartDoze;

.field private static opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG:Z

    .line 47
    const-string v0, "DeviceIdleControllerInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    .line 49
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x5f

    aput v3, v1, v2

    .line 50
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/DeviceIdleControllerInjector;->AGGRESSIVE_DOZE_ENABLED:Z

    .line 52
    new-array v1, v0, [I

    const/16 v3, 0xa0

    aput v3, v1, v2

    .line 53
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/DeviceIdleControllerInjector;->POWER_CONTROL_ENABLED:Z

    .line 55
    new-array v0, v0, [I

    const/16 v1, 0x60

    aput v1, v0, v2

    .line 56
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->SMART_POWER_CONTROL_ENABLED:Z

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addForcedOptApp(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 312
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "DeviceIdleControllerInjector"

    const-string v1, "addForcedOptApp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

    if-eqz v0, :cond_1

    .line 317
    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartPowerControl;->addForcedOptApp(Ljava/lang/String;)Z

    .line 319
    :cond_1
    return-void
.end method

.method public static anyMotionResultOverride(I)I
    .locals 2
    .param p0, "result"    # I

    .line 111
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "DeviceIdleControllerInjector"

    const-string v1, "anyMotionResultOverride"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    .line 116
    invoke-interface {v0, p0}, Lcom/android/server/IOpAggressiveDoze;->anyMotionResultOverride(I)I

    move-result v0

    return v0

    .line 119
    :cond_1
    return p0
.end method

.method public static clearGpsUids()V
    .locals 2

    .line 144
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "DeviceIdleControllerInjector"

    const-string v1, "clearGpsUids"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    .line 149
    invoke-interface {v0}, Lcom/android/server/IOpAggressiveDoze;->clearGpsUids()V

    .line 151
    :cond_1
    return-void
.end method

.method public static clearWhitelistUid()V
    .locals 2

    .line 123
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "DeviceIdleControllerInjector"

    const-string v1, "clearWhitelistUid"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    .line 128
    invoke-interface {v0}, Lcom/android/server/IOpAggressiveDoze;->clearWhitelistUid()V

    .line 130
    :cond_1
    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 253
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "DeviceIdleControllerInjector"

    const-string v1, "dumpHelp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 258
    const-string v0, "  aggressive [true|false]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    const-string v0, "    Activate aggressive doze (true) or deactivate it (false)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    :cond_1
    return-void
.end method

.method public static getForcedOptApps()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 333
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "DeviceIdleControllerInjector"

    const-string v1, "getForcedOptApps"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

    if-eqz v0, :cond_1

    .line 338
    invoke-interface {v0}, Lcom/android/server/IOpSmartPowerControl;->getForcedOptApps()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0

    .line 340
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isDozingGps(I)Z
    .locals 2
    .param p0, "uid"    # I

    .line 133
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDozingGps uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceIdleControllerInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v0, p0}, Lcom/android/server/IOpAggressiveDoze;->isDozingGps(I)Z

    move-result v0

    return v0

    .line 140
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isMoving(Landroid/location/Location;)Z
    .locals 2
    .param p0, "location"    # Landroid/location/Location;

    .line 187
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "isMoving"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v0, p0}, Lcom/android/server/IOpAggressiveDoze;->isMoving(Landroid/location/Location;)Z

    move-result v0

    return v0

    .line 194
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static mayUseAggressiveTimeoutLocked(FJJJJJFJJ)Z
    .locals 19
    .param p0, "locationAccuracy"    # F
    .param p1, "idleAfterInactiveTo"    # J
    .param p3, "inactiveTo"    # J
    .param p5, "maxIdlePendingTo"    # J
    .param p7, "idlePendingTo"    # J
    .param p9, "motionInactiveTo"    # J
    .param p11, "idleFactor"    # F
    .param p12, "minTimeToAlarm"    # J
    .param p14, "maxIdleTo"    # J

    .line 218
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "mayUseAggressiveanyMotionResultOverride"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    sget-object v2, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v2, :cond_1

    .line 223
    move/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    invoke-interface/range {v2 .. v18}, Lcom/android/server/IOpAggressiveDoze;->mayUseAggressiveTimeoutLocked(FJJJJJFJJ)Z

    move-result v0

    return v0

    .line 235
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p0, "selfChange"    # Z
    .param p1, "uri"    # Landroid/net/Uri;

    .line 101
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpAggressiveDoze;->onChange(ZLandroid/net/Uri;)V

    .line 108
    :cond_1
    return-void
.end method

.method public static prepare(Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;)V
    .locals 2
    .param p0, "inner"    # Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    .line 67
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    sput-object p0, Lcom/android/server/DeviceIdleControllerInjector;->mInner:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    .line 73
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->AGGRESSIVE_DOZE_ENABLED:Z

    if-eqz v0, :cond_2

    .line 74
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-nez v0, :cond_1

    .line 75
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_aggressive_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAggressiveDoze;

    sput-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    .line 79
    :cond_1
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_2

    .line 80
    invoke-interface {v0, p0}, Lcom/android/server/IOpAggressiveDoze;->prepareDeviceIdleController(Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;)V

    .line 84
    :cond_2
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->POWER_CONTROL_ENABLED:Z

    if-eqz v0, :cond_3

    .line 85
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    if-nez v0, :cond_3

    .line 86
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/power/IOpPowerController$Stub;

    sput-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    .line 91
    :cond_3
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_4

    .line 92
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    .line 95
    :cond_4
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_5

    .line 96
    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartDoze;->prepareDeviceIdleController(Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;)V

    .line 98
    :cond_5
    return-void
.end method

.method public static requestLocationUpdatesOverride()Z
    .locals 2

    .line 176
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "requestLocationUpdatesOverride"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0}, Lcom/android/server/IOpAggressiveDoze;->requestLocationUpdatesOverride()Z

    move-result v0

    return v0

    .line 183
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static scheduleAlarm(JZ)V
    .locals 1
    .param p0, "delay"    # J
    .param p2, "idleUntil"    # Z

    .line 283
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->mInner:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->scheduleAlarm(JZ)V

    .line 286
    :cond_0
    return-void
.end method

.method public static scheduleAlarmOverride()Z
    .locals 2

    .line 165
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "scheduleAlarmOverride"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0}, Lcom/android/server/IOpAggressiveDoze;->scheduleAlarmOverride()Z

    move-result v0

    return v0

    .line 172
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static setDeviceIdleState(I)V
    .locals 1
    .param p0, "state"    # I

    .line 264
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-nez v0, :cond_0

    .line 265
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/IOpPowerManager;

    sput-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    .line 269
    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opPowerManager:Lcom/android/server/power/IOpPowerManager;

    if-eqz v0, :cond_1

    .line 270
    invoke-interface {v0, p0}, Lcom/android/server/power/IOpPowerManager;->setDeviceIdleState(I)V

    .line 273
    :cond_1
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-nez v0, :cond_2

    .line 274
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpSmartDoze;

    sput-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    .line 277
    :cond_2
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opSmartDoze:Lcom/android/server/IOpSmartDoze;

    if-eqz v0, :cond_3

    .line 278
    invoke-interface {v0, p0}, Lcom/android/server/IOpSmartDoze;->setDeviceIdleState(I)V

    .line 280
    :cond_3
    return-void
.end method

.method public static setDozeState(I)V
    .locals 4
    .param p0, "state"    # I

    .line 289
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->POWER_CONTROL_ENABLED:Z

    if-nez v0, :cond_0

    .line 290
    return-void

    .line 293
    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    const-string v1, "DeviceIdleControllerInjector"

    if-eqz v0, :cond_1

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDozeState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    if-eqz v0, :cond_3

    .line 299
    :try_start_0
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_2

    .line 300
    const-string v0, "before calling setDozeState"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_2
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opPowerController:Lcom/oneplus/android/power/IOpPowerController$Stub;

    invoke-virtual {v0, p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->setDozeState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 307
    :cond_3
    const-string v0, "Cannot get OpPowerControllerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_1
    return-void
.end method

.method public static setPowerSaveWhitelistAppIds([I[I)V
    .locals 2
    .param p0, "powerSaveWhitelistAllAppIdArray"    # [I
    .param p1, "powerSaveWhitelistTempAppIdArray"    # [I

    .line 345
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 346
    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "setPowerSaveWhitelistAppIds"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opSmartPowerControl:Lcom/android/server/IOpSmartPowerControl;

    if-eqz v0, :cond_1

    .line 350
    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpSmartPowerControl;->setPowerSaveWhitelistAppIds([I[I)V

    .line 353
    :cond_1
    return-void
.end method

.method public static shellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2
    .param p0, "shell"    # Lcom/android/server/DeviceIdleController$Shell;
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 239
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "shellCommand"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    const/4 v0, 0x0

    .line 245
    .local v0, "handled":Z
    if-nez v0, :cond_1

    sget-object v1, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v1, :cond_1

    .line 246
    invoke-interface {v1, p0, p1, p2}, Lcom/android/server/IOpAggressiveDoze;->shellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    .line 249
    :cond_1
    return v0
.end method

.method public static startMonitoringMotionOverride()Z
    .locals 2

    .line 154
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "startMonitoringMotionOverride"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v0}, Lcom/android/server/IOpAggressiveDoze;->startMonitoringMotionOverride()Z

    move-result v0

    return v0

    .line 161
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static tryClearAllPendingBroadcasts()V
    .locals 2

    .line 198
    sget-boolean v0, Lcom/android/server/DeviceIdleControllerInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "DeviceIdleControllerInjector"

    const-string/jumbo v1, "tryClearAllPendingBroadcasts"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    sget-object v0, Lcom/android/server/DeviceIdleControllerInjector;->opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    .line 203
    invoke-interface {v0}, Lcom/android/server/IOpAggressiveDoze;->tryClearAllPendingBroadcasts()V

    .line 205
    :cond_1
    return-void
.end method

.method public static writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-static {}, Lcom/android/server/DeviceIdleControllerInjector;->getForcedOptApps()Landroid/util/ArrayMap;

    move-result-object v0

    .line 323
    .local v0, "forcedOptApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 324
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 325
    const-string v2, "force-opt"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "n"

    invoke-interface {p0, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
