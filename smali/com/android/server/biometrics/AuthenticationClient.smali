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

.field private mStartTimeMs:J

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

    .line 95
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

    .line 97
    move-wide/from16 v0, p10

    iput-wide v0, v13, Lcom/android/server/biometrics/AuthenticationClient;->mOpId:J

    .line 98
    move/from16 v2, p15

    iput-boolean v2, v13, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    .line 99
    return-void
.end method

.method private notifySurfaceFlingerUpdateWhenSetDim()V
    .locals 5

    .line 454
    sget-boolean v0, Lcom/android/server/biometrics/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notify SurfaceFlinger set dim value"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 456
    .local v0, "mSurfaceFlinger":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 458
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 460
    const/16 v2, 0x5209

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    goto :goto_2

    .line 465
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 461
    :catch_0
    move-exception v2

    .line 462
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception notifySurfaceFlingerUpdate"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 465
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    throw v2

    .line 468
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

    .line 423
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/AuthenticationClient;->vibrateErrorWithScene(III)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 427
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->vibrateError()V

    .line 429
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 108
    .local v0, "clearListener":Z
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthenticationClient;->binderDiedInternal(Z)V

    .line 109
    return-void
.end method

.method public getRequireConfirmation()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    return v0
.end method

.method protected getStartTimeMs()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStartTimeMs:J

    return-wide v0
.end method

.method public abstract handleFailedAttempt()I
.end method

.method public isBiometricPrompt()Z
    .locals 1

    .line 117
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

    .line 126
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

