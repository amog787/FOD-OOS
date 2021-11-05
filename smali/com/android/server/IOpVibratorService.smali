.class public interface abstract Lcom/android/server/IOpVibratorService;
.super Ljava/lang/Object;
.source "IOpVibratorService.java"


# virtual methods
.method public abstract doVibratorOn(JI)V
.end method

.method public abstract doVibratorPerformEffect(IILcom/android/server/VibratorService$Vibration;)J
.end method

.method public abstract doVibratorSetAmplitude(I)V
.end method

.method public abstract getDurationMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEffectMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImPkg()Ljava/lang/String;
.end method

.method public abstract getIntensityEffectType()I
.end method

.method public abstract getIntensityStrengthType()I
.end method

.method public abstract getOldIntensityEffectType()I
.end method

.method public abstract getRepeatVibrate()Z
.end method

.method public abstract getVibrateOnTouchIntensity()I
.end method

.method public abstract getVibratorEffectMap(Ljava/lang/String;)V
.end method

.method public abstract initCaliFile()V
.end method

.method public abstract initVibratorEffectMap(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract isVibrating()Z
.end method

.method public abstract markWeakenFlagForDarkMode(Landroid/os/VibrationAttributes;)V
.end method

.method public abstract motorF0Calibration()V
.end method

.method public abstract setGlobalDarkMode(Z)V
.end method

.method public abstract setIntensityEffectType(I)V
.end method

.method public abstract setIsEffectChanged(Z)V
.end method

.method public abstract setIsVibrating(Z)V
.end method

.method public abstract setOldIntensityEffectType(I)V
.end method

.method public abstract setRepeatVibrate(Z)V
.end method

.method public abstract setVibratorEffect(Lcom/android/server/VibratorService$Vibration;ILjava/lang/Object;)I
.end method

.method public abstract turnOffLinearMotorVibrator()V
.end method

.method public abstract updateVibrator()V
.end method

.method public abstract vibrate(ILandroid/os/VibrationEffect;Ljava/lang/String;Ljava/lang/String;)Landroid/os/VibrationEffect;
.end method
