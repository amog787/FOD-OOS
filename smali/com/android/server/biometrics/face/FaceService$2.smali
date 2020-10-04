.class Lcom/android/server/biometrics/face/FaceService$2;
.super Ljava/lang/Object;
.source "FaceService.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 806
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(JI)I
    .locals 3
    .param p1, "operationId"    # J
    .param p3, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5100(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 810
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-nez v0, :cond_0

    .line 811
    const-string v1, "FaceService"

    const-string v2, "authenticate(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v1, 0x3

    return v1

    .line 814
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I

    move-result v1

    return v1
.end method

.method public cancel()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5100(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 820
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-nez v0, :cond_0

    .line 821
    const-string v1, "FaceService"

    const-string v2, "cancel(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v1, 0x3

    return v1

    .line 824
    :cond_0
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I

    move-result v1

    return v1
.end method

.method public enroll([BIILjava/util/ArrayList;)I
    .locals 4
    .param p1, "cryptoToken"    # [B
    .param p2, "groupId"    # I
    .param p3, "timeout"    # I
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

    .line 850
    .local p4, "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5100(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 851
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-nez v0, :cond_0

    .line 852
    const-string v1, "FaceService"

    const-string v2, "enroll(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v1, 0x3

    return v1

    .line 855
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v1, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 857
    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 859
    .end local v2    # "i":I
    :cond_1
    invoke-interface {v0, v1, p3, p4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result v2

    return v2
.end method

.method public enumerate()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5100(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 840
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-nez v0, :cond_0

    .line 841
    const-string v1, "FaceService"

    const-string v2, "enumerate(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v1, 0x3

    return v1

    .line 844
    :cond_0
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enumerate()I

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

    .line 829
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5100(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 830
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-nez v0, :cond_0

    .line 831
    const-string v1, "FaceService"

    const-string/jumbo v2, "remove(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v1, 0x3

    return v1

    .line 834
    :cond_0
    invoke-interface {v0, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->remove(I)I

    move-result v1

    return v1
.end method

.method public resetLockout([B)V
    .locals 4
    .param p1, "cryptoToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5100(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 865
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-nez v0, :cond_0

    .line 866
    const-string v1, "FaceService"

    const-string/jumbo v2, "resetLockout(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-void

    .line 869
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 870
    .local v1, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 871
    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 873
    .end local v2    # "i":I
    :cond_1
    invoke-interface {v0, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->resetLockout(Ljava/util/ArrayList;)I

    .line 874
    return-void
.end method
