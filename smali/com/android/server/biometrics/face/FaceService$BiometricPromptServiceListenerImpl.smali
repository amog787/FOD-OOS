.class Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;
.super Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiometricPromptServiceListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V
    .locals 0
    .param p2, "wrapperReceiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 577
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 578
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    .line 579
    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    .line 589
    invoke-static {p3, p4}, Landroid/hardware/face/FaceManager;->getMappedAcquiredInfo(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 590
    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3, p4}, Landroid/hardware/face/FaceManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onAcquired(ILjava/lang/String;)V

    .line 592
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

    .line 597
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 599
    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3, p4}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-interface {v0, p5, p3, v1}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onError(IILjava/lang/String;)V

    .line 601
    :cond_0
    return-void
.end method
