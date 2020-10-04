.class public interface abstract Lcom/oneplus/android/server/power/IOpFastCharge;
.super Ljava/lang/Object;
.source "IOpFastCharge.java"


# virtual methods
.method public abstract addIntentExtra(Landroid/content/Intent;)V
.end method

.method public abstract chargeVibration()V
.end method

.method public abstract getFastChargeStatus()Z
.end method

.method public abstract getLastFastChargeStatus()Z
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract registerObserver(ILandroid/os/Handler;)V
.end method

.method public abstract update(Landroid/hardware/health/V1_0/HealthInfo;)V
.end method

.method public abstract updateLastFastChargeStatus()Z
.end method

.method public abstract updateLightsLocked()Z
.end method
