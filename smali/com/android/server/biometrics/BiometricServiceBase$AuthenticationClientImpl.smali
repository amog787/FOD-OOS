.class public abstract Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
.super Lcom/android/server/biometrics/AuthenticationClient;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AuthenticationClientImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V
    .locals 16
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricServiceBase;
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

    .line 267
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iput-object v14, v15, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/android/server/biometrics/AuthenticationClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 270
    return-void
.end method


# virtual methods
.method public handleFailedAttempt()I
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->getLockoutMode()I

    move-result v0

    .line 311
    .local v0, "lockoutMode":I
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v2}, Lcom/android/server/biometrics/BiometricServiceBase;->access$600(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    move-result-object v2

    iget v3, v2, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    goto :goto_0

    .line 313
    :cond_0
    if-ne v0, v1, :cond_1

    .line 314
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v2}, Lcom/android/server/biometrics/BiometricServiceBase;->access$600(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    move-result-object v2

    iget v3, v2, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    .line 318
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 319
    return v0

    .line 321
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method protected isFingerprint()Z
    .locals 1

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public notifyUserActivity()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$500(Lcom/android/server/biometrics/BiometricServiceBase;)V

    .line 306
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$400(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$300(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not register task stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$400(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$300(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not unregister task stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method protected statsClient()I
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$200(Lcom/android/server/biometrics/BiometricServiceBase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    return v0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    const/4 v0, 0x2

    return v0

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->isFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    const/4 v0, 0x3

    return v0

    .line 281
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
