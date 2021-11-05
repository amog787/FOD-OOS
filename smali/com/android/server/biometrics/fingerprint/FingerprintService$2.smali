.class Lcom/android/server/biometrics/fingerprint/FingerprintService$2;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;


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

    .line 794
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(JI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    const-string v1, "FingerprintService"

    if-nez v0, :cond_0

    const-string p1, "authenticate(): no fingerprint HAL!"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 p1, 0x3

    return p1

    :cond_0
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v2

    .line 801
    if-eqz v2, :cond_1

    .line 803
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v3

    invoke-interface {v2, v3}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->setLongPressEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    goto :goto_0

    .line 804
    :catch_0
    move-exception v2

    .line 805
    const-string/jumbo v3, "setLongPressEnabled failed"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$10000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->showInDisplayFingerprintView()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 812
    goto :goto_1

    .line 810
    :catch_1
    move-exception v2

    const-string/jumbo v3, "showInDisplayFingerprintView failed"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I

    move-result p1

    return p1
.end method

.method public cancel()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    const-string v1, "FingerprintService"

    if-nez v0, :cond_0

    const-string v0, "cancel(): no fingerprint HAL!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 826
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$10100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideInDisplayFingerprintView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    goto :goto_0

    .line 827
    :catch_0
    move-exception v2

    .line 828
    const-string v3, "hideInDisplayFingerprintView failed"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v0

    return v0
.end method

.method public enroll([BIILjava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p4

    const-string v0, "FingerprintService"

    if-nez p4, :cond_0

    const-string p1, "enroll(): no fingerprint HAL!"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    return p1

    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$9400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 863
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$8700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v1

    .line 864
    if-eqz v1, :cond_1

    .line 866
    :try_start_0
    invoke-interface {v1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->onStartEnroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    goto :goto_0

    .line 867
    :catch_0
    move-exception v1

    .line 868
    const-string/jumbo v2, "onStartEnroll failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$10200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->showInDisplayFingerprintView()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 875
    goto :goto_1

    .line 873
    :catch_1
    move-exception v1

    .line 874
    const-string/jumbo v2, "showInDisplayFingerprintView failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    :cond_2
    :goto_1
    invoke-interface {p4, p1, p2, p3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll([BII)I

    move-result p1

    return p1
.end method

.method public enumerate()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 828
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const-string v1, "FingerprintService"

    if-nez v0, :cond_0

    .line 829
    const-string v2, "enumerate(): no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v1, 0x3

    return v1

    .line 834
    :cond_0
    const-string v2, "daemon.enumerate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enumerate()I

    move-result v1

    return v1
.end method

.method public remove(II)I
    .locals 3
    .param p1, "groupId"    # I
    .param p2, "biometricId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 818
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_0

    .line 819
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "remove(): no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v1, 0x3

    return v1

    .line 822
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->remove(II)I

    move-result v1

    return v1
.end method

.method public resetLockout([B)V
    .locals 2
    .param p1, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 853
    const-string v0, "FingerprintService"

    const-string v1, "Not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void
.end method
