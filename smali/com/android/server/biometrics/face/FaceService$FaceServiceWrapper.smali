.class final Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;
.super Landroid/hardware/face/IFaceService$Stub;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaceServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/face/FaceService;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Landroid/hardware/face/IFaceService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/face/FaceService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p2, "x1"    # Lcom/android/server/biometrics/face/FaceService$1;

    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    return-void
.end method

.method private getFirstTemplateForUser(I)I
    .locals 3
    .param p1, "user"    # I

    .line 564
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v0

    .line 565
    .local v0, "faces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 566
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/Face;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v1

    return v1

    .line 568
    :cond_0
    return v2
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$4400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$4501(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    .line 369
    return-void
.end method

.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V
    .locals 20
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v15, p7

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/face/FaceService;->access$1900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 273
    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move/from16 v14, p4

    invoke-virtual {v1, v14, v15}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 274
    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$2000(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v17

    .line 275
    .local v17, "restricted":Z
    new-instance v18, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;

    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 276
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$1000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$2100(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v13, p5

    invoke-direct {v8, v1, v13}, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 277
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$2200(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v9

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, v18

    move-object/from16 v7, p1

    move-wide/from16 v11, p2

    move/from16 v13, v17

    move-object/from16 v14, p7

    move/from16 v15, v16

    move/from16 v16, v19

    invoke-direct/range {v1 .. v16}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 279
    .local v1, "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-wide/from16 v3, p2

    move-object/from16 v5, p7

    invoke-static {v2, v1, v3, v4, v5}, Lcom/android/server/biometrics/face/FaceService;->access$2300(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    .line 280
    return-void
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$3000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->access$3100(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callingUserId"    # I
    .param p6, "fromClient"    # Z

    .line 314
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$3200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v2 .. v8}, Lcom/android/server/biometrics/face/FaceService;->access$3300(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 317
    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 264
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$1700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$1800(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)V

    .line 266
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    return-void

    .line 377
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 379
    .local v0, "ident":J
    :try_start_0
    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    const-string v2, "--hal"

    aget-object v5, p3, v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    array-length v3, p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p3, v4, v3, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/android/server/biometrics/face/FaceService;->access$4600(Lcom/android/server/biometrics/face/FaceService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_1
    array-length v2, p3

    if-lez v2, :cond_2

    const-string v2, "--proto"

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v2, p1}, Lcom/android/server/biometrics/face/FaceService;->access$4700(Lcom/android/server/biometrics/face/FaceService;Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 384
    :cond_2
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v2, p2}, Lcom/android/server/biometrics/face/FaceService;->access$4800(Lcom/android/server/biometrics/face/FaceService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    nop

    .line 389
    return-void

    .line 387
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public enroll(Landroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)V
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "disabledFeatures"    # [I

    .line 231
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 233
    iget-object v0, v14, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$900(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v15

    .line 234
    .local v15, "restricted":Z
    new-instance v16, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;

    iget-object v0, v14, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v14, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v3

    iget-object v0, v14, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 235
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1100(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v4

    new-instance v7, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;

    iget-object v0, v14, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v13, p3

    invoke-direct {v7, v0, v13}, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V

    iget-object v0, v14, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1200(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v10, p2

    move v11, v15

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;[I)V

    .line 259
    .local v0, "client":Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
    iget-object v1, v14, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$1500(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/biometrics/face/FaceService;->access$1600(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V

    .line 260
    return-void
.end method

.method public enumerate(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;)V
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;

    .line 350
    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$4000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 352
    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$4100(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v14

    .line 353
    .local v14, "restricted":Z
    new-instance v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$3;

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v3

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 354
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$4200(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v12, p3

    invoke-direct {v8, v0, v12}, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 355
    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v10, p2

    move v11, v14

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$3;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;)V

    .line 361
    .local v0, "client":Lcom/android/server/biometrics/EnumerateClient;
    iget-object v1, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1, v0}, Lcom/android/server/biometrics/face/FaceService;->access$4300(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/EnumerateClient;)V

    .line 362
    return-void
.end method

.method public generateChallenge(Landroid/os/IBinder;)J
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 217
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$500(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .locals 2
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 471
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$6100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnrolledFaces(ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$5700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 433
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 434
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 432
    const/4 v4, 0x0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/biometrics/face/FaceService;->access$5800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    return-object v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(ILandroid/hardware/face/IFaceServiceReceiver;)V
    .locals 2
    .param p1, "feature"    # I
    .param p2, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;

    .line 524
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$6600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$6700(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$bvJGfJiSrf8aMe_VJi9dsWabykQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$bvJGfJiSrf8aMe_VJi9dsWabykQ;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;ILandroid/hardware/face/IFaceServiceReceiver;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 547
    return-void
.end method

.method public hasEnrolledFaces(ILjava/lang/String;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$5900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 445
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 446
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 444
    const/4 v4, 0x0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/biometrics/face/FaceService;->access$6000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    return v0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result v0

    return v0
.end method

.method public isHardwareDetected(JLjava/lang/String;)Z
    .locals 8
    .param p1, "deviceId"    # J
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$4900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 401
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 399
    const/4 v4, 0x0

    move-object v3, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/biometrics/face/FaceService;->access$5000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 402
    return v1

    .line 405
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 407
    .local v2, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5100(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 408
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v4}, Lcom/android/server/biometrics/face/FaceService;->access$5200(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 410
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 408
    return v1

    .line 410
    .end local v0    # "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public synthetic lambda$getFeature$1$FaceService$FaceServiceWrapper(ILandroid/hardware/face/IFaceServiceReceiver;)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;

    .line 529
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7000(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No enrolled biometrics while getting feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7100(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->getFirstTemplateForUser(I)I

    move-result v0

    .line 537
    .local v0, "faceId":I
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$6900(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$6900(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object v1

    .line 540
    .local v1, "result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    iget v2, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    invoke-interface {p2, v2, p1, v3}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureGet(ZIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v1    # "result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    goto :goto_1

    .line 541
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to getRequireAttention"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic lambda$setFeature$0$FaceService$FaceServiceWrapper(I[BZLandroid/hardware/face/IFaceServiceReceiver;)V
    .locals 6
    .param p1, "feature"    # I
    .param p2, "token"    # [B
    .param p3, "enabled"    # Z
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;

    .line 496
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7200(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No enrolled biometrics while setting feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void

    .line 501
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v0, "byteToken":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 503
    aget-byte v2, p2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$7300(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->getFirstTemplateForUser(I)I

    move-result v1

    .line 509
    .local v1, "faceId":I
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$6900(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 511
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$6900(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v2

    invoke-interface {v2, p1, p3, v0, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setFeature(IZLjava/util/ArrayList;I)I

    move-result v2

    .line 512
    .local v2, "result":I
    if-nez v2, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p4, v3, p1}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureSet(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v2    # "result":I
    goto :goto_2

    .line 513
    :catch_0
    move-exception v2

    .line 514
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v3}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set feature: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to enabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    return-void
.end method

.method public prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V
    .locals 20
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "opId"    # J
    .param p5, "groupId"    # I
    .param p6, "wrapperReceiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "cookie"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUserId"    # I

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/face/FaceService;->access$2400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 288
    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move/from16 v2, p5

    move-object/from16 v15, p7

    invoke-virtual {v1, v2, v15}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 289
    const/4 v1, 0x1

    .line 290
    .local v1, "restricted":Z
    new-instance v19, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;

    iget-object v4, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v4}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v3, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 291
    invoke-static {v3}, Lcom/android/server/biometrics/face/FaceService;->access$1000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v6

    iget-object v3, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v3}, Lcom/android/server/biometrics/face/FaceService;->access$2500(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v7

    new-instance v10, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;

    iget-object v3, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v13, p6

    invoke-direct {v10, v3, v13}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    iget-object v3, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 293
    invoke-static {v3}, Lcom/android/server/biometrics/face/FaceService;->access$2600(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v11

    const/4 v12, 0x0

    const/16 v16, 0x1

    move-object/from16 v3, v19

    move-object/from16 v9, p2

    move-wide/from16 v13, p3

    move/from16 v15, v16

    move-object/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p1

    invoke-direct/range {v3 .. v18}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    move-object/from16 v4, v19

    .line 295
    .local v4, "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    iget-object v3, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-wide/from16 v5, p3

    move-object/from16 v7, p7

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-static/range {v3 .. v10}, Lcom/android/server/biometrics/face/FaceService;->access$2700(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    .line 297
    return-void
.end method

.method public remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;)V
    .locals 19
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "faceId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;

    .line 328
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$3600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 330
    if-nez p1, :cond_0

    .line 331
    const-string v0, "FaceService"

    const-string/jumbo v1, "remove(): token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void

    .line 335
    :cond_0
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$3700(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v16

    .line 336
    .local v16, "restricted":Z
    new-instance v17, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$2;

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v3

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 337
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$3800(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v14, p4

    invoke-direct {v8, v0, v14}, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V

    const/4 v10, 0x0

    .line 338
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v11, p3

    move/from16 v12, v16

    move-object/from16 v14, v18

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$2;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;)V

    .line 344
    .local v0, "client":Lcom/android/server/biometrics/RemovalClient;
    iget-object v1, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1, v0}, Lcom/android/server/biometrics/face/FaceService;->access$3900(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/RemovalClient;)V

    .line 345
    return-void
.end method

.method public rename(ILjava/lang/String;)V
    .locals 2
    .param p1, "faceId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$5300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$5400(Lcom/android/server/biometrics/face/FaceService;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$5600(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method public resetLockout([B)V
    .locals 3
    .param p1, "token"    # [B

    .line 476
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$6200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$6300(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    const-string v0, "FaceService"

    const-string v1, "Ignoring lockout reset, no templates enrolled"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 484
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->resetLockout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to reset lockout"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public revokeChallenge(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 223
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$700(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public setActiveUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 321
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$3400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$3500(Lcom/android/server/biometrics/face/FaceService;I)V

    .line 323
    return-void
.end method

.method public setFeature(IZ[BLandroid/hardware/face/IFaceServiceReceiver;)V
    .locals 8
    .param p1, "feature"    # I
    .param p2, "enabled"    # Z
    .param p3, "token"    # [B
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;

    .line 493
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$6400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$6500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$90SfiQ-t6t6j1lelz-x7WObEaKw;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p3

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$90SfiQ-t6t6j1lelz-x7WObEaKw;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;I[BZLandroid/hardware/face/IFaceServiceReceiver;)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 520
    return-void
.end method

.method public startPreparedClient(I)V
    .locals 2
    .param p1, "cookie"    # I

    .line 301
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$2800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$2900(Lcom/android/server/biometrics/face/FaceService;I)V

    .line 303
    return-void
.end method

.method public userActivity()V
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$6800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$6900(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$6900(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->userActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to send userActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
