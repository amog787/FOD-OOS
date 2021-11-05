.class public interface abstract Lcom/oneplus/android/server/IOpMotorService;
.super Ljava/lang/Object;
.source "IOpMotorService.java"


# virtual methods
.method public abstract getMotorState()I
.end method

.method public abstract notifyActivityChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyKeyguardState(Z)V
.end method

.method public abstract notifyMotorState(Landroid/view/KeyEvent;)Z
.end method

.method public abstract notifyPowerOff()V
.end method

.method public abstract notifyScreenState(I)V
.end method
