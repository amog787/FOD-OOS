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

    .line 88
    invoke-direct {p0}, Lcom/android/server/biometrics/LoggableMonitor;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/server/biometrics/ClientMonitor;->mConstants:Lcom/android/server/biometrics/Constants;

    .line 91
    iput-object p3, p0, Lcom/android/server/biometrics/ClientMonitor;->mDaemon:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    .line 92
    iput-wide p4, p0, Lcom/android/server/biometrics/ClientMonitor;->mHalDeviceId:J

    .line 93
    iput-object p6, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 94
    iput-object p7, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    .line 95
    iput p8, p0, Lcom/android/server/biometrics/ClientMonitor;->mTargetUserId:I

    .line 96
    iput p9, p0, Lcom/android/server/biometrics/ClientMonitor;->mGroupId:I

    .line 97
    iput-boolean p10, p0, Lcom/android/server/biometrics/ClientMonitor;->mIsRestricted:Z

    .line 98
    iput-object p11, p0, Lcom/android/server/biometrics/ClientMonitor;->mOwner:Ljava/lang/String;

    .line 99
    iput p12, p0, Lcom/android/server/biometrics/ClientMonitor;->mCookie:I

    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mSuccessVibrationEffect:Landroid/os/VibrationEffect;

    .line 101
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mErrorVibrationEffect:Landroid/os/VibrationEffect;

    .line 102
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 104
    if-eqz p6, :cond_0

    .line 105
    :try_start_0
    invoke-interface {p6, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 109
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 110
    :goto_1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Binder died, cancelling client"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 245
    iput-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    .line 246
    return-void
.end method

.method protected blacklistContains(II)Z
    .locals 5
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 161
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v0}, Lcom/android/server/biometrics/Constants;->acquireVendorCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireVendorIgnorelist()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireVendorIgnorelist()[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v2, p2, :cond_0

    .line 164
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

    .line 165
    return v1

    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 169
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireIgnorelist()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireIgnorelist()[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v2, p1, :cond_3

    .line 171
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

    .line 172
    return v1

    .line 169
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    .end local v0    # "i":I
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 6

    .line 227
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 229
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 232
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

    .line 234
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 236
    :cond_0
    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    .line 237
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 252
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

    .line 253
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getHalDeviceId()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 258
    nop

    .line 259
    return-void

    .line 257
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAcquireIgnorelist()[I
    .locals 1

    .line 151
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAcquireVendorIgnorelist()[I
    .locals 1

    .line 154
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCookie()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mCookie:I

    return v0
.end method

.method public final getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mDaemon:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method public final getGroupId()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mGroupId:I

    return v0
.end method

.method public final getHalDeviceId()J
    .locals 2

    .line 266
    iget-wide v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mHalDeviceId:J

    return-wide v0
.end method

.method public final getIsRestricted()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mIsRestricted:Z

    return v0
.end method

.method public final getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v0}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnerString()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mOwner:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetUserId()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mTargetUserId:I

    return v0
.end method

.method public final getToken()Landroid/os/IBinder;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public isAlreadyDone()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mAlreadyDone:Z

    return v0
.end method

.method public abstract notifyUserActivity()V
.end method

.method public onAcquired(II)Z
    .locals 3
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 190
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-super {p0, v0, p1, p2, v1}, Lcom/android/server/biometrics/LoggableMonitor;->logOnAcquired(Landroid/content/Context;III)V

    .line 191
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

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->blacklistContains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getHalDeviceId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAcquired(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 202
    if-nez p1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->notifyUserActivity()V

    .line 196
    :cond_1
    return v0

    .line 202
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to invoke sendAcquired"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    const/4 v1, 0x1

    .line 202
    if-nez p1, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->notifyUserActivity()V

    .line 199
    :cond_2
    return v1

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez p1, :cond_3

    .line 203
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->notifyUserActivity()V

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

    .line 215
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-super {p0, v0, p3, p4, v1}, Lcom/android/server/biometrics/LoggableMonitor;->logOnError(Landroid/content/Context;III)V

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v6

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onError(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to invoke sendError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
.end method

.method public printClient()Ljava/lang/String;
    .locals 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "client: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, ", mCookie:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mCookie:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, ", mAlreadyDone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mAlreadyDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, ", mHalDeviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mHalDeviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, ", mOwner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, ", mIsRestricted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mIsRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 321
    const-string v1, ", mTargetUserId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mTargetUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, ", mGroupId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, ", mToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 324
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

    .line 305
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 306
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mErrorVibrationEffect:Landroid/os/VibrationEffect;

    sget-object v2, Lcom/android/server/biometrics/ClientMonitor;->FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 309
    :cond_0
    return-void
.end method

.method public final vibrateSuccess()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 299
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mSuccessVibrationEffect:Landroid/os/VibrationEffect;

    sget-object v2, Lcom/android/server/biometrics/ClientMonitor;->FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 302
    :cond_0
    return-void
.end method
