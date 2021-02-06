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

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 421
    return-void
.end method


# virtual methods
.method public binderGetCallingUid()I
    .locals 1

    .line 525
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .locals 1

    .line 463
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getDeviceStateCache()Landroid/app/admin/DeviceStateCache;
    .locals 1

    .line 490
    invoke-static {}, Landroid/app/admin/DeviceStateCache;->getInstance()Landroid/app/admin/DeviceStateCache;

    move-result-object v0

    return-object v0
.end method

.method public getFaceManager()Landroid/hardware/face/FaceManager;
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string v1, "face"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    return-object v0

    .line 544
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0

    .line 536
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler(Lcom/android/server/ServiceThread;)Landroid/os/Handler;
    .locals 2
    .param p1, "handlerThread"    # Lcom/android/server/ServiceThread;

    .line 435
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public getKeyStore()Landroid/security/KeyStore;
    .locals 1

    .line 494
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public getManagedProfilePasswordCache()Lcom/android/server/locksettings/ManagedProfilePasswordCache;
    .locals 3

    .line 560
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 561
    .local v0, "ks":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 562
    new-instance v1, Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;-><init>(Ljava/security/KeyStore;Landroid/os/UserManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 563
    .end local v0    # "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot load keystore"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public getRebootEscrowManager(Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/RebootEscrowManager;
    .locals 2
    .param p1, "callbacks"    # Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;
    .param p2, "storage"    # Lcom/android/server/locksettings/LockSettingsStorage;

    .line 516
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/locksettings/RebootEscrowManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)V

    return-object v0
.end method

.method public getRecoverableKeyStoreManager(Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .locals 1
    .param p1, "keyStore"    # Landroid/security/KeyStore;

    .line 498
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getInstance(Landroid/content/Context;Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object v0

    return-object v0
.end method

.method public getServiceThread()Lcom/android/server/ServiceThread;
    .locals 4

    .line 428
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "LockSettingsService"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 430
    .local v0, "handlerThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 431
    return-object v0
.end method

.method public getStorage()Lcom/android/server/locksettings/LockSettingsStorage;
    .locals 2

    .line 439
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 440
    .local v0, "storage":Lcom/android/server/locksettings/LockSettingsStorage;
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;Lcom/android/server/locksettings/LockSettingsStorage;)V

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->setDatabaseOnCreateCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V

    .line 451
    return-object v0
.end method

.method public getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 2

    .line 502
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 503
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 504
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    .line 506
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .locals 2

    .line 455
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;
    .locals 2

    .line 459
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;
    .locals 4
    .param p1, "storage"    # Lcom/android/server/locksettings/LockSettingsStorage;

    .line 510
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

    .line 471
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method public getUserManagerInternal()Landroid/os/UserManagerInternal;
    .locals 1

    .line 475
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    return-object v0
.end method

.method public hasEnrolledBiometrics(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 520
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    .line 521
    .local v0, "bm":Landroid/hardware/biometrics/BiometricManager;
    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/BiometricManager;->hasEnrolledBiometrics(I)Z

    move-result v1

    return v1
.end method

.method public isGsiRunning()Z
    .locals 2

    .line 529
    const-string/jumbo v0, "ro.gsid.image_running"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public settingsGlobalGetInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "keyName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 550
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public settingsSecureGetInt(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "keyName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .param p4, "userId"    # I

    .line 555
    invoke-static {p1, p2, p3, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method
