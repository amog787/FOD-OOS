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

    const/16 v2, 0x89

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
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 139
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    if-nez p0, :cond_1

    .line 144
    const-string v0, "OpFastChargeInjector"

    const-string v1, "intent is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 148
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_2

    .line 149
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IOpFastCharge;->addIntentExtra(Landroid/content/Intent;)V

    .line 151
    :cond_2
    return-void
.end method

.method public static chargeVibration()V
    .locals 1

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
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->chargeVibration()V

    .line 136
    :cond_1
    return-void
.end method

.method public static getFastChargeStatus()Z
    .locals 2

    .line 83
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 84
    return v1

    .line 87
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    .line 88
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->getFastChargeStatus()Z

    move-result v0

    return v0

    .line 91
    :cond_1
    return v1
.end method

.method public static getLastFastChargeStatus()Z
    .locals 2

    .line 95
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 96
    return v1

    .line 99
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->getLastFastChargeStatus()Z

    move-result v0

    return v0

    .line 103
    :cond_1
    return v1
.end method

.method public static init(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 42
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 43
    return v1

    .line 46
    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->DEBUG:Z

    const-string v2, "OpFastChargeInjector"

    if-eqz v0, :cond_1

    .line 47
    const-string v0, "in framework.jar OpFastChargeInjector"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-nez v0, :cond_2

    .line 51
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_fast_charge:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IOpFastCharge;

    sput-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    goto :goto_0

    .line 54
    :cond_2
    const-string v0, "OpFastCharge is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_3

    .line 62
    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/power/IOpFastCharge;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 66
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

    .line 70
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    return v1

    .line 74
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/power/IOpFastCharge;->registerObserver(ILandroid/os/Handler;)V

    .line 76
    const/4 v0, 0x1

    return v0

    .line 79
    :cond_1
    return v1
.end method

.method public static update(Landroid/hardware/health/V1_0/HealthInfo;)V
    .locals 1
    .param p0, "info"    # Landroid/hardware/health/V1_0/HealthInfo;

    .line 107
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    .line 108
    return-void

    .line 111
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IOpFastCharge;->update(Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 114
    :cond_1
    return-void
.end method

.method public static updateLastFastChargeStatus()Z
    .locals 2

    .line 117
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    return v1

    .line 121
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->updateLastFastChargeStatus()Z

    move-result v0

    return v0

    .line 125
    :cond_1
    return v1
.end method

.method public static updateLightsLocked()Z
    .locals 2

    .line 154
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 155
    return v1

    .line 158
    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->updateLightsLocked()Z

    move-result v0

    return v0

    .line 162
    :cond_1
    return v1
.end method
