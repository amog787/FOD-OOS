.class public abstract Lcom/android/server/biometrics/AuthenticationClient;
.super Lcom/android/server/biometrics/OpClientMonitor;
.source "AuthenticationClient.java"


# static fields
.field public static final LOCKOUT_NONE:I = 0x0

.field public static final LOCKOUT_PERMANENT:I = 0x2

.field public static final LOCKOUT_TIMED:I = 0x1


# instance fields
.field private mOpId:J

.field private final mRequireConfirmation:Z

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "constants"    # Lcom/android/server/biometrics/Constants;
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

    .line 86
    move-object v13, p0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p12

    move-object/from16 v11, p13

    move/from16 v12, p14

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/OpClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V

    .line 88
    move-wide/from16 v0, p10

    iput-wide v0, v13, Lcom/android/server/biometrics/AuthenticationClient;->mOpId:J

    .line 89
    move/from16 v2, p15

    iput-boolean v2, v13, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    .line 90
    return-void
.end method

.method private notifySurfaceFlingerUpdateWhenSetDim()V
    .locals 5

    .line 392
    sget-boolean v0, Lcom/android/server/biometrics/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notify SurfaceFlinger set dim value"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 394
    .local v0, "mSurfaceFlinger":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 396
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 398
    const/16 v2, 0x5209

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 404
    goto :goto_2

    .line 403
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 399
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception notifySurfaceFlingerUpdate"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 403
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 406
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_1
    :goto_2
    return-void
.end method

.method private opHandleErrorVibration(III)V
    .locals 2
    .param p1, "sceneId"    # I
    .param p2, "gap"    # I
    .param p3, "times"    # I

    .line 361
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/AuthenticationClient;->vibrateErrorWithScene(III)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->vibrateError()V

    .line 367
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/android/server/biometrics/OpClientMonitor;->binderDied()V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthenticationClient;->stop(Z)I

    .line 99
    return-void
.end method

.method public getRequireConfirmation()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    return v0
.end method

.method public abstract handleFailedAttempt()I
.end method

