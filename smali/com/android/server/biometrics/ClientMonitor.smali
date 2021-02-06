.class public abstract Lcom/android/server/biometrics/ClientMonitor;
.super Lcom/android/server/biometrics/LoggableMonitor;
.source "ClientMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field protected static final DEBUG:Z = true

.field protected static final ERROR_ESRCH:I = 0x3

.field private static final FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field protected mAlreadyCancelled:Z

.field protected mAlreadyDone:Z

.field protected final mConstants:Lcom/android/server/biometrics/Constants;

.field private final mContext:Landroid/content/Context;

.field private final mCookie:I

.field private final mDaemon:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

.field private final mErrorVibrationEffect:Landroid/os/VibrationEffect;

.field private final mGroupId:I

.field private final mHalDeviceId:J

.field private final mIsRestricted:Z

.field private mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

.field protected final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOwner:Ljava/lang/String;

.field private final mSuccessVibrationEffect:Landroid/os/VibrationEffect;

.field private final mTargetUserId:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 44
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 45
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/ClientMonitor;->FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "constants"    # Lcom/android/server/biometrics/Constants;
    .param p3, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"    # J
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "userId"    # I
    .param p9, "groupId"    # I
    .param p10, "restricted"    # Z
    .param p11, "owner"    # Ljava/lang/String;
    .param p12, "cookie"    # I

    .line 86
    invoke-direct {p0}, Lcom/android/server/biometrics/LoggableMonitor;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/server/biometrics/ClientMonitor;->mConstants:Lcom/android/server/biometrics/Constants;

    .line 89
    iput-object p3, p0, Lcom/android/server/biometrics/ClientMonitor;->mDaemon:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    .line 90
    iput-wide p4, p0, Lcom/android/server/biometrics/ClientMonitor;->mHalDeviceId:J

    .line 91
    iput-object p6, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 92
    iput-object p7, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    .line 93
    iput p8, p0, Lcom/android/server/biometrics/ClientMonitor;->mTargetUserId:I

    .line 94
    iput p9, p0, Lcom/android/server/biometrics/ClientMonitor;->mGroupId:I

    .line 95
    iput-boolean p10, p0, Lcom/android/server/biometrics/ClientMonitor;->mIsRestricted:Z

    .line 96
    iput-object p11, p0, Lcom/android/server/biometrics/ClientMonitor;->mOwner:Ljava/lang/String;

    .line 97
    iput p12, p0, Lcom/android/server/biometrics/ClientMonitor;->mCookie:I

    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mSuccessVibrationEffect:Landroid/os/VibrationEffect;

    .line 99
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mErrorVibrationEffect:Landroid/os/VibrationEffect;

    .line 100
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 102
    if-eqz p6, :cond_0

    .line 103
    :try_start_0
    invoke-interface {p6, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 107
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 108
    :goto_1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/ClientMonitor;->binderDiedInternal(Z)V

    .line 240
    return-void
.end method

.method binderDiedInternal(Z)V
    .locals 2
    .param p1, "clearListener"    # Z

    .line 244
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Binder died, cancelling client"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 247
    if-eqz p1, :cond_0

    .line 248
    iput-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    .line 250
    :cond_0
    return-void
.end method

.method protected blacklistContains(II)Z
    .locals 5
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 159
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v0}, Lcom/android/server/biometrics/Constants;->acquireVendorCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireVendorIgnorelist()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireVendorIgnorelist()[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v2, p2, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring vendor message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v1

    .line 160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 167
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireIgnorelist()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 168
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireIgnorelist()[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v2, p1, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v1

    .line 167
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    .end local v0    # "i":I
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 6

    .line 225
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 227
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/util/NoSuchElementException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroy(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "here"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 234
    :cond_0
    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    .line 235
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getHalDeviceId()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 262
    nop

    .line 263
    return-void

    .line 261
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 262
    throw v0
.end method

.method public getAcquireIgnorelist()[I
    .locals 1

    .line 149
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAcquireVendorIgnorelist()[I
    .locals 1

    .line 152
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCookie()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mCookie:I

    return v0
.end method

.method public final getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mDaemon:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method public final getGroupId()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mGroupId:I

    return v0
.end method

.method public final getHalDeviceId()J
    .locals 2

    .line 270
    iget-wide v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mHalDeviceId:J

    return-wide v0
.end method

.method public final getIsRestricted()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mIsRestricted:Z

    return v0
.end method

.method public final getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v0}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnerString()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mOwner:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetUserId()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mTargetUserId:I

    return v0
.end method

.method public final getToken()Landroid/os/IBinder;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public isAlreadyDone()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mAlreadyDone:Z

    return v0
.end method

.method public abstract notifyUserActivity()V
.end method

.method public onAcquired(II)Z
    .locals 3
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 188
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-super {p0, v0, p1, p2, v1}, Lcom/android/server/biometrics/LoggableMonitor;->logOnAcquired(Landroid/content/Context;III)V

    .line 189
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->blacklistContains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getHalDeviceId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAcquired(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    const/4 v0, 0x0

    .line 200
    if-nez p1, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->notifyUserActivity()V

    .line 194
    :cond_1
    return v0

    .line 200
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to invoke sendAcquired"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    const/4 v1, 0x1

    .line 200
    if-nez p1, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->notifyUserActivity()V

    .line 197
    :cond_2
    return v1

    .line 200
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez p1, :cond_3

    .line 201
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->notifyUserActivity()V

    .line 203
    :cond_3
    throw v0
.end method

.method public abstract onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
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
.end method

.method public abstract onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
.end method

.method public abstract onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
.end method

.method public onError(JII)Z
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 213
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-super {p0, v0, p3, p4, v1}, Lcom/android/server/biometrics/LoggableMonitor;->logOnError(Landroid/content/Context;III)V

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v6

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onError(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to invoke sendError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
.end method

.method public printClient()Ljava/lang/String;
    .locals 3

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "client: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, ", mCookie:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mCookie:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    const-string v1, ", mAlreadyDone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mAlreadyDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, ", mHalDeviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mHalDeviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, ", mOwner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, ", mIsRestricted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mIsRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, ", mTargetUserId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mTargetUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, ", mGroupId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    const-string v1, ", mToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract start()I
.end method

.method public abstract stop(Z)I
.end method

.method public final vibrateError()V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 310
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mErrorVibrationEffect:Landroid/os/VibrationEffect;

    sget-object v2, Lcom/android/server/biometrics/ClientMonitor;->FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 313
    :cond_0
    return-void
.end method

.method public final vibrateSuccess()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 303
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mSuccessVibrationEffect:Landroid/os/VibrationEffect;

    sget-object v2, Lcom/android/server/biometrics/ClientMonitor;->FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 306
    :cond_0
    return-void
.end method
