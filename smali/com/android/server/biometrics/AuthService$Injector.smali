.class public Lcom/android/server/biometrics/AuthService$Injector;
.super Ljava/lang/Object;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/AuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBiometricService()Landroid/hardware/biometrics/IBiometricService;
    .locals 1

    .line 83
    nop

    .line 84
    const-string v0, "biometric"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaceService()Landroid/hardware/face/IFaceService;
    .locals 1

    .line 119
    nop

    .line 120
    const-string v0, "face"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/hardware/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;
    .locals 1

    .line 110
    nop

    .line 111
    const-string v0, "fingerprint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    return-object v0
.end method

.method public getIrisService()Landroid/hardware/iris/IIrisService;
    .locals 1

    .line 128
    nop

    .line 129
    const-string/jumbo v0, "iris"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/hardware/iris/IIrisService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/iris/IIrisService;

    move-result-object v0

    return-object v0
.end method

.method public publishBinderService(Lcom/android/server/biometrics/AuthService;Landroid/hardware/biometrics/IAuthService$Stub;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/biometrics/AuthService;
    .param p2, "impl"    # Landroid/hardware/biometrics/IAuthService$Stub;

    .line 92
    const-string v0, "auth"

    invoke-static {p1, v0, p2}, Lcom/android/server/biometrics/AuthService;->access$000(Lcom/android/server/biometrics/AuthService;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 93
    return-void
.end method
