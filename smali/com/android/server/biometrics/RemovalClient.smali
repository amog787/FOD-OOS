.class public abstract Lcom/android/server/biometrics/RemovalClient;
.super Lcom/android/server/biometrics/ClientMonitor;
.source "RemovalClient.java"


# instance fields
.field private final mBiometricId:I

.field private final mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "constants"    # Lcom/android/server/biometrics/Constants;
    .param p3, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"    # J
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "biometricId"    # I
    .param p9, "groupId"    # I
    .param p10, "userId"    # I
    .param p11, "restricted"    # Z
    .param p12, "owner"    # Ljava/lang/String;
    .param p13, "utils"    # Lcom/android/server/biometrics/BiometricUtils;

    .line 40
    move-object v13, p0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p10

    move/from16 v9, p9

    move/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/ClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V

    .line 42
    move/from16 v0, p8

    iput v0, v13, Lcom/android/server/biometrics/RemovalClient;->mBiometricId:I

    .line 43
    move-object/from16 v1, p13

    iput-object v1, v13, Lcom/android/server/biometrics/RemovalClient;->mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

    .line 44
    return-void
.end method

.method private sendRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to notify Removed:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
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


# virtual methods
.method public notifyUserActivity()V
    .locals 0

    .line 48
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

    .line 129
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticated() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "rem"    # I

    .line 122
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEnrollResult() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 136
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEnumerationResult() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 4
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 113
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/server/biometrics/RemovalClient;->mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getTargetUserId()I

    move-result v2

    .line 115
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    .line 114
    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/biometrics/BiometricUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 117
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/RemovalClient;->sendRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result v0

    return v0
.end method

.method public start()I
    .locals 5

    .line 59
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getGroupId()I

    move-result v2

    iget v3, p0, Lcom/android/server/biometrics/RemovalClient;->mBiometricId:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->remove(II)I

    move-result v1

    .line 60
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRemove with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/biometrics/RemovalClient;->mBiometricId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/android/server/biometrics/RemovalClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v3, p0, Lcom/android/server/biometrics/RemovalClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v3}, Lcom/android/server/biometrics/Constants;->tagRemoveStartError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getHalDeviceId()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/android/server/biometrics/RemovalClient;->onError(JII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return v1

    .line 70
    .end local v1    # "result":I
    :cond_0
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "startRemove failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method protected statsAction()I
    .locals 1

    .line 52
    const/4 v0, 0x4

    return v0
.end method

.method public stop(Z)I
    .locals 5
    .param p1, "initiatedByClient"    # Z

    .line 76
    iget-boolean v0, p0, Lcom/android/server/biometrics/RemovalClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "stopRemove: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v1

    .line 82
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->cancel()I

    move-result v0

    .line 83
    .local v0, "result":I
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopRemoval failed, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is no longer removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .line 92
    .end local v0    # "result":I
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/RemovalClient;->mAlreadyCancelled:Z

    .line 93
    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stopRemoval failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    const/4 v1, 0x3

    return v1
.end method