.method public abstract isStrongBiometric()Z
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .locals 16
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

    .line 159
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    const-string v10, "Remote exception"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v4, v7, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v6

    .line 159
    move-object/from16 v1, p0

    move/from16 v3, p2

    invoke-super/range {v1 .. v6}, Lcom/android/server/biometrics/OpClientMonitor;->logOnAuthenticated(Landroid/content/Context;ZZIZ)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v1

    .line 164
    .local v1, "listener":Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    iget-object v0, v7, Lcom/android/server/biometrics/AuthenticationClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, v7, Lcom/android/server/biometrics/AuthenticationClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v2}, Lcom/android/server/biometrics/Constants;->actionBiometricAuth()I

    move-result v2

    invoke-virtual {v0, v2, v9}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    .line 165
    const/4 v2, 0x0

    .line 168
    .local v2, "result":Z
    :try_start_0
    sget-boolean v0, Lcom/android/server/biometrics/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAuthenticated("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "), ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Owner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isBP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", requireConfirmation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v7, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 177
    :cond_0
    const/4 v3, 0x0

    .line 178
    .local v3, "isBackgroundAuth":Z
    const-string v4, "BiometricStats"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v9, :cond_5

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    if-nez v0, :cond_5

    .line 181
    :try_start_2
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/app/IActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    .line 186
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 187
    .local v11, "topActivity":Landroid/content/ComponentName;
    if-nez v11, :cond_2

    .line 188
    const-string v12, "Unable to get top activity"

    invoke-static {v4, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v3, 0x1

    goto :goto_1

    .line 191
    :cond_2
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 192
    .local v12, "topPackage":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 193
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Background authentication detected, top: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", client: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v3, 0x1

    goto :goto_1

    .line 183
    .end local v11    # "topActivity":Landroid/content/ComponentName;
    .end local v12    # "topPackage":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v11, "No running tasks reported"

    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    const/4 v3, 0x1

    .line 202
    .end local v0    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_4
    :goto_1
    goto :goto_2

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v11, "Unable to get running tasks"

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 201
    const/4 v3, 0x1

    .line 206
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_2
    const/4 v0, 0x2

    const-string v12, "159249069"

    const v13, 0x534e4554

    const/4 v14, 0x3

    if-eqz v3, :cond_7

    .line 207
    :try_start_4
    const-string v15, "Failing possible background authentication"

    invoke-static {v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 208
    const/4 v4, 0x0

    .line 211
    .end local p2    # "authenticated":Z
    .local v4, "authenticated":Z
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 212
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-array v15, v14, [Ljava/lang/Object;

    aput-object v12, v15, v5

    if-eqz v9, :cond_6

    iget v11, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_3

    :cond_6
    const/4 v11, -0x1

    :goto_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v6

    const-string v11, "Attempted background authentication"

    aput-object v11, v15, v0

    invoke-static {v13, v15}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_4

    .line 206
    .end local v4    # "authenticated":Z
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "authenticated":Z
    :cond_7
    move v4, v9

    .line 216
    .end local p2    # "authenticated":Z
    .restart local v4    # "authenticated":Z
    :goto_4
    if-eqz v4, :cond_15

    .line 218
    if-eqz v3, :cond_9

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 220
    .restart local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    new-array v11, v14, [Ljava/lang/Object;

    aput-object v12, v11, v5

    if-eqz v9, :cond_8

    iget v12, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_5

    :cond_8
    const/4 v12, -0x1

    :goto_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    const-string v12, "Successful background authentication!"

    aput-object v12, v11, v0

    invoke-static {v13, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 224
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_9
    iput-boolean v6, v7, Lcom/android/server/biometrics/AuthenticationClient;->mAlreadyDone:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 226
    const-string v0, "com.android.systemui"

    if-eqz v1, :cond_c

    .line 230
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/biometrics/AuthenticationClient;->shouldVibrate(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 232
    new-array v9, v6, [I

    const/16 v11, 0x61

    aput v11, v9, v5

    invoke-static {v9}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 233
    const/16 v5, 0x3fd

    invoke-virtual {v7, v5, v6}, Lcom/android/server/biometrics/AuthenticationClient;->vibrateSuccessWithScene(II)V

    goto :goto_6

    .line 235
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-boolean v5, v7, Lcom/android/server/biometrics/AuthenticationClient;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez v5, :cond_c

    .line 236
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->vibrateSuccess()V

    .line 243
    :cond_c
    :goto_6
    const/4 v2, 0x1

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->shouldFrameworkHandleLockout()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->resetFailedAttempts()V

    .line 249
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->notifyFodAuthenticatedSuccess()V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->onStop()V

    .line 254
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [B

    .line 255
    .local v5, "byteToken":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v9
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    if-ge v6, v9, :cond_e

    .line 256
    move-object/from16 v11, p3

    :try_start_7
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    aput-byte v9, v5, v6

    .line 255
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_e
    move-object/from16 v11, p3

    .line 258
    .end local v6    # "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v6

    if-eqz v6, :cond_f

    if-eqz v1, :cond_f

    .line 260
    iget-boolean v0, v7, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->isStrongBiometric()Z

    move-result v6

    .line 260
    invoke-interface {v1, v0, v5, v6}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationSucceededInternal(Z[BZ)V

    goto/16 :goto_a

    .line 262
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v6

    if-nez v6, :cond_12

    if-eqz v1, :cond_12

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->isStrongBiometric()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 264
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/security/KeyStore;->addAuthToken([B)I

    goto :goto_8

    .line 266
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Skipping addAuthToken"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 272
    :goto_8
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getIsRestricted()Z

    move-result v0

    if-nez v0, :cond_11

    .line 273
    nop

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v0

    .line 273
    invoke-interface {v1, v12, v13, v8, v0}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    goto :goto_9

    .line 276
    :cond_11
    nop

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v12

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v6

    .line 276
    invoke-interface {v1, v12, v13, v0, v6}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 281
    :goto_9
    goto :goto_a

    .line 279
    :catch_1
    move-exception v0

    .line 280
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_a

    .line 284
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Client not listening"

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v2, 0x1

    .line 290
    iget-boolean v6, v7, Lcom/android/server/biometrics/AuthenticationClient;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v6, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_13

    .line 291
    invoke-super/range {p0 .. p0}, Lcom/android/server/biometrics/OpClientMonitor;->notifySurfaceFlinger()V

    .line 295
    :cond_13
    if-eqz v1, :cond_14

    .line 296
    nop

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v0

    .line 296
    invoke-interface {v1, v12, v13, v8, v0}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 302
    .end local v5    # "byteToken":[B
    :cond_14
    :goto_a
    goto :goto_d

    .line 341
    .end local v3    # "isBackgroundAuth":Z
    :catch_2
    move-exception v0

    move-object/from16 v11, p3

    goto/16 :goto_e

    .line 303
    .restart local v3    # "isBackgroundAuth":Z
    :cond_15
    move-object/from16 v11, p3

    if-eqz v1, :cond_16

    .line 306
    const/16 v0, 0x3fc

    const/16 v9, 0x32

    invoke-direct {v7, v0, v9, v14}, Lcom/android/server/biometrics/AuthenticationClient;->opHandleErrorVibration(III)V

    .line 313
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->handleFailedAttempt()I

    move-result v0

    .line 314
    .local v0, "lockoutMode":I
    if-eqz v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->shouldFrameworkHandleLockout()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Forcing lockout (driver code should do this!), mode("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v7, v5}, Lcom/android/server/biometrics/AuthenticationClient;->stop(Z)I

    .line 318
    if-ne v0, v6, :cond_17

    .line 319
    const/4 v9, 0x7

    goto :goto_b

    .line 320
    :cond_17
    const/16 v9, 0x9

    :goto_b
    nop

    .line 321
    .local v9, "errorCode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13, v9, v5}, Lcom/android/server/biometrics/AuthenticationClient;->onError(JII)Z

    .line 322
    nop

    .end local v9    # "errorCode":I
    goto :goto_c

    .line 328
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->notifyFodAuthenticatedFailed()V

    .line 331
    if-eqz v1, :cond_1a

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 333
    invoke-interface {v1}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationFailedInternal()V

    goto :goto_c

    .line 335
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v12

    invoke-interface {v1, v12, v13}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationFailed(J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    .line 339
    :cond_1a
    :goto_c
    if-eqz v0, :cond_1b

    move v5, v6

    :cond_1b
    move v2, v5

    .line 344
    .end local v0    # "lockoutMode":I
    .end local v3    # "isBackgroundAuth":Z
    :goto_d
    goto :goto_f

    .line 341
    :catch_3
    move-exception v0

    goto :goto_e

    .end local v4    # "authenticated":Z
    .restart local p2    # "authenticated":Z
    :catch_4
    move-exception v0

    move-object/from16 v11, p3

    move v4, v9

    .line 342
    .end local p2    # "authenticated":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "authenticated":Z
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    const/4 v2, 0x1

    .line 345
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return v2
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 435
    sget-boolean v0, Lcom/android/server/biometrics/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEnrollResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 448
    sget-boolean v0, Lcom/android/server/biometrics/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEnumerationResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onError(JII)Z
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 131
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->shouldFrameworkHandleLockout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v1, 0x7

    if-eq p3, v1, :cond_1

    const/16 v1, 0x9

    if-eq p3, v1, :cond_1

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->wasUserDetected()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    goto :goto_0

    .line 140
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStarted:Z

    if-eqz v1, :cond_2

    .line 143
    const/16 v1, 0x3fc

    const/16 v2, 0x32

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/biometrics/AuthenticationClient;->opHandleErrorVibration(III)V

    .line 153
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

    .line 441
    sget-boolean v0, Lcom/android/server/biometrics/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRemoved() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
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

    .line 57
    return-void
.end method

.method public abstract shouldFrameworkHandleLockout()Z
.end method

.method public start()I
    .locals 6

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStarted:Z

    .line 354
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->onStart()V

    .line 358
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/AuthenticationClient;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v1, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthenticationClient;->notifySurfaceFlingerUpdateWhenSetDim()V

    .line 362
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStartTimeMs:J

    .line 363
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/biometrics/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getGroupId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->authenticate(JI)I

    move-result v1

    .line 364
    .local v1, "result":I
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAuthentication failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v3, p0, Lcom/android/server/biometrics/AuthenticationClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthenticationClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v4}, Lcom/android/server/biometrics/Constants;->tagAuthStartError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 367
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v0, v2}, Lcom/android/server/biometrics/AuthenticationClient;->onError(JII)Z

    .line 369
    return v1

    .line 371
    :cond_1
    sget-boolean v0, Lcom/android/server/biometrics/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is authenticating..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_2
    invoke-super {p0}, Lcom/android/server/biometrics/OpClientMonitor;->start()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    nop

    .line 380
    .end local v1    # "result":I
    return v2

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startAuthentication failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    const/4 v1, 0x3

    return v1
.end method

.method protected statsAction()I
    .locals 1

    .line 113
    const/4 v0, 0x2

    return v0
.end method

.method public stop(Z)I
    .locals 5
    .param p1, "initiatedByClient"    # Z

    .line 385
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "stopAuthentication: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v1

    .line 390
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStarted:Z

    .line 392
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->onStop()V

    .line 395
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->cancel()I

    move-result v0

    .line 396
    .local v0, "result":I
    if-eqz v0, :cond_1

    .line 397
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

    .line 398
    nop

    .line 413
    invoke-super {p0, p1}, Lcom/android/server/biometrics/OpClientMonitor;->stop(Z)I

    .line 398
    return v0

    .line 400
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

    .line 413
    .end local v0    # "result":I
    :cond_2
    invoke-super {p0, p1}, Lcom/android/server/biometrics/OpClientMonitor;->stop(Z)I

    .line 414
    nop

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mAlreadyCancelled:Z

    .line 418
    return v1

    .line 413
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stopAuthentication failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    const/4 v1, 0x3

    .line 413
    invoke-super {p0, p1}, Lcom/android/server/biometrics/OpClientMonitor;->stop(Z)I

    .line 404
    return v1

    .line 413
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/biometrics/OpClientMonitor;->stop(Z)I

    .line 414
    throw v0
.end method

.method public abstract wasUserDetected()Z
.end method
