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

    .line 984
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

    .line 987
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5700(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 988
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-nez v0, :cond_0

    .line 989
    const-string v1, "FaceService"

    const-string v2, "authenticate(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v1, 0x3

    return v1

    .line 992
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

    .line 997
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5700(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 998
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-nez v0, :cond_0

    .line 999
    const-string v1, "FaceService"

    const-string v2, "cancel(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/4 v1, 0x3

    return v1

    .line 1002
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

    .line 1028
    .local p4, "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5700(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1029
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-nez v0, :cond_0

    .line 1030
    const-string v1, "FaceService"

    const-string v2, "enroll(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/4 v1, 0x3

    return v1

    .line 1033
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    .local v1, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1035
    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1037
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

    .line 1017
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5700(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1018
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-nez v0, :cond_0

    .line 1019
    const-string v1, "FaceService"

    const-string v2, "enumerate(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const/4 v1, 0x3

    return v1

    .line 1022
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

    .line 1007
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5700(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1008
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-nez v0, :cond_0

    .line 1009
    const-string v1, "FaceService"

    const-string/jumbo v2, "remove(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v1, 0x3

    return v1

    .line 1012
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

    .line 1042
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$2;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5700(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1043
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-nez v0, :cond_0

    .line 1044
    const-string v1, "FaceService"

    const-string/jumbo v2, "resetLockout(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return-void

    .line 1047
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    .local v1, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1049
    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1051
    .end local v2    # "i":I
    :cond_1
    invoke-interface {v0, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->resetLockout(Ljava/util/ArrayList;)I

    .line 1052
    return-void
.end method
