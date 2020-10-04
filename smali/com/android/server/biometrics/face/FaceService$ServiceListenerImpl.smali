.class Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;
.super Ljava/lang/Object;
.source "FaceService.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListenerImpl"
.end annotation


# instance fields
.field private mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V
    .locals 0
    .param p2, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;

    .line 611
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput-object p2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 613
    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 629
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onAcquired(JII)V

    .line 631
    :cond_0
    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 1
    .param p1, "deviceId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 650
    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFailed(J)V

    .line 652
    :cond_0
    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "biometric"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_2

    .line 638
    if-eqz p3, :cond_1

    instance-of v0, p3, Landroid/hardware/face/Face;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 642
    :cond_0
    const-string v0, "FaceService"

    const-string/jumbo v1, "onAuthenticationSucceeded received non-face biometric"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 639
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    move-object v1, p3

    check-cast v1, Landroid/hardware/face/Face;

    invoke-interface {v0, p1, p2, v1, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/face/Face;I)V

    .line 645
    :cond_2
    :goto_1
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 4
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v1

    .line 620
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    .line 619
    invoke-interface {v0, v1, v2, v3, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onEnrollResult(JII)V

    .line 623
    :cond_0
    return-void
.end method

.method public onEnumerated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 4
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v1

    .line 676
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    .line 675
    invoke-interface {v0, v1, v2, v3, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onEnumerated(JII)V

    .line 678
    :cond_0
    return-void
.end method

.method public onError(JIII)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I
    .param p5, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 658
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onError(JII)V

    .line 660
    :cond_0
    return-void
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 4
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v1

    .line 667
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    .line 666
    invoke-interface {v0, v1, v2, v3, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onRemoved(JII)V

    .line 669
    :cond_0
    return-void
.end method