.method public isBiometricPrompt()Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getCookie()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isCryptoOperation()Z
    .locals 4

    .line 116
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mOpId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .locals 9
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

    .line 149
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "Remote exception"

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v6

    .line 149
    move-object v1, p0

    move v3, p2

    invoke-super/range {v1 .. v6}, Lcom/android/server/biometrics/OpClientMonitor;->logOnAuthenticated(Landroid/content/Context;ZZIZ)V

    .line 152
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v1

    .line 154
    .local v1, "listener":Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v3, p0, Lcom/android/server/biometrics/AuthenticationClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v3}, Lcom/android/server/biometrics/Constants;->actionBiometricAuth()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    .line 155
    const/4 v2, 0x0

    .line 158
    .local v2, "result":Z
    :try_start_0
    sget-boolean v3, Lcom/android/server/biometrics/AuthenticationClient;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client onAuthenticated("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "), ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Owner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isBP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", requireConfirmation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_b

    .line 167
    iput-boolean v4, p0, Lcom/android/server/biometrics/AuthenticationClient;->mAlreadyDone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    const-string v5, "com.android.systemui"

    if-eqz v1, :cond_3

    .line 173
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/biometrics/AuthenticationClient;->shouldVibrate(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 175
    new-array v6, v4, [I

    const/16 v7, 0x7a

    aput v7, v6, v3

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 176
    const/16 v6, 0x3fd

    invoke-virtual {p0, v6, v4}, Lcom/android/server/biometrics/AuthenticationClient;->vibrateSuccessWithScene(II)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/biometrics/AuthenticationClient;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v4, :cond_3

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->vibrateSuccess()V

    .line 186
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->shouldFrameworkHandleLockout()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 188
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->resetFailedAttempts()V

    .line 190
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->onStop()V

    .line 192
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [B

    .line 193
    .local v4, "byteToken":[B
    nop

    .local v3, "i":I
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 194
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v4, v3

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->notifyFodAuthenticatedSuccess()V

    .line 201
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    .line 203
    iget-boolean v3, p0, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    invoke-interface {v1, v3, v4}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationSucceededInternal(Z[B)V

    goto :goto_3

    .line 204
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v1, :cond_8

    .line 205
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->addAuthToken([B)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getIsRestricted()Z

    move-result v3

    if-nez v3, :cond_7

    .line 210
    nop

    .line 211
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v3

    .line 210
    invoke-interface {v1, v5, v6, p1, v3}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    goto :goto_2

    .line 213
    :cond_7
    nop

    .line 214
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v7

    .line 213
    invoke-interface {v1, v5, v6, v3, v7}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 218
    :goto_2
    goto :goto_3

    .line 216
    :catch_0
    move-exception v3

    .line 217
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 221
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Client not listening"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v2, 0x1

    .line 227
    iget-boolean v3, p0, Lcom/android/server/biometrics/AuthenticationClient;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_9

    .line 228
    invoke-super {p0}, Lcom/android/server/biometrics/OpClientMonitor;->notifySurfaceFlinger()V

    .line 232
    :cond_9
    if-eqz v1, :cond_a

    .line 233
    nop

    .line 234
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v3

    .line 233
    invoke-interface {v1, v5, v6, p1, v3}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 239
    .end local v4    # "byteToken":[B
    :cond_a
    :goto_3
    goto :goto_6

    .line 240
    :cond_b
    if-eqz v1, :cond_c

    .line 243
    const/16 v5, 0x3fc

    const/16 v6, 0x32

    const/4 v7, 0x3

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/biometrics/AuthenticationClient;->opHandleErrorVibration(III)V

    .line 250
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->handleFailedAttempt()I

    move-result v5

    .line 251
    .local v5, "lockoutMode":I
    if-eqz v5, :cond_e

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->shouldFrameworkHandleLockout()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 252
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Forcing lockout (driver code should do this!), mode("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/AuthenticationClient;->stop(Z)I

    .line 255
    if-ne v5, v4, :cond_d

    .line 256
    const/4 v6, 0x7

    goto :goto_4

    .line 257
    :cond_d
    const/16 v6, 0x9

    :goto_4
    nop

    .line 258
    .local v6, "errorCode":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v7

    invoke-virtual {p0, v7, v8, v6, v3}, Lcom/android/server/biometrics/AuthenticationClient;->onError(JII)Z

    .line 259
    nop

    .end local v6    # "errorCode":I
    goto :goto_5

    .line 265
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->notifyFodAuthenticatedFailed()V

    .line 268
    if-eqz v1, :cond_10

    .line 269
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 270
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getCookie()I

    move-result v6

    .line 271
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getRequireConfirmation()Z

    move-result v7

    .line 270
    invoke-interface {v1, v6, v7}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationFailedInternal(IZ)V

    goto :goto_5

    .line 273
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v6

    invoke-interface {v1, v6, v7}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationFailed(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 277
    :cond_10
    :goto_5
    if-eqz v5, :cond_11

    move v3, v4

    :cond_11
    move v2, v3

    .line 282
    .end local v5    # "lockoutMode":I
    :goto_6
    goto :goto_7

    .line 279
    :catch_1
    move-exception v3

    .line 280
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    const/4 v2, 0x1

    .line 283
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_7
    return v2
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 373
    sget-boolean v0, Lcom/android/server/biometrics/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEnrollResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 386
    sget-boolean v0, Lcom/android/server/biometrics/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEnumerationResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onError(JII)Z
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->shouldFrameworkHandleLockout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v1, 0x7

    if-eq p3, v1, :cond_1

    const/16 v1, 0x9

    if-eq p3, v1, :cond_1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->wasUserDetected()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    goto :goto_0

    .line 130
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStarted:Z

    if-eqz v1, :cond_2

    .line 133
    const/16 v1, 0x3fc

    const/16 v2, 0x32

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/biometrics/AuthenticationClient;->opHandleErrorVibration(III)V

    .line 143
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/OpClientMonitor;->onError(JII)Z

    move-result v0

    return v0
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 379
    sget-boolean v0, Lcom/android/server/biometrics/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRemoved() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public resetFailedAttempts()V
    .locals 0

    .line 51
    return-void
.end method

.method public abstract shouldFrameworkHandleLockout()Z
.end method

.method public start()I
    .locals 7

    .line 291
    const-string v0, ", "

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStarted:Z

    .line 292
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->onStart()V

    .line 296
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/biometrics/AuthenticationClient;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v2, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthenticationClient;->notifySurfaceFlingerUpdateWhenSetDim()V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/biometrics/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getGroupId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->authenticate(JI)I

    move-result v2

    .line 302
    .local v2, "result":I
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAuthentication failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthenticationClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v4}, Lcom/android/server/biometrics/Constants;->tagAuthStartError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 305
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v1, v3}, Lcom/android/server/biometrics/AuthenticationClient;->onError(JII)Z

    .line 307
    return v2

    .line 309
    :cond_1
    sget-boolean v1, Lcom/android/server/biometrics/AuthenticationClient;->DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/biometrics/AuthenticationClient;->mOpId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getGroupId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is authenticating..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_2
    invoke-super {p0}, Lcom/android/server/biometrics/OpClientMonitor;->start()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    nop

    .line 318
    .end local v2    # "result":I
    return v3

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startAuthentication failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    const/4 v1, 0x3

    return v1
.end method

.method protected statsAction()I
    .locals 1

    .line 103
    const/4 v0, 0x2

    return v0
.end method

.method public stop(Z)I
    .locals 5
    .param p1, "initiatedByClient"    # Z

    .line 323
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "stopAuthentication: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v1

    .line 328
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStarted:Z

    .line 330
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->onStop()V

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->cancel()I

    move-result v0

    .line 334
    .local v0, "result":I
    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopAuthentication failed, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    nop

    .line 351
    invoke-super {p0, p1}, Lcom/android/server/biometrics/OpClientMonitor;->stop(Z)I

    .line 336
    return v0

    .line 338
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/android/server/biometrics/AuthenticationClient;->DEBUG:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is no longer authenticating"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    .end local v0    # "result":I
    :cond_2
    invoke-super {p0, p1}, Lcom/android/server/biometrics/OpClientMonitor;->stop(Z)I

    .line 352
    nop

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mAlreadyCancelled:Z

    .line 356
    return v1

    .line 351
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stopAuthentication failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    const/4 v1, 0x3

    .line 351
    invoke-super {p0, p1}, Lcom/android/server/biometrics/OpClientMonitor;->stop(Z)I

    .line 342
    return v1

    .line 351
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/biometrics/OpClientMonitor;->stop(Z)I

    throw v0
.end method

.method public abstract wasUserDetected()Z
.end method
