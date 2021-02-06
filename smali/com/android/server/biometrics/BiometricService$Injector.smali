.class public Lcom/android/server/biometrics/BiometricService$Injector;
.super Ljava/lang/Object;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityManagerService()Landroid/app/IActivityManager;
    .locals 1

    .line 923
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public getBiometricStrengthController(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricStrengthController;
    .locals 1
    .param p1, "service"    # Lcom/android/server/biometrics/BiometricService;

    .line 973
    new-instance v0, Lcom/android/server/biometrics/BiometricStrengthController;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/BiometricStrengthController;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    return-object v0
.end method

.method public getConfiguration(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 983
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStore()Landroid/security/KeyStore;
    .locals 1

    .line 948
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public getSettingObserver(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;",
            ">;)",
            "Lcom/android/server/biometrics/BiometricService$SettingObserver;"
        }
    .end annotation

    .line 943
    .local p3, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;>;"
    new-instance v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$SettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)V

    return-object v0
.end method

.method public getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    .line 933
    nop

    .line 934
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 933
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method public getTrustManager()Landroid/app/trust/ITrustManager;
    .locals 1

    .line 928
    const-string/jumbo v0, "trust"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    return-object v0
.end method

.method public isDebugEnabled(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 956
    invoke-static {p1, p2}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public publishBinderService(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricService$Stub;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/biometrics/BiometricService;
    .param p2, "impl"    # Landroid/hardware/biometrics/IBiometricService$Stub;

    .line 964
    const-string v0, "biometric"

    invoke-static {p1, v0, p2}, Lcom/android/server/biometrics/BiometricService;->access$1800(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 965
    return-void
.end method
