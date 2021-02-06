.class public abstract Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "BiometricServiceListener"
.end annotation


# instance fields
.field private mWrapperReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p2, "wrapperReceiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 500
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->mWrapperReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 502
    return-void
.end method


# virtual methods
.method public getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->mWrapperReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    return-object v0
.end method

.method public onAuthenticationFailedInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onAuthenticationFailed()V

    .line 523
    :cond_0
    return-void
.end method

.method public onAuthenticationSucceededInternal(Z[BZ)V
    .locals 1
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # [B
    .param p3, "isStrongBiometric"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onAuthenticationSucceeded(Z[BZ)V

    .line 515
    :cond_0
    return-void
.end method
