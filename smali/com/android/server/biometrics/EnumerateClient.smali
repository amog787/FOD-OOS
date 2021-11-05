.class public abstract Lcom/android/server/biometrics/EnumerateClient;
.super Lcom/android/server/biometrics/ClientMonitor;
.source "EnumerateClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "constants"    # Lcom/android/server/biometrics/Constants;
    .param p3, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"    # J
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "groupId"    # I
    .param p9, "userId"    # I
    .param p10, "restricted"    # Z
    .param p11, "owner"    # Ljava/lang/String;

    .line 37
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p9

    move/from16 v9, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/ClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public notifyUserActivity()V
    .locals 0

    .line 43
    return-void
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

    .line 113
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticated() called for enumerate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "rem"    # I

    .line 119
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEnrollResult() called for enumerate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onEnumerated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to notify enumerated:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 125
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRemoved() called for enumerate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public start()I
    .locals 5

    .line 54
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->enumerate()I

    move-result v1

    .line 55
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start enumerate for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getTargetUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lcom/android/server/biometrics/EnumerateClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v3, p0, Lcom/android/server/biometrics/EnumerateClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v3}, Lcom/android/server/biometrics/Constants;->tagEnumerateStartError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getHalDeviceId()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/android/server/biometrics/EnumerateClient;->onError(JII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return v1

    .line 65
    .end local v1    # "result":I
    :cond_0
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "startEnumeration failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method protected statsAction()I
    .locals 1

    .line 47
    const/4 v0, 0x3

    return v0
.end method

.method public stop(Z)I
    .locals 4
    .param p1, "initiatedByClient"    # Z

    .line 71
    iget-boolean v0, p0, Lcom/android/server/biometrics/EnumerateClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "stopEnumerate: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v1

    .line 77
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->cancel()I

    move-result v0

    .line 78
    .local v0, "result":I
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop enumeration failed, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return v0

    .line 85
    .end local v0    # "result":I
    :cond_1
    nop

    .line 89
    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getHalDeviceId()J

    move-result-wide v2

    const/4 v0, 0x5

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/biometrics/EnumerateClient;->onError(JII)Z

    .line 93
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/EnumerateClient;->mAlreadyCancelled:Z

    .line 94
    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stopEnumeration failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    const/4 v1, 0x3

    return v1
.end method
