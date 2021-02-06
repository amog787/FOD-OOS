.class public final Lcom/android/server/biometrics/face/FaceAuthenticator;
.super Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
.source "FaceAuthenticator.java"


# instance fields
.field private final mFaceService:Landroid/hardware/face/IFaceService;


# direct methods
.method public constructor <init>(Landroid/hardware/face/IFaceService;)V
    .locals 0
    .param p1, "faceService"    # Landroid/hardware/face/IFaceService;

    .line 31
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    .line 33
    return-void
.end method


# virtual methods
.method public cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callingUserId"    # I
    .param p6, "fromClient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/hardware/face/IFaceService;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 54
    return-void
.end method

.method public getAuthenticatorId(I)J
    .locals 2
    .param p1, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->getAuthenticatorId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasEnrolledTemplates(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceService;->hasEnrolledFaces(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHardwareDetected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->isHardwareDetected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V
    .locals 13
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "sessionId"    # J
    .param p5, "userId"    # I
    .param p6, "wrapperReceiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "cookie"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    move v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Landroid/hardware/face/IFaceService;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V

    .line 42
    return-void
.end method

.method public resetLockout([B)V
    .locals 1
    .param p1, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->resetLockout([B)V

    .line 69
    return-void
.end method

.method public setActiveUser(I)V
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->setActiveUser(I)V

    .line 74
    return-void
.end method

.method public startPreparedClient(I)V
    .locals 1
    .param p1, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceAuthenticator;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->startPreparedClient(I)V

    .line 47
    return-void
.end method
