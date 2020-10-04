.class Lcom/android/server/locksettings/LockSettingsService$Injector;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 377
    return-void
.end method


# virtual methods
.method public binderGetCallingUid()I
    .locals 1

    .line 458
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .locals 1

    .line 412
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 384
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public getKeyStore()Landroid/security/KeyStore;
    .locals 1

    .line 432
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2

    .line 416
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public getRecoverableKeyStoreManager(Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .locals 1
    .param p1, "keyStore"    # Landroid/security/KeyStore;

    .line 436
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getInstance(Landroid/content/Context;Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object v0

    return-object v0
.end method

.method public getStorage()Lcom/android/server/locksettings/LockSettingsStorage;
    .locals 2

    .line 388
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 389
    .local v0, "storage":Lcom/android/server/locksettings/LockSettingsStorage;
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;Lcom/android/server/locksettings/LockSettingsStorage;)V

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->setDatabaseOnCreateCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V

    .line 400
    return-object v0
.end method

.method public getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 2

    .line 440
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 441
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 442
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    .line 444
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .locals 2

    .line 404
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;
    .locals 2

    .line 408
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;
    .locals 4
    .param p1, "storage"    # Lcom/android/server/locksettings/LockSettingsStorage;

    .line 448
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    new-instance v3, Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-direct {v3}, Lcom/android/server/locksettings/PasswordSlotManager;-><init>()V

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;Lcom/android/server/locksettings/PasswordSlotManager;)V

    return-object v0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method public hasEnrolledBiometrics()Z
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    .line 454
    .local v0, "bm":Landroid/hardware/biometrics/BiometricManager;
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isGsiRunning()Z
    .locals 2

    .line 462
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.gsid.image_running"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
