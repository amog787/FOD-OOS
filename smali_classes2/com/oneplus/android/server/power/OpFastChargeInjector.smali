.class public Lcom/oneplus/android/server/power/OpFastChargeInjector;
.super Ljava/lang/Object;
.source "OpFastChargeInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OpFastChargeInjector"

.field private static opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->DEBUG:Z

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa6

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIntentExtra(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 129
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 130
    return-void

    .line 133
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    .line 134
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IOpFastCharge;->addIntentExtra(Landroid/content/Intent;)V

    .line 136
    :cond_1
    return-void
.end method

.method public static chargeVibration()V
    .locals 1

    .line 119
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    .line 124
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->chargeVibration()V

    .line 126
    :cond_1
    return-void
.end method

.method public static getFastChargeStatus()Z
    .locals 2

    .line 73
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    return v1

    .line 77
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->getFastChargeStatus()Z

    move-result v0

    return v0

    .line 81
    :cond_1
    return v1
.end method

.method public static getLastFastChargeStatus()Z
    .locals 2

    .line 85
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 86
    return v1

    .line 89
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    .line 90
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->getLastFastChargeStatus()Z

    move-result v0

    return v0

    .line 93
    :cond_1
    return v1
.end method

.method public static init(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 38
    return v1

    .line 41
    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->DEBUG:Z

    const-string v2, "OpFastChargeInjector"

    if-eqz v0, :cond_1

    .line 42
    const-string v0, "in framework.jar OpFastChargeInjector"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-nez v0, :cond_2

    .line 46
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_fast_charge:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IOpFastCharge;

    sput-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    goto :goto_0

    .line 49
    :cond_2
    const-string v0, "OpFastCharge is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_3

    .line 53
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IOpFastCharge;->init(Landroid/content/Context;)V

    .line 56
    :cond_3
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static registerObserver(ILandroid/os/Handler;)Z
    .locals 2
    .param p0, "bootPhase"    # I
    .param p1, "handler"    # Landroid/os/Handler;

    .line 60
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    return v1

    .line 64
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    .line 65
    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/power/IOpFastCharge;->registerObserver(ILandroid/os/Handler;)V

    .line 66
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_1
    return v1
.end method

.method public static update(Landroid/hardware/health/V1_0/HealthInfo;)V
    .locals 1
    .param p0, "info"    # Landroid/hardware/health/V1_0/HealthInfo;

    .line 97
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IOpFastCharge;->update(Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 104
    :cond_1
    return-void
.end method

.method public static updateLastFastChargeStatus()Z
    .locals 2

    .line 107
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 108
    return v1

    .line 111
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->updateLastFastChargeStatus()Z

    move-result v0

    return v0

    .line 115
    :cond_1
    return v1
.end method

.method public static updateLightsLocked()Z
    .locals 2

    .line 139
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 140
    return v1

    .line 143
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    .line 144
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->updateLightsLocked()Z

    move-result v0

    return v0

    .line 147
    :cond_1
    return v1
.end method
