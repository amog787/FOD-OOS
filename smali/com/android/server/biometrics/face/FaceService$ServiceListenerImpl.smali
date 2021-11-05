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

    .line 771
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    iput-object p2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 773
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

    .line 788
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 789
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onAcquired(JII)V

    .line 791
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

    .line 809
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 810
    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFailed(J)V

    .line 812
    :cond_0
    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 8
    .param p1, "deviceId"    # J
    .param p3, "biometric"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_2

    .line 798
    if-eqz p3, :cond_1

    instance-of v0, p3, Landroid/hardware/face/Face;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 802
    :cond_0
    const-string v0, "FaceService"

    const-string/jumbo v1, "onAuthenticationSucceeded received non-face biometric"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 799
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    move-object v5, p3

    check-cast v5, Landroid/hardware/face/Face;

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 800
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$8800(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v7

    .line 799
    move-wide v3, p1

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/face/Face;IZ)V

    .line 805
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

    .line 778
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v1

    .line 780
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    .line 779
    invoke-interface {v0, v1, v2, v3, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onEnrollResult(JII)V

    .line 783
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

    .line 834
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v1

    .line 836
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    .line 835
    invoke-interface {v0, v1, v2, v3, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onEnumerated(JII)V

    .line 838
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

    .line 817
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 818
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onError(JII)V

    .line 820
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

    .line 825
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v1

    .line 827
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    .line 826
    invoke-interface {v0, v1, v2, v3, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onRemoved(JII)V

    .line 829
    :cond_0
    return-void
.end method
