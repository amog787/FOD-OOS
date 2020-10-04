.class final Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;
.super Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FingerprintAuthClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"    # J
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "targetUserId"    # I
    .param p9, "groupId"    # I
    .param p10, "opId"    # J
    .param p12, "restricted"    # Z
    .param p13, "owner"    # Ljava/lang/String;
    .param p14, "cookie"    # I
    .param p15, "requireConfirmation"    # Z

    .line 146
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 147
    invoke-direct/range {p0 .. p15}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 149
    return-void
.end method


# virtual methods
.method public handleFailedAttempt()I
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->opHandleFailedAttempt()I

    .line 178
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 179
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 182
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$300(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V

    .line 186
    :cond_0
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->handleFailedAttempt()I

    move-result v1

    return v1
.end method

.method protected isFingerprint()Z
    .locals 1

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public onAcquired(II)Z
    .locals 2
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 178
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onAcquired(II)Z

    move-result v0

    .line 179
    .local v0, "result":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7801(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/fingerprint/FacolaView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FacolaView;->hide()V

    .line 180
    :cond_0
    return v0
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "authenticated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 186
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z

    move-result v0

    .line 187
    .local v0, "result":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7801(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/fingerprint/FacolaView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FacolaView;->hide()V

    .line 188
    :cond_0
    return v0
.end method

.method public start()I
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7801(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/fingerprint/FacolaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->show()V

    .line 195
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->start()I

    move-result v0

    return v0
.end method

.method public stop(Z)I
    .locals 1
    .param p1, "initiatedByClient"    # Z

    .line 200
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7801(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/fingerprint/FacolaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FacolaView;->hide()V

    .line 201
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->stop(Z)I

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 2

    .line 192
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onStart()V

    .line 194
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "BiometricStats"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->enterFingerprintMode()V

    .line 199
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 203
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onStop()V

    .line 205
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "BiometricStats"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    return-void
.end method

.method public resetFailedAttempts()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 159
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 158
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$000(Lcom/android/server/biometrics/fingerprint/FingerprintService;ZI)V

    .line 160
    return-void
.end method

.method public shouldFrameworkHandleLockout()Z
    .locals 1

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method protected statsModality()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->statsModality()I

    move-result v0

    return v0
.end method

.method public wasUserDetected()Z
    .locals 1

    .line 170
    const/4 v0, 0x0

    return v0
.end method
