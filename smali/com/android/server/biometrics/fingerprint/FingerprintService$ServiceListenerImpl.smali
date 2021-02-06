.class Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListenerImpl"
.end annotation


# instance fields
.field private mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 0
    .param p2, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 585
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object p2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 587
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

    .line 602
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_0

    .line 603
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JII)V

    .line 605
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

    .line 628
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_0

    .line 629
    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V

    .line 631
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

    .line 611
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const-string v1, "FingerprintService"

    if-eqz v0, :cond_2

    .line 612
    if-eqz p3, :cond_1

    instance-of v0, p3, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 619
    :cond_0
    const-string/jumbo v0, "onAuthenticationSucceeded received non-fingerprint biometric"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 614
    :cond_1
    :goto_0
    const-string/jumbo v0, "onAuthenticationSucceeded: send result"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-object v5, p3

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 617
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v7

    .line 616
    move-wide v3, p1

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;IZ)V

    goto :goto_1

    .line 622
    :cond_2
    const-string/jumbo v0, "onAuthenticationSucceeded: mFingerprintServiceReceiver is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :goto_1
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 7
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_0

    .line 593
    move-object v6, p1

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    .line 594
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    .line 595
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v4

    .line 594
    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V

    .line 597
    .end local v6    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_0
    return-void
.end method

.method public onEnumerated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 7
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_0

    .line 655
    move-object v6, p1

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    .line 656
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    .line 657
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v4

    .line 656
    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnumerated(JIII)V

    .line 659
    .end local v6    # "fp":Landroid/hardware/fingerprint/Fingerprint;
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

    .line 636
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_0

    .line 637
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V

    .line 639
    :cond_0
    return-void
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 7
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_0

    .line 645
    move-object v6, p1

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    .line 646
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    .line 647
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v4

    .line 646
    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JIII)V

    .line 649
    .end local v6    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_0
    return-void
.end method
