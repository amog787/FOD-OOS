.class public Lcom/android/server/biometrics/AuthService;
.super Lcom/android/server/SystemService;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/AuthService$AuthServiceImpl;,
        Lcom/android/server/biometrics/AuthService$Injector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AuthService"


# instance fields
.field private mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field final mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

.field private final mInjector:Lcom/android/server/biometrics/AuthService$Injector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 304
    new-instance v0, Lcom/android/server/biometrics/AuthService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/AuthService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/AuthService$Injector;)V

    .line 305
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/AuthService$Injector;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/biometrics/AuthService$Injector;

    .line 308
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 310
    iput-object p2, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 311
    new-instance v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;-><init>(Lcom/android/server/biometrics/AuthService;Lcom/android/server/biometrics/AuthService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    .line 312
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/AuthService;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/AuthService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/AuthService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;

    .line 61
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthService;->checkPermission()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/AuthService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;

    .line 61
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthService;->checkInternalPermission()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/AuthService;

    .line 61
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    return-object v0
.end method

.method private checkInternalPermission()V
    .locals 3

    .line 384
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v2, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method private checkPermission()V
    .locals 3

    .line 389
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    const-string v2, "Must have USE_BIOMETRIC permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_0
    return-void
.end method

.method private registerAuthenticator(Lcom/android/server/biometrics/SensorConfig;)V
    .locals 5
    .param p1, "config"    # Lcom/android/server/biometrics/SensorConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/biometrics/SensorConfig;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/biometrics/SensorConfig;->mModality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Strength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/biometrics/SensorConfig;->mStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget v0, p1, Lcom/android/server/biometrics/SensorConfig;->mModality:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown modality: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/biometrics/SensorConfig;->mModality:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceService()Landroid/hardware/face/IFaceService;

    move-result-object v0

    .line 352
    .local v0, "faceService":Landroid/hardware/face/IFaceService;
    if-nez v0, :cond_1

    .line 353
    const-string v2, "Attempting to register with null FaceService. Please check  your device configuration."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 358
    :cond_1
    new-instance v1, Lcom/android/server/biometrics/face/FaceAuthenticator;

    invoke-direct {v1, v0}, Lcom/android/server/biometrics/face/FaceAuthenticator;-><init>(Landroid/hardware/face/IFaceService;)V

    .line 359
    .local v1, "authenticator":Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
    iget v2, p1, Lcom/android/server/biometrics/SensorConfig;->mStrength:I

    invoke-interface {v0, v2}, Landroid/hardware/face/IFaceService;->initConfiguredStrength(I)V

    .line 360
    goto :goto_0

    .line 363
    .end local v0    # "faceService":Landroid/hardware/face/IFaceService;
    .end local v1    # "authenticator":Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getIrisService()Landroid/hardware/iris/IIrisService;

    move-result-object v0

    .line 364
    .local v0, "irisService":Landroid/hardware/iris/IIrisService;
    if-nez v0, :cond_3

    .line 365
    const-string v2, "Attempting to register with null IrisService. Please check your device configuration."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void

    .line 370
    :cond_3
    new-instance v1, Lcom/android/server/biometrics/iris/IrisAuthenticator;

    invoke-direct {v1, v0}, Lcom/android/server/biometrics/iris/IrisAuthenticator;-><init>(Landroid/hardware/iris/IIrisService;)V

    .line 371
    .restart local v1    # "authenticator":Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
    iget v2, p1, Lcom/android/server/biometrics/SensorConfig;->mStrength:I

    invoke-interface {v0, v2}, Landroid/hardware/iris/IIrisService;->initConfiguredStrength(I)V

    .line 372
    goto :goto_0

    .line 339
    .end local v0    # "irisService":Landroid/hardware/iris/IIrisService;
    .end local v1    # "authenticator":Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
    :cond_4
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    .line 340
    .local v0, "fingerprintService":Landroid/hardware/fingerprint/IFingerprintService;
    if-nez v0, :cond_5

    .line 341
    const-string v2, "Attempting to register with null FingerprintService. Please check your device configuration."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void

    .line 346
    :cond_5
    new-instance v1, Lcom/android/server/biometrics/fingerprint/FingerprintAuthenticator;

    invoke-direct {v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintAuthenticator;-><init>(Landroid/hardware/fingerprint/IFingerprintService;)V

    .line 347
    .restart local v1    # "authenticator":Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
    iget v2, p1, Lcom/android/server/biometrics/SensorConfig;->mStrength:I

    invoke-interface {v0, v2}, Landroid/hardware/fingerprint/IFingerprintService;->initConfiguredStrength(I)V

    .line 348
    nop

    .line 379
    .end local v0    # "fingerprintService":Landroid/hardware/fingerprint/IFingerprintService;
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    iget v2, p1, Lcom/android/server/biometrics/SensorConfig;->mId:I

    iget v3, p1, Lcom/android/server/biometrics/SensorConfig;->mModality:I

    iget v4, p1, Lcom/android/server/biometrics/SensorConfig;->mStrength:I

    invoke-interface {v0, v2, v3, v4, v1}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V

    .line 381
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 7

    .line 316
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 318
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "configs":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 321
    .local v3, "config":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lcom/android/server/biometrics/SensorConfig;

    invoke-direct {v4, v3}, Lcom/android/server/biometrics/SensorConfig;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/server/biometrics/AuthService;->registerAuthenticator(Lcom/android/server/biometrics/SensorConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    goto :goto_1

    .line 322
    :catch_0
    move-exception v4

    .line 323
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "AuthService"

    const-string v6, "Remote exception"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v3    # "config":Ljava/lang/String;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    iget-object v2, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    invoke-virtual {v1, p0, v2}, Lcom/android/server/biometrics/AuthService$Injector;->publishBinderService(Lcom/android/server/biometrics/AuthService;Landroid/hardware/biometrics/IAuthService$Stub;)V

    .line 328
    return-void
.end method
