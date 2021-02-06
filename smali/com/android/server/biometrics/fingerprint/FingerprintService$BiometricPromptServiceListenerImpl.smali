.class Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;
.super Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiometricPromptServiceListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V
    .locals 0
    .param p2, "wrapperReceiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 556
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 557
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    .line 558
    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 565
    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 564
    invoke-static {v1, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onAcquired(ILjava/lang/String;)V

    .line 567
    :cond_0
    return-void
.end method

.method public onError(JIII)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I
    .param p5, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, p5, v1, p3, p4}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onError(IIII)V

    .line 575
    :cond_0
    return-void
.end method
