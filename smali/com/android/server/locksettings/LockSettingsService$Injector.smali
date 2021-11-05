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

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 425
    return-void
.end method


# virtual methods
.method public binderGetCallingUid()I
    .locals 1

    .line 529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .locals 1

    .line 467
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getDeviceStateCache()Landroid/app/admin/DeviceStateCache;
    .locals 1

    .line 494
    invoke-static {}, Landroid/app/admin/DeviceStateCache;->getInstance()Landroid/app/admin/DeviceStateCache;

    move-result-object v0

    return-object v0
.end method

.method public getFaceManager()Landroid/hardware/face/FaceManager;
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string v1, "face"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    return-object v0

    .line 548
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0

    .line 540
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler(Lcom/android/server/ServiceThread;)Landroid/os/Handler;
    .locals 2
    .param p1, "handlerThread"    # Lcom/android/server/ServiceThread;

    .line 439
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public getKeyStore()Landroid/security/KeyStore;
    .locals 1

    .line 498
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public getManagedProfilePasswordCache()Lcom/android/server/locksettings/ManagedProfilePasswordCache;
    .locals 3

    .line 564
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 565
    .local v0, "ks":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 566
    new-instance v1, Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;-><init>(Ljava/security/KeyStore;Landroid/os/UserManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 567
    .end local v0    # "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot load keystore"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 471
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

    .line 520
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/locksettings/RebootEscrowManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)V

    return-object v0
.end method

.method public getRecoverableKeyStoreManager(Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .locals 1
    .param p1, "keyStore"    # Landroid/security/KeyStore;

    .line 502
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getInstance(Landroid/content/Context;Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object v0

    return-object v0
.end method

.method public getServiceThread()Lcom/android/server/ServiceThread;
    .locals 4

    .line 432
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "LockSettingsService"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 434
    .local v0, "handlerThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 435
    return-object v0
.end method

.method public getStorage()Lcom/android/server/locksettings/LockSettingsStorage;
    .locals 2

    .line 443
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 444
    .local v0, "storage":Lcom/android/server/locksettings/LockSettingsStorage;
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;Lcom/android/server/locksettings/LockSettingsStorage;)V

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->setDatabaseOnCreateCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V

    .line 455
    return-object v0
.end method

.method public getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 2

    .line 506
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 507
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 508
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    .line 510
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .locals 2

    .line 459
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;
    .locals 2

    .line 463
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;
    .locals 4
    .param p1, "storage"    # Lcom/android/server/locksettings/LockSettingsStorage;

    .line 514
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

    .line 475
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method public getUserManagerInternal()Landroid/os/UserManagerInternal;
    .locals 1

    .line 479
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    return-object v0
.end method

.method public hasEnrolledBiometrics(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 524
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    .line 525
    .local v0, "bm":Landroid/hardware/biometrics/BiometricManager;
    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/BiometricManager;->hasEnrolledBiometrics(I)Z

    move-result v1

    return v1
.end method

.method public isGsiRunning()Z
    .locals 2

    .line 533
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

    .line 554
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

    .line 559
    invoke-static {p1, p2, p3, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method
