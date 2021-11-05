.class Lcom/android/server/biometrics/fingerprint/FingerprintService$1;
.super Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 690
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAcquired_2_2$1$FingerprintService$1(JII)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I

    .line 716
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7801(Lcom/android/server/biometrics/fingerprint/FingerprintService;JII)V

    .line 717
    return-void
.end method

.method public synthetic lambda$onAuthenticated$2$FingerprintService$1(IIJLjava/util/ArrayList;)V
    .locals 7
    .param p1, "groupId"    # I
    .param p2, "fingerId"    # I
    .param p3, "deviceId"    # J
    .param p5, "token"    # Ljava/util/ArrayList;

    .line 729
    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    const-string v1, ""

    move-object v0, v6

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 730
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1, v0, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7701(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    .line 731
    return-void
.end method

.method public synthetic lambda$onEnrollResult$0$FingerprintService$1(IIJI)V
    .locals 7
    .param p1, "groupId"    # I
    .param p2, "fingerId"    # I
    .param p3, "deviceId"    # J
    .param p5, "remaining"    # I

    .line 700
    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 701
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v6

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 703
    .local v0, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1, v0, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7901(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 704
    return-void
.end method

.method public synthetic lambda$onEnumerate$5$FingerprintService$1(IIJI)V
    .locals 7
    .param p1, "groupId"    # I
    .param p2, "fingerId"    # I
    .param p3, "deviceId"    # J
    .param p5, "remaining"    # I

    .line 783
    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    const-string v1, ""

    move-object v0, v6

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 784
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1, v0, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7001(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 785
    return-void
.end method

.method public synthetic lambda$onError$3$FingerprintService$1(JII)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 742
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7301(Lcom/android/server/biometrics/fingerprint/FingerprintService;JII)V

    .line 744
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 746
    const-string v0, "FingerprintService"

    const-string v1, "Got ERROR_HW_UNAVAILABLE; try reconnecting next client."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    monitor-enter p0

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7402(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 750
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->resetExtDaemon()V

    .line 752
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7502(Lcom/android/server/biometrics/fingerprint/FingerprintService;J)J

    .line 753
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7602(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)I

    .line 754
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 756
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$onRemoved$4$FingerprintService$1(IIJI)V
    .locals 8
    .param p1, "groupId"    # I
    .param p2, "fingerId"    # I
    .param p3, "deviceId"    # J
    .param p5, "remaining"    # I

    .line 768
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 769
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    new-instance v7, Landroid/hardware/fingerprint/Fingerprint;

    const-string v2, ""

    move-object v1, v7

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 770
    .local v1, "fp":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2, v1, p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7201(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 771
    return-void
.end method

.method public onAcquired(JII)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAcquired, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lockout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->onAcquired_2_2(JII)V

    .line 711
    return-void
.end method

.method public onAcquired_2_2(JII)V
    .locals 8
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I

    .line 715
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$I9ULJAHXA5Q3BYZs4m8TK6v5kUQ;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$I9ULJAHXA5Q3BYZs4m8TK6v5kUQ;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;JII)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 718
    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 725
    .local p5, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAuthenticated, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7nMWCt41OE3k8ihjPNPqB0O8POU;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJLjava/util/ArrayList;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 732
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnrollResult, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7-RPI0PwwgOAZtsXq2j72pQWwMc;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$7-RPI0PwwgOAZtsXq2j72pQWwMc;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJI)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 705
    return-void
.end method

.method public onEnumerate(JIII)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnumerate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$3I9ge5BoesXZUovbayCOCR754fc;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJI)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 787
    return-void
.end method

.method public onError(JII)V
    .locals 8
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$cO88ecWuvWIBecLAEccxr5yeJK4;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$cO88ecWuvWIBecLAEccxr5yeJK4;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;JII)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 757
    return-void
.end method

.method public onRemoved(JIII)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRemoved, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$BJntfNoFTejPmUJ_45WFIwis8Nw;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$1$BJntfNoFTejPmUJ_45WFIwis8Nw;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$1;IIJI)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 772
    return-void
.end method
